"""Cypher-based book recommendation queries."""

# Recommendation logic will be added here.
"""Cypher-based book recommendations from the Neo4j knowledge graph."""

import os

from dotenv import load_dotenv
from neo4j import GraphDatabase


load_dotenv()

uri = os.getenv("NEO4J_URI")
username = os.getenv("NEO4J_USERNAME")
password = os.getenv("NEO4J_PASSWORD")
database = os.getenv("NEO4J_DATABASE")

driver = None

try:
    driver = GraphDatabase.driver(uri, auth=(username, password))
    driver.verify_connectivity()
except Exception as error:
    print(f"Could not connect to Neo4j: {error}")
    if driver is not None:
        driver.close()
        driver = None


def get_book_titles():
    """Return every book title from Neo4j in alphabetical order."""
    if driver is None:
        print("Neo4j connection is not available.")
        return []

    query = """
    MATCH (book:Book)
    RETURN book.title AS title
    ORDER BY title
    """

    try:
        with driver.session(database=database) as session:
            return [record["title"] for record in session.run(query)]
    except Exception as error:
        print(f"Could not load book titles: {error}")
        return []


def get_book_graph(title):
    """Return the selected book and its direct graph connections."""
    if driver is None:
        print("Neo4j connection is not available.")
        return []

    query = """
    MATCH (book:Book {title: $title})
    MATCH (book)-[relationship:WRITTEN_BY|HAS_GENRE|HAS_TOPIC|PUBLISHED_BY|PART_OF|IN_LANGUAGE]->(connected)
    RETURN book.title AS book_title,
           labels(connected)[0] AS node_type,
           connected.name AS node_name,
           type(relationship) AS relationship
    ORDER BY node_type, node_name
    """

    try:
        with driver.session(database=database) as session:
            result = session.run(query, title=title)
            return [record.data() for record in result]
    except Exception as error:
        print(f"Could not load the knowledge graph: {error}")
        return []


def get_recommendations(title):
    """Return up to five books related to the selected book title."""
    if driver is None:
        print("Neo4j connection is not available.")
        return []

    query = """
    MATCH (selected:Book {title: $title})
    MATCH (candidate:Book)
    WHERE candidate <> selected

    CALL {
        WITH selected, candidate
        OPTIONAL MATCH (selected)-[:WRITTEN_BY]->(author:Author)<-[:WRITTEN_BY]-(candidate)
        RETURN head(collect(DISTINCT author.name)) AS shared_author
    }

    CALL {
        WITH selected, candidate
        OPTIONAL MATCH (selected)-[:HAS_GENRE]->(genre:Genre)<-[:HAS_GENRE]-(candidate)
        RETURN collect(DISTINCT genre.name) AS shared_genres
    }

    CALL {
        WITH selected, candidate
        OPTIONAL MATCH (selected)-[:HAS_TOPIC]->(topic:Topic)<-[:HAS_TOPIC]-(candidate)
        RETURN collect(DISTINCT topic.name) AS shared_topics
    }

    WITH candidate, shared_author, shared_genres, shared_topics,
         CASE WHEN shared_author IS NULL THEN 0 ELSE 3 END +
         size(shared_genres) * 2 +
         size(shared_topics) AS score
    WHERE score > 0
    RETURN candidate.title AS title,
           candidate.year AS year,
           score,
           shared_author,
           shared_genres,
           shared_topics
    ORDER BY score DESC, title ASC
    LIMIT 5
    """

    try:
        with driver.session(database=database) as session:
            result = session.run(query, title=title)
            return [record.data() for record in result]
    except Exception as error:
        print(f"Could not get recommendations: {error}")
        return []


def record_user_view(user_id: str, book_title: str) -> bool:
    """Record that a user viewed a book, avoiding duplicates using MERGE."""
    if driver is None:
        print("Neo4j connection is not available.")
        return False

    query = """
    MERGE (u:User {id: $user_id})
    WITH u
    MATCH (b:Book {title: $book_title})
    MERGE (u)-[r:VIEWED]->(b)
    ON CREATE SET r.timestamp = datetime()
    RETURN u.id AS user_id, b.title AS book_title
    """

    try:
        with driver.session(database=database) as session:
            result = session.run(query, user_id=user_id, book_title=book_title)
            record = result.single()
            return record is not None
    except Exception as error:
        print(f"Could not record user view: {error}")
        return False


def get_user_viewed_books(user_id: str):
    """Return list of book titles viewed by the user, ordered by most recently viewed."""
    if driver is None:
        print("Neo4j connection is not available.")
        return []

    query = """
    MATCH (u:User {id: $user_id})-[r:VIEWED]->(b:Book)
    RETURN b.title AS title, r.timestamp AS timestamp
    ORDER BY r.timestamp DESC, b.title ASC
    """

    try:
        with driver.session(database=database) as session:
            result = session.run(query, user_id=user_id)
            return [record["title"] for record in result]
    except Exception as error:
        print(f"Could not load user viewed books: {error}")
        return []


