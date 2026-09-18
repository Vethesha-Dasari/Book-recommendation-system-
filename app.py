"""Streamlit user interface for the book recommendation system."""

import streamlit as st
from streamlit_agraph import Config, Edge, Node, agraph

from recommendation import get_book_graph, get_book_titles, get_recommendations


def build_reason(recommendation):
    """Create a readable reason from the shared graph relationships."""
    reasons = []

    if recommendation["shared_author"]:
        reasons.append(f"Same author: {recommendation['shared_author']}")

    shared_genres = recommendation["shared_genres"]
    if shared_genres:
        label = "genre" if len(shared_genres) == 1 else "genres"
        reasons.append(f"Same {label}: {', '.join(shared_genres)}")

    shared_topics = recommendation["shared_topics"]
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
        "Author": "#8B5CF6",
        "Genre": "#22C55E",
        "Topic": "#3B82F6",
    }
    book_id = f"book:{selected_book}"
    nodes = [Node(id=book_id, label=selected_book, size=32, color="#F59E0B")]
    edges = []

    for item in graph_data:
        node_id = f"{item['node_type']}:{item['node_name']}"
        nodes.append(
            Node(
                id=node_id,
                label=item["node_name"],
                size=22,
                color=colors.get(item["node_type"], "#64748B"),
            )
        )
        edges.append(Edge(source=book_id, target=node_id, label=item["relationship"]))

    config = Config(width=750, height=450, directed=True, physics=True)
    agraph(nodes=nodes, edges=edges, config=config)


st.set_page_config(page_title="Book Recommendation System", page_icon="📚")
st.title("📚 Book Recommendation System Using Knowledge Graphs")
st.write("Choose a book to get recommendations based on shared graph information.")

book_titles = get_book_titles()

if not book_titles:
    st.error("No books could be loaded. Please check the Neo4j connection and graph data.")
else:
    search_text = st.text_input("🔍 Search for a book")
    search_text = search_text.strip()
    selected_book = None

    if not search_text:
        st.info("Start typing a book title to search.")
    else:
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
            st.write("Matching books:")
            for title in matching_books:
                if st.button(title, key=f"book_option_{title}"):
                    st.session_state["selected_book"] = title

            selected_book = st.session_state.get("selected_book")
            if selected_book not in matching_books:
                selected_book = None
        else:
            st.info("No books match your search.")

    if selected_book:
        st.write(f"Selected book: {selected_book}")

        if st.button("Recommend Books"):
            recommendations = get_recommendations(selected_book)

            if not recommendations:
                st.info("No recommendations were found for this book.")
            else:
                st.subheader("Recommended Books")

                for number, recommendation in enumerate(recommendations, start=1):
                    st.markdown(f"### {number}. {recommendation['title']}")
                    st.write(f"Score: {recommendation['score']}")
                    st.write(f"Reason: {build_reason(recommendation)}")

        st.divider()
        st.subheader("🕸️ Knowledge Graph")
        show_knowledge_graph(selected_book)
