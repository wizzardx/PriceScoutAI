# src/pricescoutai/models.py
from typing import List

import pydantic


class RetailerInfo(pydantic.BaseModel):
    """Information about a retailer that ships to a specific region"""

    name: str
    ships_to_region: bool
    website: str | None = None
    specialties: List[str] = []
    international: bool = False
    confidence_score: float = 1.0
