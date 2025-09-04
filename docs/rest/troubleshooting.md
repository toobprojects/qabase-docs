---
id: troubleshooting
title: Troubleshooting
sidebar_position: 5
---

# 🧯 Troubleshooting (REST)

- **401/403** → confirm token and headers; ensure correct baseUrl.
- **Slow responses** → use `timeUnder(ms)` to enforce SLAs and spot regressions.
- **No Allure attachments** → enable `-Dallure.reports=true` or use `-Pallure-reports`.
