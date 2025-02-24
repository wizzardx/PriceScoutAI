# 🏷️ PriceScoutAI TODOs

🚀 **Work-in-Progress AI-Powered Price Scouting Tool**
📌 *This document is regularly updated to align with development progress.*

---

## 🚀 Immediate Priorities

### 🔹 **Code Organization & Cleanup**
- [ ] Move non-test code from `tests/` to `src/`
  - [ ] Relocate `RetailerInfo` to `src/pricescoutai/models.py`
  - [ ] Relocate `find_retailers` to `src/pricescoutai/retailers.py`
  - [ ] Update import paths in tests
  - [ ] Add `__init__.py` exports for modular imports

### 🔹 **AI Reliability Improvements**
- [ ] Implement **retailer result caching**
  - [ ] Store successful retailer lookups
  - [ ] Build a **reliable retailer database** over time
  - [ ] Use **cached results** as seed data for searches
- [ ] Improve search consistency
  - [ ] Add **debug logging** for retailer search results
  - [ ] Track which retailers are commonly missed
  - [ ] Implement **retry logic** with different search strategies
- [ ] Model interaction enhancement
  - [ ] Test **different prompting strategies**
  - [ ] Compare **performance across different AI models**
  - [ ] Add **fallback mechanisms** for failed searches

### 🔹 **Testing & Debugging**
- [ ] Implement **detailed logging** for AI responses
  - [ ] Log **raw AI model outputs**
  - [ ] Track which **retailers appear/don't appear**
  - [ ] Monitor AI **confidence scores**
- [ ] Enhance test infrastructure
  - [ ] Add **test result inspection tools**
  - [ ] Identify and track **flaky test patterns**
  - [ ] Generate **test reports**

---

## 🔥 Core Development Roadmap

### 🧠 **1. AI Query System**
- [ ] Implement a **multi-step AI query pipeline**
  - [ ] Normalize product descriptions
  - [ ] Enhance **retailer identification**
  - [ ] Validate **product matching**
  - [ ] Introduce **price sanity checks**
- [ ] Improve **query context preservation**
- [ ] Implement **rate limiting** and resource management
- [ ] Add **safeguards against AI hallucination**

### 🌐 **2. Web Scraping Infrastructure**
- [ ] Ensure **ethical scraping compliance**
  - [ ] Respect `robots.txt` rules
  - [ ] Implement **rate limiting**
  - [ ] Manage **user-agent headers**
- [ ] Expand supported platforms
  - [ ] **South African retailers** *(localized price scouting)*
  - [ ] **International platforms** with SA shipping
  - [ ] **Marketplace aggregators**
- [ ] Implement **proxy rotation** for reliability

### 💰 **3. Price Analysis System**
- [ ] Handle **currency conversion**
- [ ] Implement **price validation logic**
  - [ ] Detect **price anomalies**
  - [ ] Track **historical price trends**
  - [ ] Detect **outliers and inconsistencies**
- [ ] Calculate **total cost, including shipping and taxes**

### 🔍 **4. Discovery & Search Optimization**
- [ ] Develop an **"anchor point" system** with verified retailers
- [ ] Implement **alternative product description mapping**
- [ ] Introduce **retailer reliability scoring**
- [ ] Handle **regional availability & shipping restrictions**

### 🗄️ **5. Data Management & Performance**
- [ ] Implement a **caching mechanism** for repeated queries
- [ ] Introduce a **validation pipeline** for AI-generated results
- [ ] Improve **error handling and recovery processes**
- [ ] Set up **real-time logging and monitoring**

---

## 🎯 Development Milestones

### ✅ **Phase 1: Basic Infrastructure (Current)**
- [ ] **AI-powered retailer discovery**
- [ ] Modularized architecture with **TDD-driven testing**

### ⏳ **Phase 2: Multi-Source Integration (Planned)**
- [ ] **Web scraping for live price fetching**
- [ ] **Multi-currency support** with conversion logic
- [ ] **Retailer validation enhancements**

### 🚀 **Phase 3: Advanced Features (Future Goals)**
- [ ] AI-powered **product discovery & matching**
- [ ] **Price history tracking** & trend analysis
- [ ] **API access for developers & businesses**
- [ ] **Mobile app & browser extension integration**

---

## 📌 Testing Strategy
- [ ] **Unit tests** for core components
- [ ] **Integration tests** for AI interactions
- [ ] **Automated price validation tests**
- [ ] **Simulated web responses** for API testing
- [ ] **Performance benchmarking** for large-scale queries

---

## 📈 Future Enhancements & Monetization
- [ ] **Price history visualization**
- [ ] **User preferences & price alerts**
- [ ] **Mobile app integration**
- [ ] **API access** for third-party developers
- [ ] **Browser extension** for instant price comparison
- [ ] **Subscription-based price drop notifications**
- [ ] **Affiliate partnerships & revenue-sharing**

---

🚀 **This document is regularly updated to align with ongoing development!**
