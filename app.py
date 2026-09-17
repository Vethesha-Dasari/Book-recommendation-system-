"""Streamlit user interface for the book recommendation system."""

import streamlit as st

from recommendation import get_book_titles, get_recommendations


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


st.set_page_config(page_title="Book Recommendation System", page_icon="📚")
st.title("📚 Book Recommendation System Using Knowledge Graphs")
st.write("Choose a book to get recommendations based on shared graph information.")

book_titles = get_book_titles()

if not book_titles:
    st.error("No books could be loaded. Please check the Neo4j connection and graph data.")
else:
    selected_book = st.selectbox("Select a book:", book_titles)

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
