---
id: troubleshooting
title: Troubleshooting
sidebar_position: 5
---

# 🧯 Troubleshooting (Core)

- **No Allure output** → pass `-Dallure.reports=true` or use `-Pallure-reports`.
- **`@BeforeAll` must be non-static** → extend `AbstractQABaseTest`.
- **No archive created** → set `qabase.core.reports.archive.enabled=true` and ensure `allure-results/` exists.
