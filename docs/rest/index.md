---
id: index
title: REST Module Overview
sidebar_position: 1
---

# 🌐 REST Module

`qabase-rest` adds expressive API testing on top of RestAssured:

- **RestClient** — simple `get/post/put/delete` with JSON defaults + Allure attachments
- **HttpSupport** — JSON helpers, pretty-printing, `expect(response)` builder
- **RestExpect** — chainable assertions: `status`, `statusIn`, `statusFamily`, `ok/created/noContent`, `fieldEq`, `contentType`, `timeUnder`, `attach`, `attachIf`, `emptyOrSizeAtMost`
- **RestAssertions** — entry point with static `expect(response)` method for fluent assertions
