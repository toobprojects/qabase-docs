#!/usr/bin/env bash
set -euo pipefail

# Upgrade all @docusaurus/* packages to latest and reinstall.
# Usage: scripts/upgrade-docusaurus.sh

cd "$(dirname "$0")/.."

# Detect package manager
if [ -f "pnpm-lock.yaml" ]; then
  PM="pnpm"
elif [ -f "yarn.lock" ]; then
  PM="yarn"
else
  PM="npm"
fi

echo "→ Detected package manager: $PM"

# Ensure git working tree is clean to avoid losing changes
if [ -d ".git" ]; then
  if [ -n "$(git status --porcelain)" ]; then
    echo "✖ Your git working tree has uncommitted changes."
    echo "  Commit or stash before upgrading."
    exit 1
  fi
fi

# Use npm-check-updates to bump all @docusaurus/* deps
echo "→ Bumping @docusaurus/* packages to latest with npm-check-updates..."
npx -y npm-check-updates '/@docusaurus\/.*/' -u

echo "→ Reinstalling dependencies..."
if [ "$PM" = "pnpm" ]; then
  pnpm install
elif [ "$PM" = "yarn" ]; then
  yarn install
else
  npm install
fi

# Optional: also ensure core packages are explicitly latest
echo "→ Ensuring core preset is latest..."
if [ "$PM" = "pnpm" ]; then
  pnpm add -D @docusaurus/core@latest @docusaurus/preset-classic@latest
elif [ "$PM" = "yarn" ]; then
  yarn add -D @docusaurus/core@latest @docusaurus/preset-classic@latest
else
  npm install -D @docusaurus/core@latest @docusaurus/preset-classic@latest
fi

# Build to verify nothing broke
echo "→ Building site to verify..."
if [ "$PM" = "pnpm" ]; then
  pnpm run build
elif [ "$PM" = "yarn" ]; then
  yarn build
else
  npm run build
fi

echo "✓ Docusaurus upgrade complete."
