---
id: examples
title: Examples
sidebar_position: 4
---

# 🧪 WebUI Examples

```kotlin
import com.toob.qabase.webui.dsl.UI
import com.toob.qabase.webui.dsl.Sel

// Search flow
UI.visit("/")
  .typeInto("#search_product", "dress")
  .clickCss("#submit_search")
  .shouldSeeText("Searched Products")

// Direct selectors
Sel.id("newsletter_email").setValue("user@example.com")
Sel.byText("Subscribe").click()

// Assertions
UI.shouldSeeText("Thank you for your subscription")
```
