---
id: troubleshooting
title: Troubleshooting
sidebar_position: 5
---

# 🧯 Troubleshooting (WebUI)

- **No screenshots in Allure** → enable `-Dallure.reports=true` or `-Pallure-reports`.
- **Timeouts** → bump `qabase.webui.timeout` (milliseconds). Prefer Selenide conditions.
- **Headless issues** → make sure Chrome/Firefox is installed and drivers match.
