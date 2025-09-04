# 📘 QA Base Framework Documentation

Welcome to the documentation repository for **QA Base Framework**!  
This site is built with [Docusaurus](https://docusaurus.io/) to provide a modern, interactive, and continuously updated knowledge hub for all things QA Base.

---

## 📝 What is this?

This is the official documentation site for the [QA Base Framework](https://github.com/toobprojects/qabase-framework) — a flexible, modular framework for test automation.  
**This documentation is living:** it is continuously updated alongside the framework's development.

- **Published Docs:** [qabase-docs](https://toobprojects.github.io/qabase-docs)
---

## 🛠️ Local Development & Installation

Clone this repo and install dependencies:

```bash
git clone https://github.com/toobprojects/qabase-docs.git
cd qabase-docs
yarn          # or npm install
```

Start the local dev server:

```bash
yarn start    # or npm start
# or use the script below for convenience
./scripts/dev.sh
```

---

## ⚡ Scripts in `scripts/`

- **`dev.sh`**: Starts the local Docusaurus dev server.
- **`upgrade-docusaurus.sh`**: Upgrades Docusaurus to the latest version.

### Usage:

```bash
# Start local dev server
./scripts/dev.sh

# Upgrade Docusaurus to latest version
./scripts/upgrade-docusaurus.sh
```

---

## 🚀 Deployment

Deployment is handled automatically via GitHub Actions, which builds and publishes the site to GitHub Pages on every push to the main branch.

---


---

## 🙌 Contributing

Feel free to open issues or PRs to improve the documentation or suggest changes!

---

_Made with ❤️ using [Docusaurus](https://docusaurus.io/)_