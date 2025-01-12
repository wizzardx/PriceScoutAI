# tests/test_price_scouter.py
from pricescoutai import RetailerInfo, find_best_prices, find_retailers


def test_find_best_prices():
    query = "candy bars"
    result = find_best_prices(query)
    assert isinstance(result, dict), "Result should be a dictionary"
    assert (
        "error" in result
    ), "Result should indicate that functionality is not implemented yet"


def test_find_retailers():
    # Test with South Africa
    retailers = find_retailers("South Africa")

    # Enhanced debug output
    print("\nRetailers found:")
    for r in retailers:
        print(f"- {r.name} (confidence: {r.confidence_score})")
        print(f"  specialties: {r.specialties}")
        print(f"  international: {r.international}")
        print(f"  website: {r.website}")

    # Content validation
    assert any(
        r.name == "Takealot" for r in retailers
    ), "Should find major local retailers"
    assert any(
        r.international for r in retailers
    ), "Should find international retailers"

    # Edge case - should handle unknown regions gracefully
    unknown_region = find_retailers("Ancient Atlantis")
    assert isinstance(unknown_region, list)
    assert len(unknown_region) == 0
