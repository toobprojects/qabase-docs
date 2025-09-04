---
id: examples
title: Examples
sidebar_position: 4
---

# 🧪 Core Examples

## Allure steps + attachments
```kotlin
import com.toob.qabase.core.AllureExtensions.step
import com.toob.qabase.core.AllureExtensions.attachJson
import com.toob.qabase.core.AllureExtensions.attachText

step("Call service") {
  attachJson("payload", mapOf("id" to 101, "op" to "demo"))
  attachText("note", "Executed demo step")
}
```

> Requires `-Dallure.reports=true` or `-Pallure-reports`.
