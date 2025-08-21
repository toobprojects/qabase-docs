# 📦 Modules Overview

QA Base is split into **three independent modules**, so you can include only what your project actually needs.

---

## 🔹 QA Base Core
Provides the foundation for all other modules:

- Preconfigured **JUnit 5** setup  
- Built-in **Allure reporting** integration  
- Shared **test utilities** and configuration support

---

## 🔹 QA Base REST
Focused on API testing, built on top of **RestAssured**:

- Ready-to-use request & response helpers  
- Built-in serializers and deserializers  
- Common matchers for validation  
- Eliminates repetitive boilerplate in REST API tests

---

## 🔹 QA Base WebUI
Focused on browser testing, built on top of **Selenide**:

- Automatic **WebDriver setup and version management**  
- Centralized configuration via `application.yaml`  
- Utilities for writing stable and maintainable UI tests  
- Removes the hassle of managing browser drivers manually

---

👉 Mix and match modules depending on your needs.  
For example:
- Use **Core + REST** for backend API automation.  
- Use **Core + WebUI** for browser-based UI testing.  
- Or combine **all three** for full-stack test coverage.