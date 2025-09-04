---
id: examples
title: Examples
sidebar_position: 4
---

# 🧪 REST Examples

## Deserializing to types
```kotlin
import com.toob.qabase.rest.client.RestClient
import com.toob.qabase.rest.support.HttpSupport.expect
import io.restassured.common.mapper.TypeRef

data class User(val id: Int, val name: String)

val response = RestClient.get("/users")
val users: List<User> = expect(response).ok().`as`(object : TypeRef<List<User>>() {})
```

## Field assertions and size checks
```kotlin
import com.toob.qabase.rest.client.RestClient
import com.toob.qabase.rest.support.HttpSupport.expect

expect(RestClient.get("/users/1"))
  .statusIn(200, 201, 204)
  .fieldEq("id", 1)
  .attachIf(true)

// array empty or limited size
expect(RestClient.get("/users"))
  .ok()
  .emptyOrSizeAtMost(1000)  // allows empty or up to 1000 items
```
