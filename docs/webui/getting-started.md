---
id: getting-started
title: Getting Started with WebUI
sidebar_position: 2
---

# 🚀 Getting Started with WebUI

## 1) Add the dependency

**Maven**
```xml
<dependency>
  <groupId>io.github.toobprojects</groupId>
  <artifactId>qabase-web-ui</artifactId>
</dependency>
```

**Gradle (Kotlin DSL)**
```kotlin
dependencies {
  testImplementation(platform("io.github.toobprojects:qabase-framework:1.4.1"))
  testImplementation("io.github.toobprojects:qabase-web-ui")
}
```

---

## 2) Minimal UI test with `UI` & `Sel`

```kotlin
import com.toob.qabase.QaBaseTest
import com.toob.qabase.webui.dsl.UI
import com.toob.qabase.webui.dsl.Sel
import org.junit.jupiter.api.Test

@QaBaseTest
class HomePageTest {
  @Test
  fun canSeeProductsLink() {
    UI.visit("/")                              // uses qabase.webui.baseUrl
      .shouldSee("a[href='/products']", "Products")
    Sel.css("a[href='/products']").click()
    UI.shouldSeeText("All Products")
  }
}
```

> Failures automatically attach **screenshot + pageSource** to Allure when enabled.


## 🔗 See it in action

Want to see a real-world project using these patterns? Check out the [**QA Automation Exercise.com**](https://github.com/tlmatjuda/qa-automation-exercise-com).
