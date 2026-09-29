"""Streamlit user interface for the book recommendation system."""

from urllib.parse import quote_plus

import streamlit as st
from streamlit_agraph import Config, Edge, Node, agraph

from open_library import get_book_details
from recommendation import (
    get_book_graph,
    get_book_titles,
    get_cold_start_recommendations,
    get_personalized_recommendations,
    get_recommendations,
    get_user_viewed_books,
    record_user_view,
)

# Progressive reveal: show recommendations in batches of 4
RECOMMENDATION_BATCH_SIZE = 4
RECOMMENDATION_POOL_SIZE = 24


@st.cache_data(show_spinner=False, ttl=3600)
def cached_book_details(title: str):
    """Fetch Open Library metadata with caching to avoid redundant API queries."""
    return get_book_details(title)


def build_reason(recommendation):
    """Create a readable reason from the shared graph relationships."""
    reasons = []

    if recommendation.get("shared_author"):
        reasons.append(f"Same author: {recommendation['shared_author']}")

    shared_genres = recommendation.get("shared_genres")
    if shared_genres:
        label = "genre" if len(shared_genres) == 1 else "genres"
        reasons.append(f"Same {label}: {', '.join(shared_genres)}")

    shared_topics = recommendation.get("shared_topics")
    if shared_topics:
        label = "topic" if len(shared_topics) == 1 else "topics"
        reasons.append(f"Same {label}: {', '.join(shared_topics)}")

    return " | ".join(reasons)


def show_knowledge_graph(selected_book):
    """Display the selected book and its direct Neo4j connections."""
    graph_data = get_book_graph(selected_book)

    if not graph_data:
        st.info("No graph connections were found for this book.")
        return

    colors = {
        "Author": "#7C5237",
        "Genre": "#3D6346",
        "Topic": "#4A6572",
        "Publisher": "#8C584E",
        "Series": "#9E6B4B",
        "Language": "#5A737D",
    }
    book_id = f"book:{selected_book}"
    nodes = [Node(id=book_id, label=selected_book, size=30, color="#C27D38")]
    edges = []

    for item in graph_data:
        node_id = f"{item['node_type']}:{item['node_name']}"
        nodes.append(
            Node(
                id=node_id,
                label=item["node_name"],
                size=20,
                color=colors.get(item["node_type"], "#71717A"),
            )
        )
        edges.append(Edge(source=book_id, target=node_id, label=item["relationship"]))

    config = Config(width=860, height=480, directed=True, physics=True)
    agraph(nodes=nodes, edges=edges, config=config)


def format_reason_display(raw_reason: str) -> str:
    """Format technical recommendation reason strings into clear text."""
    if not raw_reason:
        return "Matches your reading interests"
    cleaned = raw_reason.replace("Matches your history — ", "").strip()
    return cleaned


def display_book_cards(books, is_personalized=False, max_cols=4, visible_count=None):
    """Render styled book cards 4 per row with comfortable spacing and centered remainder rows."""
    if not books:
        st.info("No recommendations available.")
        return

    if visible_count is None:
        visible_count = len(books)
    visible_books = books[:visible_count]

    for i in range(0, len(visible_books), max_cols):
        row_books = visible_books[i : i + max_cols]
        count = len(row_books)

        if count == 4:
            card_cols = st.columns(4)
        elif count == 3:
            # Center 3 cards in 4-column equivalent width: side spacers of 0.5 each
            col_layout = st.columns([0.5, 1, 1, 1, 0.5])
            card_cols = col_layout[1:4]
        elif count == 2:
            # Center 2 cards: side spacers of 1 each
            col_layout = st.columns([1, 1, 1, 1])
            card_cols = col_layout[1:3]
        elif count == 1:
            # Center 1 card: side spacers of 1.5 each
            col_layout = st.columns([1.5, 1, 1.5])
            card_cols = [col_layout[1]]
        else:
            card_cols = st.columns(count)

        for col, book in zip(card_cols, row_books):
            with col:
                with st.container(border=True):
                    title = book.get("title", "Unknown")
                    ol_meta = cached_book_details(title)

                    cover_url = ol_meta.get("cover_url")
                    if cover_url:
                        st.image(cover_url, use_container_width=True)
                    else:
                        st.markdown(
                            """<div class="book-cover-placeholder"><span>No Cover</span></div>""",
                            unsafe_allow_html=True,
                        )

                    st.markdown(f"**{title}**")

                    author = book.get("author")
                    if not author and book.get("shared_authors"):
                        author = ", ".join(book["shared_authors"])
                    if not author and ol_meta.get("author"):
                        author = ol_meta["author"]

                    if author:
                        st.caption(f"{author}")

                    rating = book.get("rating")
                    if rating and rating > 0:
                        st.markdown(f"<span class='meta-tag'>Rating: {rating:.2f} / 5</span>", unsafe_allow_html=True)

                    genres = book.get("genres") or book.get("shared_genres")
                    if genres:
                        st.caption(f"{', '.join(genres[:2])}")

                    if is_personalized and "score" in book:
                        st.markdown(f"<span class='score-badge'>Match Score: {book['score']}</span>", unsafe_allow_html=True)

                    desc = ol_meta.get("description")
                    if desc:
                        short_desc = desc[:110] + "..." if len(desc) > 110 else desc
                        st.caption(f"{short_desc}")


