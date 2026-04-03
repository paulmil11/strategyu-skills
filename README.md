# StrategyU Skills

A suite of Claude Code skills for strategy consulting work. Based on frameworks taught at [StrategyU](https://strategyu.co) — Pyramid Principle, MECE, SCQA, and consulting communication best practices.

## Skills

| Skill | File | What it does |
|-------|------|-------------|
| **Problem Framer** | `skills/problem-framer.md` | SCQA framework, hypothesis generation, issue trees |
| **Structure & Synthesize** | `skills/structure-synthesize.md` | MECE, Label-Sort-Insight, Pyramid Principle |
| **Strategy Communicator** | `skills/strategy-communicator.md` | Top-down presentation, sequencing, Carmen Simon's 3 modes |
| **Strategy Writing** | `skills/strategy-writing.md` | Writing craft, AI pattern elimination, tone |
| **Strategy Coach** | `skills/strategy-coach.md` | Full end-to-end skill combining all of the above |
| **Strategy Slides** | `skills/strategy-slides.md` | PPTX deck creation with templates and theming |

## How They Work Together

```
problem-framer → structure-synthesize → strategy-communicator → strategy-slides
      ↑                    ↑                      ↑                    ↑
      └──────────────── strategy-writing ─────────────────────────────┘
```

Each skill is standalone — jump in wherever you are in the process. The writing layer is embedded in all skills.

**Strategy Coach** wraps everything into a single skill for end-to-end guidance.

## Templates

Seven built-in presentation styles with serif/sans-serif pairings:

- **Editorial** — DM Serif Display + DM Sans
- **Boardroom** — Playfair Display + Libre Franklin
- **Ink** — Fraunces + Inter
- **Midnight** — Lora + Inter (dark mode)
- **Studio** — Instrument Serif + Space Grotesk
- **Earth** — Cormorant Garamond + DM Sans
- **Bold Corporate** — Montserrat

Preview: open `style-preview.html` in a browser.

## Installation

Copy any `.md` file from `skills/` into `~/.claude/skills/<skill-name>/SKILL.md`:

```bash
mkdir -p ~/.claude/skills/problem-framer
cp skills/problem-framer.md ~/.claude/skills/problem-framer/SKILL.md
```

Or copy all:

```bash
for f in skills/*.md; do
  name=$(basename "$f" .md)
  mkdir -p ~/.claude/skills/$name
  cp "$f" ~/.claude/skills/$name/SKILL.md
done
```

## Writing Rules

Every skill includes embedded writing craft rules that eliminate AI-sounding patterns:

- 24-word AI vocabulary watchlist (never use: "delve," "leverage," "robust," etc.)
- Significance inflation detection
- False urgency elimination
- Copula avoidance correction
- Synonym cycling detection
- Sentence rhythm variation
- The read-aloud test

## Frameworks

Based on:
- Pyramid Principle (Barbara Minto / McKinsey)
- MECE (Mutually Exclusive, Collectively Exhaustive)
- SCQA (Situation, Complication, Question, Answer)
- Label-Sort-Insight technique
- Carmen Simon's cognitive neuroscience (Impossible to Ignore)
- Say It With Charts (Gene Zelazny)
