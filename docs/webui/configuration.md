---
id: configuration
title: Configuration
sidebar_position: 3
---

# ⚙️ WebUI Configuration

| Key                             | Type    | Default      | Description |
|---------------------------------|---------|--------------|-------------|
| `qabase.webui.baseUrl`          | string  | —            | Base URL used by `UI.visit("/")` and `Sel.open()` |
| `qabase.webui.browser`          | string  | `chrome`     | Browser name for Selenide |
| `qabase.webui.browseWindowSize` | string  | `1920x1080`  | Window size |
| `qabase.webui.timeout`          | number  | `4000`       | **Milliseconds** timeout for Selenide waits |
| `qabase.webui.headless`         | boolean | `false`      | Run headless |

**Example (`application.yaml`)**
```yaml
qabase:
  webui:
    baseUrl: https://automationexercise.com
    browser: chrome
    browseWindowSize: 1920x1080
    timeout: 6000
    headless: true
```
