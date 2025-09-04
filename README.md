# Website

This website is built using [Docusaurus](https://docusaurus.io/), a modern static website generator.

## Installation

```bash
yarn
```

## Local Development

```bash
yarn start
```

This command starts a local development server and opens up a browser window. Most changes are reflected live without having to restart the server.

## Build

```bash
yarn build
```

This command generates static content into the `build` directory and can be served using any static contents hosting service.

## Deployment

Using SSH:

```bash
USE_SSH=true yarn deploy
```

Not using SSH:

```bash
GIT_USER=<Your GitHub username> yarn deploy
```

If you are using GitHub pages for hosting, this command is a convenient way to build the website and push to the `gh-pages` branch.


```bash
docs/
  intro.md
  installation.md
  modules-overview.md
  supported-versions.md
  why-qabase.md
  tutorial-basics/...
  tutorial-extras/...

  core/
    index.md
    getting-started.md
    configuration.md
    examples.md
    troubleshooting.md
    faq.md

  rest/
    index.md
    getting-started.md
    configuration.md
    examples.md
    troubleshooting.md
    faq.md

  webui/
    index.md
    getting-started.md
    configuration.md
    examples.md
    troubleshooting.md
    faq.md
```