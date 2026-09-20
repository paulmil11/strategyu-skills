#!/bin/bash
# PostToolUse hook (Write|Edit): run `claude plugin validate` after a skill file changes.
# Walks up from the edited file to the nearest .claude-plugin/plugin.json; no-ops
# when there is none, so it's harmless until the repo is laid out as a plugin.
# Exit 2 on failure so the validation errors are fed back to Claude.
f=$(jq -r '.tool_input.file_path // .tool_response.filePath // empty')
case "$f" in
  *SKILL.md|*/skills/*.md) ;;
  *) exit 0 ;;
esac
d=$(dirname "$f")
while [ "$d" != "/" ] && [ ! -f "$d/.claude-plugin/plugin.json" ]; do d=$(dirname "$d"); done
[ -f "$d/.claude-plugin/plugin.json" ] || exit 0
out=$(cd "$d" && claude plugin validate . 2>&1) || { printf '%s\n' "$out" >&2; exit 2; }