def display_show_more_button(state_key, total_count):
    """Show a centered button that reveals the next batch of 4 recommendations."""
    visible_count = st.session_state.get(state_key, RECOMMENDATION_BATCH_SIZE)
    if visible_count >= total_count:
        return

    left_spacer, button_col, right_spacer = st.columns([1, 1, 1])
    with button_col:
        if st.button(
            "Show More Recommendations",
            key=f"show_more_{state_key}",
            use_container_width=True,
        ):
            st.session_state[state_key] = visible_count + RECOMMENDATION_BATCH_SIZE
            st.rerun()


st.set_page_config(
    page_title="BookNest — Knowledge Graph Recommendations",
    page_icon="📖",
    layout="wide",
)

st.markdown(
    """
    <style>
    .stApp {
        background-color: #FAF8F5;
        color: #27272A;
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", sans-serif;
    }
    .bookstore-header {
        padding: 1.6rem 0 0.8rem 0;
        text-align: center;
    }
    .bookstore-title {
        font-size: 2.5rem;
        font-weight: 700;
        letter-spacing: -0.5px;
        color: #1C1917;
        margin-bottom: 0.25rem;
        font-family: Georgia, serif;
    }
    .bookstore-subtitle {
        font-size: 1rem;
        color: #71717A;
        margin-bottom: 1.2rem;
        font-weight: 400;
    }
    .section-header {
        font-size: 1.35rem;
        font-weight: 600;
        color: #1C1917;
        margin-top: 1.2rem;
        margin-bottom: 0.4rem;
        font-family: Georgia, serif;
    }
    .why-box {
        background: #F4EFEB;
        border-left: 2px solid #8C6D58;
        padding: 5px 8px;
        border-radius: 3px;
        font-size: 0.76rem;
        color: #44403C;
        margin-top: 6px;
        line-height: 1.35;
    }
    .why-label {
        font-weight: 600;
        color: #78350F;
        display: block;
        margin-bottom: 2px;
        font-size: 0.72rem;
    }
    .book-cover-placeholder {
        height: 160px;
        background: #EFECE6;
        border: 1px dashed #D6D0C7;
        border-radius: 4px;
        display: flex;
        align-items: center;
        justify-content: center;
        color: #8C827A;
        font-size: 0.82rem;
        margin-bottom: 8px;
    }
    .meta-tag {
        font-size: 0.78rem;
        color: #57534E;
        background: #EFECE6;
        padding: 2px 6px;
        border-radius: 3px;
        display: inline-block;
        margin-bottom: 4px;
    }
    .score-badge {
        font-size: 0.75rem;
        font-weight: 600;
        color: #78350F;
        background: #FDF4E7;
        border: 1px solid #F6D8A8;
        padding: 2px 6px;
        border-radius: 3px;
        display: inline-block;
        margin-bottom: 4px;
    }
    div[data-testid="stSidebar"] {
        background-color: #F5F1EB;
        border-right: 1px solid #E7E2DA;
    }
    div[data-testid="stSidebar"] .stTextInput input {
        background-color: #FFFFFF;
        border-color: #D6D0C7;
        color: #27272A;
    }
    .stTextInput input {
        background-color: #FFFFFF !important;
        border: 1px solid #D6D0C7 !important;
        border-radius: 6px !important;
        color: #1C1917 !important;
        padding: 10px 14px !important;
        font-size: 0.95rem !important;
    }
    .stButton>button {
        border-radius: 6px;
        font-weight: 500;
        border: 1px solid #C7BEB4;
        background-color: #FAF8F5;
        color: #27272A;
        transition: all 0.15s ease-in-out;
    }
    .stButton>button:hover {
        border-color: #8C6D58;
        color: #1C1917;
    }
    div[data-testid="stVerticalBlock"] > div[data-testid="stVerticalBlockBorderWrapper"] {
        border-color: #E7E2DA;
        background: #FFFFFF;
        border-radius: 6px;
        box-shadow: 0 1px 3px rgba(0, 0, 0, 0.04);
    }
    </style>
    """,
    unsafe_allow_html=True,
)

