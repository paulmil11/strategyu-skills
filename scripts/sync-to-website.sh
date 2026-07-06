#!/bin/bash
# Sync StrategyU Skillz build artifacts to the website + course repos.
# Runs automatically via .git/hooks/post-commit, or manually:
#   ./scripts/sync-to-website.sh
#
# NOTE (July 2026): customer downloads are gated on learn.strategyu.co/downloads,
# so the zips intentionally do NOT go to the public website anymore. The
# website keeps only the sales-page assets (svg + last-updated date).

set -e

SKILLZ_DIR="$(cd "$(dirname "$0")/.." && pwd)"
WEBSITE_DIR="/Users/paulmillerd/Millerdhq/website-strategyu"
COURSE_DIR="/Users/paulmillerd/Millerdhq/app-strategyu-course"
TODAY=$(date -u +"%Y-%m-%d")

# --- website-strategyu: sales page assets only (no zips — see note above) ---
if [ -d "$WEBSITE_DIR" ]; then
  IMG_DIR="$WEBSITE_DIR/public/images/skills"
  mkdir -p "$IMG_DIR" "$WEBSITE_DIR/src/data"

  cp "$SKILLZ_DIR/skill-guide.svg" "$IMG_DIR/skill-guide.svg"
  echo "$TODAY" > "$WEBSITE_DIR/src/data/skills-last-updated.txt"
  echo "Synced -> website-strategyu (sales assets)"
else
  echo "website-strategyu not found -- skipping"
fi

# --- app-strategyu-course: gated customer downloads + workshop copies ---
if [ -d "$COURSE_DIR" ]; then
  PRIVATE_DL_DIR="$COURSE_DIR/private/downloads"
  WORKSHOP_DL_DIR="$COURSE_DIR/public/downloads/skills"
  mkdir -p "$PRIVATE_DL_DIR" "$WORKSHOP_DL_DIR" "$COURSE_DIR/src/data"

  # Gated: served via /api/skills/download to entitled accounts
  cp "$SKILLZ_DIR/strategyu-skills-claude.zip" "$PRIVATE_DL_DIR/"
  cp "$SKILLZ_DIR/strategyu-skills-general.zip" "$PRIVATE_DL_DIR/"
  cp "$SKILLZ_DIR/skills/strategy-coach.md" "$PRIVATE_DL_DIR/"

  # Workshop perk: unlisted, linked only from password-gated /watch pages
  cp "$SKILLZ_DIR/strategyu-skills-claude.zip" "$WORKSHOP_DL_DIR/"
  cp "$SKILLZ_DIR/strategyu-skills-general.zip" "$WORKSHOP_DL_DIR/"

  # Drives the "Latest update" line on learn.strategyu.co/downloads
  echo "$TODAY" > "$COURSE_DIR/src/data/skills-last-updated.txt"
  echo "Synced -> app-strategyu-course (gated + workshop)"
else
  echo "app-strategyu-course not found -- skipping"
fi
