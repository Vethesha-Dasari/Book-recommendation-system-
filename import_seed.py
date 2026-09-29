"""Import the expanded seed.cypher into the existing Neo4j AuraDB instance.

College project: "Book Recommendation System Using Knowledge Graphs"
"""

import os
import sys
from dotenv import load_dotenv
from neo4j import GraphDatabase


def load_cypher_statements(filepath: str):
    """Read Cypher file, strip comments, and split into individual statements."""
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()

    lines = []
    for line in content.splitlines():
        stripped = line.strip()
        if stripped.startswith("//"):
            continue
        lines.append(line)

    full_text = "\n".join(lines)
    raw_statements = full_text.split(";")
    statements = [stmt.strip() for stmt in raw_statements if stmt.strip()]
    return statements


def main():
    load_dotenv()

    uri = os.getenv("NEO4J_URI")
    username = os.getenv("NEO4J_USERNAME")
    password = os.getenv("NEO4J_PASSWORD")
    database = os.getenv("NEO4J_DATABASE")

    if not uri or not username or not password:
        print("Error: Missing required Neo4j credentials in .env file.")
        sys.exit(1)

    seed_file = os.path.join(os.path.dirname(__file__), "seed.cypher")
    if not os.path.exists(seed_file):
        print(f"Error: {seed_file} not found.")
        sys.exit(1)

    print("Parsing seed.cypher...")
    statements = load_cypher_statements(seed_file)
    total_statements = len(statements)
    print(f"Loaded {total_statements} Cypher statements to execute.")

    print(f"Connecting to Neo4j at {uri} (database: {database or 'default'})...")

    driver = None
    try:
        driver = GraphDatabase.driver(uri, auth=(username, password))
        driver.verify_connectivity()
        print("Connected successfully to AuraDB.\n")

        # Execute statements safely in managed transactions
        executed_count = 0
        batch_size = 50

        with driver.session(database=database) as session:
            for i in range(0, total_statements, batch_size):
                batch = statements[i:i + batch_size]
                with session.begin_transaction() as tx:
                    for stmt in batch:
                        tx.run(stmt)
                    tx.commit()
                executed_count += len(batch)
                print(f"Progress: {executed_count}/{total_statements} statements executed ({(executed_count / total_statements) * 100:.1f}%)")

        print(f"\nSuccessfully executed all {executed_count} statements.")

        # Post-import verification 1: Total book count
        print("\n--- Post-Import Verification ---")
        with driver.session(database=database) as session:
            count_result = session.run("MATCH (b:Book) RETURN count(b) AS numberOfBooks;")
            record = count_result.single()
            num_books = record["numberOfBooks"] if record else 0
            print(f"MATCH (b:Book) RETURN count(b) AS numberOfBooks -> {num_books}")

            # Post-import verification 2: Duplicate book titles check
            dup_query = """
            MATCH (b:Book)
            WITH toLower(trim(b.title)) AS title, count(*) AS count
            WHERE count > 1
            RETURN title, count;
            """
            dup_result = session.run(dup_query)
            duplicates = list(dup_result)
            if duplicates:
                print("Warning: Duplicate book titles found:")
                for dup in duplicates:
                    print(f"  - '{dup['title']}': count = {dup['count']}")
            else:
                print("No duplicate book titles found (all book titles are unique).")

    except Exception as exc:
        print(f"Error during import: {exc}")
        sys.exit(1)
    finally:
        if driver is not None:
            driver.close()
            print("\nDatabase connection closed.")


if __name__ == "__main__":
    main()