# Demo user session management
if "user_id" not in st.session_state:
    st.session_state["user_id"] = "demo_user"

# Progressive "Show More" counters (persist across reruns)
if "visible_recommendations" not in st.session_state:
    st.session_state["visible_recommendations"] = RECOMMENDATION_BATCH_SIZE
if "visible_similar" not in st.session_state:
    st.session_state["visible_similar"] = RECOMMENDATION_BATCH_SIZE
if "similar_book" not in st.session_state:
    st.session_state["similar_book"] = None
if "similar_recs" not in st.session_state:
    st.session_state["similar_recs"] = []

# Sidebar showing user profile and viewing history
with st.sidebar:
    st.subheader("User Profile")
    user_id_input = st.text_input(
        "User ID",
        value=st.session_state["user_id"],
        help="Demo user identifier for interaction tracking",
    ).strip()
    if user_id_input and user_id_input != st.session_state["user_id"]:
        st.session_state["user_id"] = user_id_input

    current_user_id = st.session_state["user_id"]
    st.caption(f"Active User: `{current_user_id}`")

    st.divider()
    st.subheader("Viewing History")
    viewed_books = get_user_viewed_books(current_user_id)
    if viewed_books:
        for idx, title in enumerate(viewed_books, start=1):
            st.caption(f"{idx}. {title}")
    else:
        st.info("No books viewed yet.")

# Bookstore Header & Hero
st.markdown(
    """
    <div class="bookstore-header">
        <div class="bookstore-title">BookNest</div>
        <div class="bookstore-subtitle">Discover your next read through our connected Knowledge Graph</div>
    </div>
    """,
    unsafe_allow_html=True,
)

# Prominent Centered Search Bar
col_s1, col_s2, col_s3 = st.columns([1, 3, 1])
with col_s2:
    search_text = st.text_input(
        "Search catalogue",
        placeholder="Search catalogue by title (e.g., Dune, The Hobbit, 1984)...",
        label_visibility="collapsed",
    ).strip()

book_titles = get_book_titles()
selected_book = None

if search_text and book_titles:
    matching_books = [
        title for title in book_titles if search_text.lower() in title.lower()
    ]
    exact_match = next(
        (title for title in matching_books if title.lower() == search_text.lower()),
        None,
    )

    if exact_match:
        selected_book = exact_match
    elif len(matching_books) == 1:
        selected_book = matching_books[0]
    elif len(matching_books) > 1:
        st.markdown(f"**Found {len(matching_books)} matching books:**")
        cols = st.columns(min(len(matching_books), 4))
        for idx, title in enumerate(matching_books):
            with cols[idx % len(cols)]:
                if st.button(title, key=f"book_option_{title}", use_container_width=True):
                    st.session_state["selected_book"] = title

        selected_book = st.session_state.get("selected_book")
        if selected_book not in matching_books:
            selected_book = None
    else:
        st.info("No books match your search.")
elif not book_titles:
    st.error("No books could be loaded. Please check the Neo4j connection and graph data.")

# Recommendation Section (Cold-Start or Personalized)
st.divider()

# Reset the visible batch when the active user changes
if st.session_state.get("recommendations_user") != current_user_id:
    st.session_state["recommendations_user"] = current_user_id
    st.session_state["visible_recommendations"] = RECOMMENDATION_BATCH_SIZE

if not viewed_books:
    st.markdown('<div class="section-header">Recommended for You</div>', unsafe_allow_html=True)
    st.caption("Popular and highly connected selections to get you started.")
    recommendation_pool = get_cold_start_recommendations(limit=RECOMMENDATION_POOL_SIZE)
    display_book_cards(
        recommendation_pool,
        is_personalized=False,
        visible_count=st.session_state["visible_recommendations"],
    )
else:
    st.markdown('<div class="section-header">Recommended for You</div>', unsafe_allow_html=True)
    st.caption(f"Curated based on {len(viewed_books)} book(s) in your viewing history.")
    recommendation_pool = get_personalized_recommendations(
        current_user_id, limit=RECOMMENDATION_POOL_SIZE
    )
    display_book_cards(
        recommendation_pool,
        is_personalized=True,
        visible_count=st.session_state["visible_recommendations"],
    )

