"""Generate Cypher commands to seed and enrich the knowledge graph.

College project: "Book Recommendation System Using Knowledge Graphs"
"""

import json
from typing import Any, Dict, List, Optional


def cypher_repr(val: Any) -> str:
    """Format a Python value as a valid Cypher literal."""
    if val is None:
        return "null"
    if isinstance(val, (int, float)):
        return str(val)
    if isinstance(val, bool):
        return "true" if val else "false"
    clean_str = str(val).replace("\\", "\\\\").replace("'", "\\'")
    return f"'{clean_str}'"


def build_set_clause(prefix: str, props: Dict[str, Any], on_match: bool = False) -> Optional[str]:
    """Construct a clean SET clause omitting None values."""
    assignments = []
    for prop_name, prop_val in props.items():
        if prop_val is None:
            continue
        c_val = cypher_repr(prop_val)
        if on_match:
            assignments.append(f"{prefix}.{prop_name} = coalesce({prefix}.{prop_name}, {c_val})")
        else:
            assignments.append(f"{prefix}.{prop_name} = {c_val}")
    if not assignments:
        return None
    return ", ".join(assignments)


def build_seed_cypher() -> None:
    """Read JSON catalogues, build clean Cypher, and update seed.cypher."""
    with open("seed.cypher", "r", encoding="utf-8") as f:
        original_cypher = f.read()

    split_marker = "// ==================================================="
    if split_marker in original_cypher:
        original_cypher = original_cypher.split(split_marker)[0].rstrip()

    with open("fetched_candidates.json", "r", encoding="utf-8") as f:
        new_books = json.load(f)

    with open("enriched_seeds.json", "r", encoding="utf-8") as f:
        enriched_seeds = json.load(f)

    lines: List[str] = [
        "",
        "// ===================================================",
        "// STAGE 1 ENRICHMENT: METADATA FOR ORIGINAL 20 BOOKS",
        "// ===================================================",
        "",
    ]

    for title, meta in enriched_seeds.items():
        title_lit = cypher_repr(title)
        props = {
            "year": meta.get("year"),
            "isbn": meta.get("isbn"),
            "language": meta.get("language") or "English",
            "pageCount": meta.get("pageCount"),
            "coverUrl": meta.get("coverUrl"),
            "rating": meta.get("rating"),
            "ratingCount": meta.get("ratingCount"),
        }

        match_clause = build_set_clause("b", props, on_match=True)
        lines.append(f"MERGE (b:Book {{title: {title_lit}}})")
        if match_clause:
            lines.append(f"ON MATCH SET {match_clause};")

        lang_name = meta.get("language") or "English"
        lang_lit = cypher_repr(lang_name)
        lines.append(f"MERGE (lang:Language {{name: {lang_lit}}})")
        lines.append(f"MERGE (b:Book {{title: {title_lit}}})-[:IN_LANGUAGE]->(lang);")

        if meta.get("publisher"):
            pub_lit = cypher_repr(meta["publisher"].strip())
            lines.append(f"MERGE (pub:Publisher {{name: {pub_lit}}})")
            lines.append(f"MERGE (b:Book {{title: {title_lit}}})-[:PUBLISHED_BY]->(pub);")

        if meta.get("series"):
            series_lit = cypher_repr(meta["series"].strip())
            lines.append(f"MERGE (s:Series {{name: {series_lit}}})")
            lines.append(f"MERGE (b:Book {{title: {title_lit}}})-[:PART_OF]->(s);")

        lines.append("")

    lines.extend([
        "// ===================================================",
        "// STAGE 1 EXPANSION: NEW CATALOGUE BOOKS (OPEN LIBRARY)",
        "// ===================================================",
        "",
    ])

    for i, meta in enumerate(new_books, 1):
        title = meta["title"].strip()
        author = meta.get("author")
        pub = meta.get("publisher")
        series = meta.get("series")
        lang = meta.get("language") or "English"
        genres = meta.get("genres") or []
        topics = meta.get("topics") or []

        title_lit = cypher_repr(title)
        props = {
            "year": meta.get("year"),
            "isbn": meta.get("isbn"),
            "language": lang,
            "pageCount": meta.get("pageCount"),
            "coverUrl": meta.get("coverUrl"),
            "rating": meta.get("rating"),
            "ratingCount": meta.get("ratingCount"),
        }

        create_clause = build_set_clause("b", props, on_match=False)
        match_clause = build_set_clause("b", props, on_match=True)

        lines.append(f"// Book {i}: {title}")
        lines.append(f"MERGE (b:Book {{title: {title_lit}}})")
        if create_clause and match_clause:
            lines.append(f"ON CREATE SET {create_clause}")
            lines.append(f"ON MATCH SET {match_clause};")
        elif create_clause:
            lines.append(f"ON CREATE SET {create_clause};")
        elif match_clause:
            lines.append(f"ON MATCH SET {match_clause};")

        if author:
            auth_lit = cypher_repr(author.strip())
            lines.append(f"MERGE (a:Author {{name: {auth_lit}}})")
            lines.append(f"MERGE (b:Book {{title: {title_lit}}})-[:WRITTEN_BY]->(a);")

        lang_lit = cypher_repr(lang)
        lines.append(f"MERGE (lang:Language {{name: {lang_lit}}})")
        lines.append(f"MERGE (b:Book {{title: {title_lit}}})-[:IN_LANGUAGE]->(lang);")

        if pub:
            pub_lit = cypher_repr(pub.strip())
            lines.append(f"MERGE (pub:Publisher {{name: {pub_lit}}})")
            lines.append(f"MERGE (b:Book {{title: {title_lit}}})-[:PUBLISHED_BY]->(pub);")

        if series:
            series_lit = cypher_repr(series.strip())
            lines.append(f"MERGE (s:Series {{name: {series_lit}}})")
            lines.append(f"MERGE (b:Book {{title: {title_lit}}})-[:PART_OF]->(s);")

        for g in genres:
            g_lit = cypher_repr(g.strip())
            lines.append(f"MERGE (g:Genre {{name: {g_lit}}})")
            lines.append(f"MERGE (b:Book {{title: {title_lit}}})-[:HAS_GENRE]->(g);")

        for tp in topics:
            tp_lit = cypher_repr(tp.strip())
            lines.append(f"MERGE (t:Topic {{name: {tp_lit}}})")
            lines.append(f"MERGE (b:Book {{title: {title_lit}}})-[:HAS_TOPIC]->(t);")

        lines.append("")

    full_content = original_cypher.rstrip() + "\n" + "\n".join(lines)
    with open("seed.cypher", "w", encoding="utf-8") as f:
        f.write(full_content)

    print(f"Generated seed.cypher successfully! Total lines: {len(full_content.splitlines())}")


if __name__ == "__main__":
    build_seed_cypher()
