---
id: getting-started
title: Getting Started with REST
sidebar_position: 2
---

# 🚀 Getting Started with REST

## 1) Add the dependency

**Maven (Parent/BOM patterns as in Core), then:**
```xml
<dependency>
  <groupId>io.github.toobprojects</groupId>
  <artifactId>qabase-rest</artifactId>
</dependency>
```

**Gradle (Kotlin DSL)**
```kotlin
dependencies {
  testImplementation(platform("io.github.toobprojects:qabase-framework:1.4.1"))
  testImplementation("io.github.toobprojects:qabase-rest")
}
```

---

## 2) Minimal test using `RestClient` + `RestExpect`

```kotlin
import com.toob.qabase.QaBaseTest
import com.toob.qabase.rest.AbstractRestTest
import com.toob.qabase.rest.client.RestClient
import com.toob.qabase.rest.support.HttpSupport.expect
import com.toob.qabase.rest.support.StatusFamily
import org.junit.jupiter.api.Test

@QaBaseTest
class UsersApiTest : AbstractRestTest() {   // sets RestAssured baseUri from config

  @Test
  fun listUsers_ok() {                       // GET /users
    val resp = RestClient.get("/users")
    expect(resp)
      .statusFamily(StatusFamily.SUCCESS)
      .ok()
      .contentType("application/json")
      .timeUnder(2000)
      .attach()                              // body → Allure
  }
}
```

## 🔗 See it in action

Want to see a real-world project using these patterns? Check out the [**QA GoRest Automation**](https://github.com/tlmatjuda/qa-gorest-automation).