def get_cold_start_recommendations(limit: int = 5):
    """Return cold-start recommendations for a new user with no viewing history.

    The ranking uses:
      1. Catalogue popularity via real ratingCount (primary signal)
      2. Average rating (secondary signal)
      3. Knowledge Graph connectivity (author, genres, and topics links)
      4. Alphabetical title order for deterministic tie-breaking

    Only real metadata already present in Neo4j is queried; no synthetic data
    is invented. Returns explainable graph attributes (author, genres, topics)
    alongside popularity and rating metrics.
    """
    if driver is None:
        print("Neo4j connection is not available.")
        return []

    query = """
    MATCH (b:Book)
    OPTIONAL MATCH (b)-[:WRITTEN_BY]->(a:Author)
    OPTIONAL MATCH (b)-[:HAS_GENRE]->(g:Genre)
    OPTIONAL MATCH (b)-[:HAS_TOPIC]->(t:Topic)
    WITH b,
         head(collect(DISTINCT a.name)) AS author,
         collect(DISTINCT g.name) AS genres,
         collect(DISTINCT t.name) AS topics
    WITH b, author, genres, topics,
         size(genres) + size(topics) + CASE WHEN author IS NOT NULL THEN 1 ELSE 0 END AS graph_connectivity
    RETURN b.title AS title,
           b.year AS year,
           author,
           genres,
           topics,
           coalesce(b.rating, 0.0) AS rating,
           coalesce(b.ratingCount, 0) AS rating_count,
           graph_connectivity
    ORDER BY coalesce(b.ratingCount, 0) DESC,
             coalesce(b.rating, 0.0) DESC,
             graph_connectivity DESC,
             title ASC
    LIMIT $limit
    """

    try:
        with driver.session(database=database) as session:
            result = session.run(query, limit=limit)
            books = []
            for record in result:
                data = record.data()
                reasons = []
                if data.get("author"):
                    reasons.append(f"Author: {data['author']}")
                if data.get("genres"):
                    reasons.append(f"Genres: {', '.join(data['genres'])}")
                if data.get("topics"):
                    reasons.append(f"Topics: {', '.join(data['topics'])}")
                if data.get("rating_count", 0) > 0:
                    reasons.append(f"Popularity: {data['rating_count']} ratings")
                if data.get("rating", 0.0) > 0.0:
                    reasons.append(f"Rating: {data['rating']:.2f}★")

                data["reason"] = " | ".join(reasons)
                books.append(data)
            return books
    except Exception as error:
        print(f"Could not load cold-start recommendations: {error}")
        return []


def get_personalized_recommendations(user_id: str, limit: int = 5):
    """Return personalized recommendations for an existing user based on their VIEWED history.

    Calculates scores across all books viewed by the user, rewarding repeated
    interests in authors, genres, and topics.

    Scoring weights:
      - Shared author: 3 points per matching viewed book
      - Shared genre:  2 points per matching viewed book connection
      - Shared topic:  1 point per matching viewed book connection

    Excludes all books already viewed by the user. Ties are deterministically broken
    by ratingCount, average rating, and alphabetical title order.
    """
    if driver is None:
        print("Neo4j connection is not available.")
        return []

    query = """
    MATCH (u:User {id: $user_id})-[:VIEWED]->(viewed:Book)
    WITH u, collect(DISTINCT viewed) AS viewed_books

    MATCH (candidate:Book)
    WHERE NOT candidate IN viewed_books

    CALL (candidate, viewed_books) {
        OPTIONAL MATCH (candidate)-[:WRITTEN_BY]->(a:Author)<-[:WRITTEN_BY]-(v:Book)
        WHERE v IN viewed_books
        RETURN collect(DISTINCT a.name) AS shared_authors, count(DISTINCT v) AS author_matches
    }

    CALL (candidate, viewed_books) {
        OPTIONAL MATCH (candidate)-[:HAS_GENRE]->(g:Genre)<-[:HAS_GENRE]-(v:Book)
        WHERE v IN viewed_books
        RETURN collect(DISTINCT g.name) AS shared_genres, count(v) AS genre_matches
    }

    CALL (candidate, viewed_books) {
        OPTIONAL MATCH (candidate)-[:HAS_TOPIC]->(t:Topic)<-[:HAS_TOPIC]-(v:Book)
        WHERE v IN viewed_books
        RETURN collect(DISTINCT t.name) AS shared_topics, count(v) AS topic_matches
    }

    WITH candidate, shared_authors, shared_genres, shared_topics,
         (author_matches * 3 + genre_matches * 2 + topic_matches * 1) AS score
    WHERE score > 0
    RETURN candidate.title AS title,
           candidate.year AS year,
           score,
           shared_authors,
           shared_genres,
           shared_topics,
           coalesce(candidate.rating, 0.0) AS rating,
           coalesce(candidate.ratingCount, 0) AS rating_count
    ORDER BY score DESC, rating_count DESC, rating DESC, title ASC
    LIMIT $limit
    """

    try:
        with driver.session(database=database) as session:
            result = session.run(query, user_id=user_id, limit=limit)
            recommendations = []
            for record in result:
                data = record.data()
                reasons = []
                if data.get("shared_authors"):
                    reasons.append(f"Authors: {', '.join(data['shared_authors'])}")
                if data.get("shared_genres"):
                    reasons.append(f"Genres: {', '.join(data['shared_genres'])}")
                if data.get("shared_topics"):
                    reasons.append(f"Topics: {', '.join(data['shared_topics'])}")

                matched_details = " | ".join(reasons)
                data["reason"] = f"Matches your history — {matched_details}" if matched_details else "Matches your viewing history"
                recommendations.append(data)
            return recommendations
    except Exception as error:
        print(f"Could not load personalized recommendations: {error}")
        return []




def close_driver():
    """Close the Neo4j driver when the application stops."""
    if driver is not None:
        driver.close()

