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


def close_driver():
    """Close the Neo4j driver when the application stops."""
    if driver is not None:
        driver.close()
