# 🏷️ PriceScoutAI: AI-Powered Price Comparison Tool

🚀 **Find the Best Deals Across Online Retailers in Real-Time!**

## 📌 Overview
PriceScoutAI is an **AI-powered price comparison tool** that scrapes product prices across multiple retailers, compares them across currencies, and returns the lowest available price. This is perfect for **finding the best deals**, monitoring price trends, and optimizing purchases.

🔹 **AI-Powered Price Matching** - Finds and compares product prices in real-time.  
🔹 **Multi-Retailer & Multi-Currency Support** - Pulls data from different platforms and converts prices.  
🔹 **Web Scraping for Up-to-Date Pricing** - Retrieves fresh prices from top e-commerce sites.  
🔹 **TDD-Driven Development** - Built using test-driven development for reliability.

---

## 📊 Example Use Case
**Scenario:** You’re looking for the best price on a **MacBook Pro**. Instead of manually checking 5+ websites, PriceScoutAI does it for you:

```python
from pricescoutai import find_best_prices

query = "MacBook Pro 14-inch M3"
best_prices = find_best_prices(query)
print(best_prices)
```

✅ **Expected Output:**
```json
{
  "Amazon": "$1,899",
  "BestBuy": "$1,849",
  "Walmart": "$1,879",
  "Newegg": "$1,869",
  "Cheapest": "BestBuy ($1,849)"
}
```

---

## 🛠 Installation
### **🔹 Prerequisites**
Ensure you have **Python 3.8+** and `pip` installed.

### **🔹 Install Dependencies**
```bash
git clone https://github.com/wizzardx/PriceScoutAI.git
cd PriceScoutAI
pip install -r requirements.txt
```

### **🔹 Run a Price Query**
```bash
python -m pricescoutai "PlayStation 5"
```

---

## 🏆 Features & Roadmap
### ✅ **Current Features**
- AI-powered **retailer identification**
- Web scraping for **real-time price updates**
- Multi-currency **price conversion**
- Integration with **top e-commerce platforms**

### ⏳ **Planned Features**
- **📊 Price Trend Analysis** - Track historical price changes over time.
- **📡 API Access** - Monetizable API for developers & businesses.
- **📥 Email Alerts** - Get notified when prices drop.
- **📱 Mobile App Integration** - Future roadmap includes an iOS/Android app.

---

## 👥 Contributing
We welcome contributions! To contribute:
1. Fork the repo
2. Create a feature branch (`git checkout -b new-feature`)
3. Commit your changes (`git commit -m "Add feature"`)
4. Push to GitHub (`git push origin new-feature`)
5. Submit a PR

---

## 📜 License
This project is licensed under the MIT License. See the **LICENSE** file for details.

---

## 📬 Contact
🔹 **GitHub:** [wizzardx](https://github.com/wizzardx)  
🔹 **Website:** [davidpurdy.ar-ciel.org](https://davidpurdy.ar-ciel.org)  
🔹 **Email:** [wizzardx@gmail.com](mailto:wizzardx@gmail.com)

🚀 **Let’s revolutionize AI-powered shopping together!**
