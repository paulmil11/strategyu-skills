---
type: llm
---
The original opens with an empty "## Overview" heading that holds nothing but another heading.

PASS if the rewrite drops the empty "Overview" heading (keeping at most one heading, or none, for this short section).
FAIL if the rewrite keeps both "Overview" and the sub-heading above the text.
