"""Verify the connection to the Neo4j AuraDB database."""

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
    print("Neo4j connection successful!")

    with driver.session(database=database) as session:
        record = session.run(
            'RETURN "Book Recommendation System" AS message'
        ).single()
        print(record["message"])
finally:
    if driver is not None:
        driver.close()