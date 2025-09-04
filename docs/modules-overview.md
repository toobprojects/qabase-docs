# 📦 Modules Overview

QA Base is split into **three independent modules**, so you can include only what your project actually needs.  
At least one module (`qabase-core`) is always required.

---

## 🔹 QA Base Core (`qabase-core`)
The foundation module that everything else builds on:

- Preconfigured **JUnit 5** test runner
- Built-in **Allure reporting** integration
- Shared **test utilities** and configuration support
- Common Spring Boot integration for dependency injection

**Use this if**: you want a consistent test foundation with reporting baked in.

---

## 🔹 QA Base REST (`qabase-rest`)
Focused on **API testing**, built on top of **RestAssured**:

- Ready-to-use request & response helpers
- Built-in serializers and deserializers
- Common matchers for validation
- Eliminates repetitive boilerplate in REST API tests

**Use this if**: your primary focus is backend or service-level automation.

---

## 🔹 QA Base WebUI (`qabase-webui`)
Focused on **browser automation**, built on top of **Selenide**:

- Automatic **WebDriver setup and version management**
- Utilities for writing stable and maintainable UI tests
- Removes the hassle of managing browser drivers manually

**Use this if**: you need reliable, maintainable end-to-end UI tests.

---

## 🔄 How to Combine Modules

👉 Mix and match modules depending on your needs:

- **Core + REST** → backend API automation
- **Core + WebUI** → browser-based UI testing
- **Core + REST + WebUI** → full-stack coverage (UI + API + reporting)

---

All modules are published on [**Maven Central**](https://central.sonatype.com/search?q=toobprojects) under the group:  