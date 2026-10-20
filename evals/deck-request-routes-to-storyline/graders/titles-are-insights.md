---
type: llm
---

The response is a slide-by-slide outline. Each slide has a navigation header
(e.g. "## Slide 3 - The savings") and, below it, the slide's actual title,
often marked "**Title:**". Judge ONLY the actual titles, never the navigation
headers.

Judge ONLY the content slides. EXCLUDE the cover/title slide, any section
divider, and the appendix - those are structural slides and are not expected
to carry a takeaway.

PASS if every content slide's title is a full-sentence takeaway that could
stand alone (e.g. "Routing everything through Columbus cuts shipping cost 18%,
or $2.1M a year"). Titles containing [bracketed placeholders] still count.
FAIL if a content slide's title is a bare topic label such as "Overview",
"Background", "Analysis", or "Cost Savings".