display_show_more_button("visible_recommendations", len(recommendation_pool))

# Selected Book Detail Section
if selected_book:
    record_user_view(current_user_id, selected_book)

    st.divider()
    st.markdown('<div class="section-header">Book Details</div>', unsafe_allow_html=True)

    sel_meta = cached_book_details(selected_book)

    with st.container(border=True):
        col_cov, col_info, col_btn = st.columns([1, 3, 1])

        with col_cov:
            if sel_meta.get("cover_url"):
                st.image(sel_meta["cover_url"], use_container_width=True)
            else:
                st.markdown(
                    """<div class="book-cover-placeholder"><span>No Cover Available</span></div>""",
                    unsafe_allow_html=True,
                )

        with col_info:
            st.subheader(selected_book)
            meta_details = []
            if sel_meta.get("author"):
                meta_details.append(f"**Author:** {sel_meta['author']}")
            if sel_meta.get("year"):
                meta_details.append(f"**First Published:** {sel_meta['year']}")
            if sel_meta.get("isbn"):
                meta_details.append(f"**ISBN:** {sel_meta['isbn']}")
            if meta_details:
                st.markdown(" • ".join(meta_details))

            if sel_meta.get("description"):
                desc_text = sel_meta["description"]
                if len(desc_text) > 300:
                    desc_text = desc_text[:300] + "..."
                st.write(desc_text)

            st.caption("Viewing recorded to your profile history.")

        with col_btn:
            recommend_clicked = st.button("Similar Books", type="primary", use_container_width=True)
            open_library_url = "https://openlibrary.org/search?q=" + quote_plus(selected_book)
            st.link_button("View on Open Library", open_library_url, use_container_width=True)

    # Reset Similar Books state whenever the selected book changes
    if st.session_state.get("similar_book") != selected_book:
        st.session_state["similar_book"] = selected_book
        st.session_state["similar_recs"] = []
        st.session_state["visible_similar"] = RECOMMENDATION_BATCH_SIZE

    if recommend_clicked:
        fresh_similar = get_recommendations(selected_book)
        if not fresh_similar:
            st.session_state["similar_recs"] = []
            st.info("No recommendations were found for this book.")
        else:
            st.session_state["similar_recs"] = fresh_similar
            st.session_state["visible_similar"] = RECOMMENDATION_BATCH_SIZE

    recommendations = st.session_state.get("similar_recs") or []
    if recommendations:
        st.markdown(f"**Books similar to *{selected_book}*:**")
        visible_similar = st.session_state["visible_similar"]
        max_sim_cols = 4
        for i in range(0, min(visible_similar, len(recommendations)), max_sim_cols):
            row_recs = recommendations[i : i + max_sim_cols]
            count = len(row_recs)

            if count == 4:
                card_cols = st.columns(4)
            elif count == 3:
                col_layout = st.columns([0.5, 1, 1, 1, 0.5])
                card_cols = col_layout[1:4]
            elif count == 2:
                col_layout = st.columns([1, 1, 1, 1])
                card_cols = col_layout[1:3]
            elif count == 1:
                col_layout = st.columns([1.5, 1, 1.5])
                card_cols = [col_layout[1]]
            else:
                card_cols = st.columns(count)

            for c, rec in zip(card_cols, row_recs):
                with c:
                    with st.container(border=True):
                        rec_title = rec.get("title", "Unknown")
                        rec_meta = cached_book_details(rec_title)

                        if rec_meta.get("cover_url"):
                            st.image(rec_meta["cover_url"], use_container_width=True)
                        else:
                            st.markdown(
                                """<div class="book-cover-placeholder"><span>No Cover</span></div>""",
                                unsafe_allow_html=True,
                            )

                        st.markdown(f"**{rec_title}**")
                        author = rec.get("shared_author") or rec_meta.get("author")
                        if author:
                            st.caption(f"{author}")
                        st.markdown(f"<span class='score-badge'>Score: {rec['score']}</span>", unsafe_allow_html=True)

        display_show_more_button("visible_similar", len(recommendations))

    st.divider()
    st.markdown('<div class="section-header">Knowledge Graph Explorer</div>' , unsafe_allow_html=True)
    st.caption("Explore how this book connects to authors, genres, topics, publishers, series, and languages in the Knowledge Graph.")
    show_knowledge_graph(selected_book)
