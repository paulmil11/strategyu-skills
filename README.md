# StrategyU Skills

Strategy consulting skills for AI tools. Based on frameworks taught at [StrategyU](https://strategyu.co) -- Pyramid Principle, MECE, SCQA, and consulting communication best practices.

Works with Claude Code, ChatGPT, Gemini, Codex, and any AI tool that accepts custom instructions.

## Skills

| Skill | File | What it does |
|-------|------|-------------|
| **Problem Framer** | `problem-framer.md` | SCQA framework, hypothesis generation, issue trees |
| **Structure & Synthesize** | `structure-synthesize.md` | MECE, Label-Sort-Insight, Pyramid Principle |
| **Strategy Communicator** | `strategy-communicator.md` | Top-down sequencing for memos, emails, and exec summaries |
| **Strategy Writing** | `strategy-writing.md` | Writing craft, AI pattern elimination |
| **Strategy Coach** | `strategy-coach.md` | Full end-to-end skill combining all of the above |
| **Strategy Slides** | `strategy-slides.md` | Slide design principles and PPTX deck creation |

## How They Work Together

```
problem-framer → structure-synthesize → strategy-communicator → strategy-slides
      ↑                    ↑                      ↑                    ↑
      └──────────────── strategy-writing ─────────────────────────────┘
```

Each skill is standalone -- jump in wherever you are in the process. The writing layer is embedded in all skills.

**Strategy Coach** wraps everything into a single skill for end-to-end guidance.

## Quick Start (Easy Mode)

Not familiar with advanced agentic coding tools? Totally fine.

1. Download the zip file
2. Open any of the `.md` files
3. Paste the contents into your AI tool (ChatGPT, Gemini, Claude, etc.) as custom instructions or at the start of a conversation
4. Ask it your questions -- the skill will guide the AI's responses

That's it. The files are just instructions that tell the AI how to think and write like a strategy consultant. No installation required.

## Advanced: Claude Code Installation

If you're using Claude Code, install the skills so they trigger automatically:

**Single skill:**
```bash
mkdir -p ~/.claude/skills/problem-framer
cp problem-framer.md ~/.claude/skills/problem-framer/SKILL.md
```

**All skills:**
```bash
for f in *.md; do
  [ "$f" = "README.md" ] && continue
  name=$(basename "$f" .md)
  mkdir -p ~/.claude/skills/$name
  cp "$f" ~/.claude/skills/$name/SKILL.md
done
```

Once installed, use them with slash commands: `/problem-framer`, `/structure-synthesize`, `/strategy-communicator`, `/strategy-writing`, `/strategy-coach`, `/strategy-slides`.

## Claude Chat / Cowork

These tools only accept one file at a time. Use **strategy-coach.md** -- it includes all frameworks (SCQA, MECE, Pyramid Principle, slide design, writing rules) in a single file. Paste it into Project Instructions or at the start of a conversation.

If you only need one capability (e.g., slide help), paste that individual skill file instead.

## Advanced: Other AI Tools

- **ChatGPT** -- Paste into Custom Instructions or create a custom GPT
- **Gemini** -- Paste into a Gem's system instructions
- **Codex / Other** -- Paste into the system prompt or project instructions

## Presentation Styles

Strategy Slides includes 7 built-in style suggestions with typography and color pairings:

Editorial, Boardroom, Ink, Midnight, Studio, Earth, and Bold Corporate.

These are styling and typography guidelines only -- no template files are included. The skill describes the color palettes, font pairings, and design rules. You apply them in your own PowerPoint or presentation tool.

## Writing Rules

Every skill includes embedded writing craft rules that eliminate AI-sounding patterns:

- 30+ banned AI vocabulary words
- Forced metaphor and awkward verb-noun detection
- Significance inflation and false urgency elimination
- Nominalization and anthropomorphizing checks
- No pie charts (column charts always)
- No takeaway boxes at bottom of slides
- The read-aloud test

## Frameworks

Based on:
- Pyramid Principle (Barbara Minto / McKinsey)
- MECE (Mutually Exclusive, Collectively Exhaustive)
- SCQA (Situation, Complication, Question, Answer)
- Label-Sort-Insight technique
- Say It With Charts (Gene Zelazny)
