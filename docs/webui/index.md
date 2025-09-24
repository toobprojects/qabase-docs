---
id: index
title: WebUI Module Overview
sidebar_position: 1
---

# 🖥️ WebUI Module

`qabase-web-ui` builds on **Selenide** and wires Allure automatically.

- Configures Selenide and registers **AllureSelenide** listener.
- **DSLs** for readability:
  - `Sel` — selectors (`open`, `css`, `id`, `all`, `byText`, `inScope`, `xpath`)
  - `UI` — flows & assertions (`visit`, `clickCss/click`, `typeInto`, `tap`, `shouldSee`, `shouldSeeText`, `expectAlertContains`, `attachFailureArtifacts`)
