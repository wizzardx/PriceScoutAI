from pricescoutai import find_best_prices

def test_find_best_prices():
    query = "candy bars"
    result = find_best_prices(query)
    assert isinstance(result, dict), "Result should be a dictionary"
    assert "error" in result, "Result should indicate that functionality is not implemented yet"
