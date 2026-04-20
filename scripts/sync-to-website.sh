#!/bin/bash
# Sync StrategyU Skillz build artifacts to the website-strategyu repo.
# Runs automatically via .git/hooks/post-commit, or manually:
#   ./scripts/sync-to-website.sh

set -e

SKILLZ_DIR="$(cd "$(dirname "$0")/.." && pwd)"
WEBSITE_DIR="/Users/paulmillerd/Millerdhq/website-strategyu"
COURSE_DIR="/Users/paulmillerd/Millerdhq/app-strategyu-course"
TODAY=$(date -u +"%Y-%m-%d")

# --- website-strategyu: public download page ---
if [ -d "$WEBSITE_DIR" ]; then
  DL_DIR="$WEBSITE_DIR/public/downloads"
  IMG_DIR="$WEBSITE_DIR/public/images/skills"
  mkdir -p "$DL_DIR" "$IMG_DIR" "$WEBSITE_DIR/src/data"

  cp "$SKILLZ_DIR/strategyu-skills-claude.zip" "$DL_DIR/"
  cp "$SKILLZ_DIR/strategyu-skills-general.zip" "$DL_DIR/"
  cp "$SKILLZ_DIR/skill-guide.svg" "$IMG_DIR/skill-guide.svg"
  echo "$TODAY" > "$WEBSITE_DIR/src/data/skills-last-updated.txt"
  echo "Synced -> website-strategyu"
else
  echo "website-strategyu not found -- skipping"
fi

# --- app-strategyu-course: paid lesson downloads ---
if [ -d "$COURSE_DIR" ]; then
  COURSE_DL_DIR="$COURSE_DIR/private/downloads"
  mkdir -p "$COURSE_DL_DIR"

  cp "$SKILLZ_DIR/strategyu-skills-claude.zip" "$COURSE_DL_DIR/"
  cp "$SKILLZ_DIR/strategyu-skills-general.zip" "$COURSE_DL_DIR/"
  cp "$SKILLZ_DIR/skills/strategy-coach.md" "$COURSE_DL_DIR/"
  echo "Synced -> app-strategyu-course"
else
  echo "app-strategyu-course not found -- skipping"
fi
