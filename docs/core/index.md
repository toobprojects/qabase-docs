---
id: index
title: Core Overview
sidebar_position: 1
---

# 🧩 Core Module

`qabase-core` is the foundation of QA Base. It provides:

- ✅ **@QaBaseTest** — enables non-static `@BeforeAll` via JUnit `PER_CLASS`.
- ✅ **AbstractQABaseTest** — enables non-static `@BeforeAll` via JUnit `PER_CLASS`.
- ✅ **AllureExtensions** — safe helpers for steps + attachments (`step{}`, `attachJson`, `attachText`).
- ✅ **ReportArchiverListener** — optionally archives `allure-results` on shutdown into `target/*.tar.gz`.

> ℹ️ Allure helpers are **inert by default** and activate only when `-Dallure.reports=true`
> or the Maven profile `-Pallure-reports` is enabled.
