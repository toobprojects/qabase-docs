# 🚀 Installation Guide

QA Base is available on **Maven Central**, making it easy to integrate into any Java or Kotlin project.

> ⚠️ **Prerequisite**: Your project must be using **Java 17 or higher** (Java 21 is fully supported).

---

## 📦 Maven Setup

Add the module(s) you need to your `pom.xml`.  
For example, to get started with REST API testing:

```xml
<dependencies>
    <!-- Core (JUnit 5 + Allure Reports) -->
    <dependency>
        <groupId>io.github.toob</groupId>
        <artifactId>qabase-core</artifactId>
        <version>1.0.0</version>
    </dependency>

    <!-- REST (REST Assured utilities) -->
    <dependency>
        <groupId>io.github.toob</groupId>
        <artifactId>qabase-rest</artifactId>
        <version>1.0.0</version>
    </dependency>

    <!-- WebUI (Selenide utilities, optional) -->
    <dependency>
        <groupId>io.github.toob</groupId>
        <artifactId>qabase-webui</artifactId>
        <version>1.0.0</version>
    </dependency>
</dependencies>
```

---

## 📦 Gradle Setup

If you are using **Gradle Groovy DSL** (`build.gradle`):

```groovy
dependencies {
    // Core (JUnit 5 + Allure Reports)
    testImplementation 'io.github.toob:qabase-core:1.0.0'

    // REST (REST Assured utilities)
    testImplementation 'io.github.toob:qabase-rest:1.0.0'

    // WebUI (Selenide utilities, optional)
    testImplementation 'io.github.toob:qabase-webui:1.0.0'
}
```

If you are using **Gradle Kotlin DSL** (`build.gradle.kts`):

```kotlin
dependencies {
    // Core (JUnit 5 + Allure Reports)
    testImplementation("io.github.toob:qabase-core:1.0.0")

    // REST (REST Assured utilities)
    testImplementation("io.github.toob:qabase-rest:1.0.0")

    // WebUI (Selenide utilities, optional)
    testImplementation("io.github.toob:qabase-webui:1.0.0")
}
```

---

## ✅ Verify Installation

After adding the dependencies:

1. Run `mvn clean test` (Maven) or `./gradlew test` (Gradle).
2. Confirm tests run successfully with **JUnit 5**.
3. Check that an `allure-results/` folder is generated after test execution.

---

## 📝 Notes

- **Java 17+ required** (Java 21 recommended).
- Add only the modules you need:
    - `qabase-core`: Base utilities, JUnit 5, Allure integration.
    - `qabase-rest`: REST Assured helpers for API testing.
    - `qabase-webui`: Selenide utilities for UI automation.
- All modules are hosted on **Maven Central**.