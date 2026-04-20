#!/bin/bash
# Sync StrategyU Skillz build artifacts to the website-strategyu repo.
# Runs automatically via .git/hooks/post-commit, or manually:
#   ./scripts/sync-to-website.sh

set -e

SKILLZ_DIR="$(cd "$(dirname "$0")/.." && pwd)"
WEBSITE_DIR="/Users/paulmillerd/Millerdhq/website-strategyu"
DL_DIR="$WEBSITE_DIR/public/downloads"
IMG_DIR="$WEBSITE_DIR/public/images/skills"

if [ ! -d "$WEBSITE_DIR" ]; then
  echo "website-strategyu not found at $WEBSITE_DIR -- skipping sync"
  exit 0
fi

mkdir -p "$DL_DIR" "$IMG_DIR"

cp "$SKILLZ_DIR/strategyu-skills-claude.zip" "$DL_DIR/"
cp "$SKILLZ_DIR/strategyu-skills-general.zip" "$DL_DIR/"
cp "$SKILLZ_DIR/skill-guide.svg" "$IMG_DIR/skill-guide.svg"

# Update last-sync timestamp file consumed by the download page
date -u +"%Y-%m-%d" > "$WEBSITE_DIR/src/data/skills-last-updated.txt"

echo "Synced skills -> website-strategyu (zips + svg + timestamp)"
