"""Open Library external catalogue API integration helper.

This module retrieves book metadata (cover image URL, author, first publication year,
description, and ISBN) from the public Open Library API.
All functions handle timeouts, missing fields, and network errors safely without
inventing artificial metadata.
"""

import logging
from typing import Any, Dict, Optional
import requests

logger = logging.getLogger(__name__)

OPEN_LIBRARY_SEARCH_URL = "https://openlibrary.org/search.json"
DEFAULT_TIMEOUT = 5  # seconds for responsive UI


def clean_string(val: Optional[str]) -> Optional[str]:
    """Trim strings or return None if empty."""
    if not val or not isinstance(val, str):
        return None
    cleaned = val.strip()
    return cleaned if cleaned else None


def get_book_details(title: str, timeout: int = DEFAULT_TIMEOUT) -> Dict[str, Any]:
    """Retrieve available real metadata for a book from Open Library using its title.

    Returns a dictionary with:
      - cover_url: string URL to the medium cover image or None
      - author: primary author string or None
      - year: first publication year (int) or None
      - isbn: cleanest available ISBN (str) or None
      - description: brief synopsis if available or None

    Handles network errors, non-200 responses, and missing fields gracefully.
    """
    default_result: Dict[str, Any] = {
        "cover_url": None,
        "author": None,
        "year": None,
        "isbn": None,
        "description": None,
    }

    if not title or not title.strip():
        return default_result

    clean_title = title.strip()
    params = {
        "title": clean_title,
        "limit": 1,
        "fields": "key,title,author_name,first_publish_year,isbn,cover_i",
    }
    headers = {"User-Agent": "BookNestRecommendation/1.0"}

    try:
        response = requests.get(
            OPEN_LIBRARY_SEARCH_URL,
            params=params,
            timeout=timeout,
            headers=headers,
        )
        if response.status_code != 200:
            return default_result

        data = response.json()
        docs = data.get("docs", [])
        if not docs:
            return default_result

        doc = docs[0]

        # Extract primary author
        author_names = doc.get("author_name") or []
        author = clean_string(author_names[0]) if author_names else None

        # Extract publication year
        year_raw = doc.get("first_publish_year")
        year = None
        if year_raw is not None:
            try:
                year = int(year_raw)
            except (ValueError, TypeError):
                year = None

        # Extract ISBN
        isbn_list = doc.get("isbn") or []
        isbn = None
        for cand in isbn_list:
            cleaned_cand = str(cand).replace("-", "").strip()
            if len(cleaned_cand) in (10, 13) and cleaned_cand.isalnum():
                isbn = str(cand).strip()
                break
        if not isbn and isbn_list:
            isbn = clean_string(str(isbn_list[0]))

        # Extract cover URL
        cover_i = doc.get("cover_i")
        cover_url = (
            f"https://covers.openlibrary.org/b/id/{cover_i}-M.jpg"
            if cover_i
            else None
        )

        # Retrieve description if work key is present
        description = None
        work_key = doc.get("key")
        if work_key:
            clean_key = str(work_key).strip().lstrip("/")
            if not clean_key.startswith("works/"):
                clean_key = f"works/{clean_key}"
            try:
                work_url = f"https://openlibrary.org/{clean_key}.json"
                w_resp = requests.get(work_url, timeout=timeout, headers=headers)
                if w_resp.status_code == 200:
                    raw_desc = w_resp.json().get("description")
                    if isinstance(raw_desc, dict):
                        description = clean_string(raw_desc.get("value"))
                    elif isinstance(raw_desc, str):
                        description = clean_string(raw_desc)
            except Exception:
                description = None

        return {
            "cover_url": cover_url,
            "author": author,
            "year": year,
            "isbn": isbn,
            "description": description,
        }

    except Exception as exc:
        logger.debug("Open Library lookup failed for '%s': %s", clean_title, exc)
        return default_result
