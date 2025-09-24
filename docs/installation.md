# 🚀 Installation Guide

QA Base is available on [**Maven Central**](https://central.sonatype.com/search?q=toobprojects), making it easy to integrate...

> ⚠️ **Prerequisite**: Your project must be using **Java 17 or higher** (Java 21 is fully supported).

---

## 🔧 Tech Stack Prerequisites

- **Java 17+** (Java 21 fully supported)
- **Maven 3.8+** or **Gradle 7+**

---

## 🛠 Two Ways to Set Up QA Base

There are **two ways** to integrate QA Base into your project:

1. **Using the QA Base Parent POM** (recommended for quickest start)
2. **Using QA Base as a BOM** (more flexible; you configure plugins yourself)

---

### 1) Using the QA Base **Parent POM** ✅

When you use the **parent POM**, you inherit:

- Dependency management for QA Base modules
- Pre-configured plugins (JUnit 5, Surefire/Failsafe)
- Allure report setup out of the box

This is the easiest way to get started.

```xml
<parent>
  <groupId>io.github.toobprojects</groupId>
  <artifactId>qabase-framework</artifactId>
  <version>2.0.0</version>
</parent>

<dependencies>
  <!-- Core (JUnit 5 + Allure Reports) -->
  <dependency>
    <groupId>io.github.toobprojects</groupId>
    <artifactId>qabase-core</artifactId>
  </dependency>

  <!-- Add REST and/or WebUI modules as needed -->
  <dependency>
    <groupId>io.github.toobprojects</groupId>
    <artifactId>qabase-rest</artifactId>
  </dependency>
  <dependency>
    <groupId>io.github.toobprojects</groupId>
    <artifactId>qabase-webui</artifactId>
  </dependency>
</dependencies>
```

> The parent provides sensible defaults. You can still override plugin versions and settings in your project if needed.

---

### 2) Using QA Base as a **BOM** ⚡

If you prefer **flexibility**, import QA Base as a **Bill of Materials (BOM)**. With this approach, **you must configure plugins** (e.g., Surefire, Allure) yourself.

```xml
<dependencyManagement>
  <dependencies>
    <dependency>
      <groupId>io.github.toobprojects</groupId>
      <artifactId>qabase-framework</artifactId>
      <version>2.0.0</version>
      <type>pom</type>
      <scope>import</scope>
    </dependency>
  </dependencies>
</dependencyManagement>

<dependencies>
  <dependency>
    <groupId>io.github.toobprojects</groupId>
    <artifactId>qabase-core</artifactId>
  </dependency>
  <dependency>
    <groupId>io.github.toobprojects</groupId>
    <artifactId>qabase-rest</artifactId>
  </dependency>
  <dependency>
    <groupId>io.github.toobprojects</groupId>
    <artifactId>qabase-webui</artifactId>
  </dependency>
</dependencies>
```

---

### ⚙️ Example: Adding **Allure Reports** Manually (BOM setup)

If you’re using the BOM and want **Allure reports**, add the following to your `pom.xml`:

```xml
<build>
  <plugins>
    <!-- Surefire: run unit tests -->
    <plugin>
      <groupId>org.apache.maven.plugins</groupId>
      <artifactId>maven-surefire-plugin</artifactId>
      <version>3.2.5</version>
      <configuration>
        <useModulePath>false</useModulePath>
      </configuration>
    </plugin>

    <!-- Allure: generate test results -->
    <plugin>
      <groupId>io.qameta.allure</groupId>
      <artifactId>allure-maven</artifactId>
      <version>2.12.0</version>
    </plugin>
  </plugins>
</build>
```

After running tests (`mvn clean test`), an `allure-results/` folder will appear. To generate and view the report:

```bash
mvn allure:serve
```

---

## 📦 Gradle Setup

If you are using **Gradle Groovy DSL** (`build.gradle`):

```groovy
dependencies {
    // Core (JUnit 5 + Allure Reports)
    testImplementation 'io.github.toobprojects:qabase-core:2.0.0'

    // REST (REST Assured utilities)
    testImplementation 'io.github.toobprojects:qabase-rest:2.0.0'

    // WebUI (Selenide utilities, optional)
    testImplementation 'io.github.toobprojects:qabase-webui:2.0.0'
}
```

If you are using **Gradle Kotlin DSL** (`build.gradle.kts`):

```kotlin
dependencies {
    // Core (JUnit 5 + Allure Reports)
    testImplementation("io.github.toobprojects:qabase-core:2.0.0")

    // REST (REST Assured utilities)
    testImplementation("io.github.toobprojects:qabase-rest:2.0.0")

    // WebUI (Selenide utilities, optional)
    testImplementation("io.github.toobprojects:qabase-webui:2.0.0")
}
```

---

## ✅ Verify Installation

1. Run `mvn clean test` (Maven) or `./gradlew test` (Gradle).
2. Confirm tests run successfully with **JUnit 5**.
3. Check that an `allure-results/` folder is generated after test execution.

---

## 📝 Notes

- **Parent POM** = quickest path; **BOM** = maximum flexibility.
- **Java 17+ required** (Java 21 recommended).
- Add only the modules you need:
  - `qabase-core`: Base utilities, JUnit 5, Allure integration
  - `qabase-rest`: REST Assured helpers for API testing
  - `qabase-webui`: Selenide utilities for UI automation
- All modules are hosted on **Maven Central**.