# PriceScoutAI TODOs

## Immediate TODOs

### Code Organization
- [ ] Move non-test code from tests/ to src/
  - [ ] Move RetailerInfo to src/pricescoutai/models.py
  - [ ] Move find_retailers to src/pricescoutai/retailers.py
  - [ ] Update imports in tests
  - [ ] Add __init__.py exports
- [ ] Proper TDD workflow
  - [ ] Write separate failing test for Temu presence
  - [ ] Add test for retailer specialization before implementing
  - [ ] Document TDD process in README.md
  - [ ] Add commit guidelines to enforce TDD

### Testing Infrastructure
- [ ] Set up mock responses for CI environment
  - [ ] Create fixture data for retailer responses
  - [ ] Add environment detection for CI vs local
  - [ ] Document how to add API keys for local development
- [ ] Make tests more robust
  - [ ] Add retry logic for flaky AI responses
  - [ ] Expand acceptable retailers list in tests
  - [ ] Add explicit test for Temu presence
  - [ ] Add test timing metrics

### API Design Improvements
- [ ] Make retailer specialization optional
  - [ ] Add parameter for product category focus
  - [ ] Update tests to verify general retail capability
  - [ ] Document retailer categorization strategy
- [ ] Add result consistency checks
  - [ ] Verify key retailers always appear
  - [ ] Add confidence scores to results
  - [ ] Log unexpected omissions

### Documentation
- [ ] Add development setup guide
  - [ ] API key configuration
  - [ ] Testing environment setup
  - [ ] Mock data usage
- [ ] Document test strategy
  - [ ] When to use mocks vs live API
  - [ ] Handling test flakiness
  - [ ] CI considerations

## Core Components

### 1. AI Query System
- [ ] Implement multi-step AI query pipeline
  - [ ] Product description parsing/normalization
  - [ ] Retailer identification
  - [ ] Product matching validation
  - [ ] Price reasonability checks
- [ ] Handle context preservation between queries
- [ ] Implement rate limiting and resource management
- [ ] Add safeguards against AI hallucination

### 2. Web Scraping Infrastructure
- [ ] Set up ethical scraping framework
  - [ ] robots.txt compliance
  - [ ] Rate limiting
  - [ ] User-agent management
- [ ] Implement scrapers for major platforms
  - [ ] Local SA retailers
  - [ ] International platforms that ship to SA
  - [ ] Marketplace aggregators
- [ ] Add proxy rotation/management

### 3. Price Analysis System
- [ ] Currency conversion handling
- [ ] Price validation logic
  - [ ] Reasonable price range detection
  - [ ] Outlier detection
  - [ ] Historical price comparison
- [ ] Total cost calculation (including shipping, taxes)

### 4. Discovery Strategy
- [ ] Implement "anchor point" system using known reliable retailers
- [ ] Add support for alternative product descriptions
- [ ] Build retailer reliability scoring
- [ ] Handle regional variations and shipping restrictions

### 5. Data Management
- [ ] Design caching system for repeated queries
- [ ] Implement result validation pipeline
- [ ] Add error handling and recovery
- [ ] Set up logging and monitoring

## Development Priorities

1. First milestone: Basic infrastructure
   - Single retailer scraping
   - Simple price comparison
   - Basic AI query handling

2. Second milestone: Multi-source integration
   - Multiple retailer support
   - Currency conversion
   - Basic validation

3. Third milestone: Advanced features
   - AI-powered discovery
   - Price history tracking
   - Reliability scoring

## Testing Strategy

- [ ] Unit tests for each component
- [ ] Integration tests for AI interaction
- [ ] Price validation test suite
- [ ] Mock web responses for testing
- [ ] Performance benchmarking

## Future Enhancements

- Price history tracking
- User preferences and alerts
- Mobile app integration
- API for third-party integration
- Browser extension 
