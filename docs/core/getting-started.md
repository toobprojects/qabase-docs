---
id: getting-started
title: Getting Started with Core
sidebar_position: 2
---

# 🚀 Getting Started with Core

## 1) Add the dependency

**Maven (Parent POM — turnkey)**
```xml
<parent>
  <groupId>io.github.toobprojects</groupId>
  <artifactId>qabase-framework</artifactId>
  <version>1.4.1</version>
</parent>
<dependencies>
  <dependency>
    <groupId>io.github.toobprojects</groupId>
    <artifactId>qabase-core</artifactId>
  </dependency>
</dependencies>
```

**Maven (BOM — flexible)**
```xml
<dependencyManagement>
  <dependencies>
    <dependency>
      <groupId>io.github.toobprojects</groupId>
      <artifactId>qabase-framework</artifactId>
      <version>1.4.1</version>
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
</dependencies>
```

**Maven (individual)**
```xml
<dependency>
  <groupId>io.github.toobprojects</groupId>
  <artifactId>qabase-core</artifactId>
  <version>1.4.1</version>
</dependency>
```

**Gradle (Kotlin DSL)**
```kotlin
// Parent-like setup isn't native in Gradle; use the BOM for versions
dependencies {
  testImplementation(platform("io.github.toobprojects:qabase-framework:1.4.1"))
  testImplementation("io.github.toobprojects:qabase-core")
}
```

> If you **don’t** use the Parent POM, remember to configure:
> - `maven-surefire-plugin` (unit tests)
> - `maven-failsafe-plugin` (if you have ITs)
> - `io.qameta.allure:allure-maven` (reporting)

---

## 2) Minimal test

```kotlin
import com.toob.qabase.QaBaseTest
import org.junit.jupiter.api.Test
import com.toob.qabase.core.AllureExtensions.step
import com.toob.qabase.core.AllureExtensions.attachText

@QaBaseTest
class SmokeTest {
  @Test
  fun works() {
    step("Do something meaningful") {
      attachText("note", "QA Base Core is wired ✅")
    }
  }
}
```

**Run with Allure**  
```bash
mvn -q -Dallure.reports=true test

# OR
mvn -q clean verify -Pallure-reports

# And finally server the report:
mvn allure:serve
```
