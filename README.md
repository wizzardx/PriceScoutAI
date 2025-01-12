# PriceScoutAI

**PriceScoutAI** is an AI-powered price scout designed to help you find the lowest cost for a given product. By scraping various retailers, including lesser-known platforms, and comparing prices across different currencies, PriceScoutAI gives you a comprehensive view of the best deals available online.

## Features

- **AI-Powered Price Comparison**: Leveraging AI to intelligently search and find the best prices across multiple online retailers.
- **Multi-Currency Support**: Prices are converted to your local currency for easy comparison.
- **Web Scraping**: Gathers real-time data from various e-commerce platforms, including international and niche stores.
- **TDD-Driven Development**: The project follows a "Test-Driven Development" (TDD) methodology in the style of *Obey the Testing Goat* for robust, maintainable code.

## Installation

### Prerequisites

Ensure that you have Python 3.8+ and [Rye](https://rye-up.com/) installed on your system.

### Steps to Install

1. Clone the repository:

   ```bash
   git clone https://github.com/wizzardx/PriceScoutAI.git
   cd PriceScoutAI
   ```

2. Install dependencies using Rye:

   ```bash
   rye sync
   ```

3. To run tests:

   ```bash
   rye run python -m pytest
   ```

## Development

This project follows a TDD approach. To contribute:

1. Write a test that fails for the new feature or bug fix.
2. Implement the feature or fix, and ensure the test passes.
3. Commit the changes and push them to the repository.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For more information, contact me at [wizzardx@gmail.com](mailto:wizzardx@gmail.com).
