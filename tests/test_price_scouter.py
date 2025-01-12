from pricescoutai import ProductParser

def test_example():
    assert False, "This is a failing test to get started!"

def test_parse_description():
    description = "Nylon Braided 3-in-1 Multi-Charging Cable"
    expected = {
        'type': '3-in-1 Multi-Charging Cable',
        'features': ['Nylon Braided', 'USB Power Mode', '≤36V Operating Voltage'],
        'compatible_devices': ['iPhone', 'Android']
    }
    parser = ProductParser(description)
    result = parser.parse_description()
    
    assert result == expected
