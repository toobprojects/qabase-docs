#!/usr/bin/env bash
set -euo pipefail

# Run Docusaurus locally with the best available package manager.
# Usage: scripts/dev.sh

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

# Install deps if node_modules is missing or empty
if [ ! -d "node_modules" ] || [ -z "$(ls -A node_modules 2>/dev/null || true)" ]; then
  echo "→ Installing dependencies..."
  if [ "$PM" = "pnpm" ]; then
    pnpm install
  elif [ "$PM" = "yarn" ]; then
    yarn install --frozen-lockfile || yarn install
  else
    npm ci || npm install
  fi
fi

# Start the local dev server
echo "→ Starting Docusaurus dev server..."
if [ "$PM" = "pnpm" ]; then
  pnpm run start
elif [ "$PM" = "yarn" ]; then
  yarn start
else
  npm run start
fi
