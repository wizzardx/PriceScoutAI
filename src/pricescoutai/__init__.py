# src/pricescoutai/__init__.py
from .models import RetailerInfo
from .retailers import find_retailers

__all__ = ["RetailerInfo", "find_retailers", "find_best_prices"]


def find_best_prices(query: str):
    """
    Placeholder function that will eventually return the best prices for the given query.
    """
    return {"error": "Functionality not implemented yet"}
