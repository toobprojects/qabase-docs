---
id: configuration
title: Configuration
sidebar_position: 3
---

# ⚙️ Core Configuration

| Key                                   | Type    | Default | Description |
|---------------------------------------|---------|---------|-------------|
| `qabase.core.reports.archive.enabled` | boolean | `false` | If `true`, archives `allure-results` into `target/*.tar.gz` when the Spring context closes. |

**Example (`application.yaml`)**
```yaml
qabase:
  core:
    reports:
      archive:
        enabled: true
```
