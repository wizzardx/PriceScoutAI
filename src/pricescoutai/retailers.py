# src/pricescoutai/retailers.py
from typing import List

import marvin

from .models import RetailerInfo


@marvin.fn
def find_retailers(
    region: str, product_category: str | None = None, min_confidence: float = 0.8
) -> List[RetailerInfo]:
    """
    Find retailers that ship to the specified region.

    Args:
        region: The region to search retailers for
        product_category: Optional category to focus on (e.g. "electronics", "food")
        min_confidence: Minimum confidence score for including a retailer
    """
