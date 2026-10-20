# StrategyU AI Skills

Strategy consulting skills for AI tools. Based on the frameworks taught at [StrategyU](https://strategyu.co): the Pyramid Principle, MECE, SCQA, and consulting communication.

Works with Claude, ChatGPT, Gemini, Codex, Cursor, and any AI tool that accepts custom instructions.

## Skills

| Skill | File | What it does |
|-------|------|-------------|
| **Frame** | `su-frame` | Turn a messy situation into a defined problem: SCQA, hypotheses, issue trees |
| **Structure** | `su-structure` | Turn notes and data into an argument: MECE, Label-Sort-Insight, the pyramid |
| **Storyline** | `su-storyline` | Get the argument across: emails, memos, exec summaries, and decks, plus feedback on slides you already have |
| **Writing** | `su-writing` | Writing craft: cuts AI patterns and vague claims from any text |
| **Coach** | `su-coach` | All of the above in one file, start to finish |

## How They Work Together

```
Frame → Structure → Storyline
   ↑         ↑           ↑
   └──────── Writing ────┘
```

Each skill works on its own, so start wherever you are. The writing rules are built into every skill.

**Coach** wraps everything into a single skill, for when you want guidance from the start or your tool only takes one file.

## Storyline and Decks

Storyline builds the storyline first: the main point, the order it's told in, and titles that say the point. Then it builds whatever you're making:

- **An email, memo, or exec summary.** It writes it.
- **A deck.** It asks a few questions first (who it's for, whether you'll present it or send it, and where it has to end up), then builds it one of three ways:
  - **In your AI tool's browser.** The deck is one HTML file you review slide by slide in Claude, Codex, or Cursor, ending as a PDF.
  - **As a PowerPoint file.** For decks that have to stay editable or go into a company template. A .pptx opens in PowerPoint, Keynote, and Google Slides.
  - **As an outline.** For when you want to build it yourself.
- **Feedback on a deck you already have.** It reads the titles as a story first, then the slides that need work, then the three changes that matter most.

The deck instructions live in `su-storyline/references/`. In the chat edition they're one file, `su-storyline-slides.md`: paste it too when you're making a deck.

## Quick Start (Easy Mode)

Not familiar with agentic coding tools? Totally fine.

1. Download the zip file
2. Open any of the `.md` files
3. Paste the contents into your AI tool (ChatGPT, Gemini, Claude, etc.) as custom instructions or at the start of a conversation
4. Ask your questions, and the skill guides the AI's answers

That's it. The files are instructions that tell the AI how to think and write like a strategy consultant. No installation required.

## Claude Code, Cursor, and Codex

Copy each skill folder from the Claude Code edition into your skills folder so the skills load automatically:

```bash
for d in su-*/; do cp -R "$d" ~/.claude/skills/; done
```

Then use them by name: `/su-frame`, `/su-structure`, `/su-storyline`, `/su-writing`, `/su-coach`. Or just ask: "frame this problem," "build the deck," "write the email."

## Claude.ai Skills

Upload each skill in **Settings → Capabilities → Skills** (zip a skill folder first, or upload the `.md` file). Claude Chat and Cowork sessions that only take one file work best with **`su-coach.md`**: it includes all the frameworks in a single file. Paste it into Project Instructions or at the start of a conversation.

## Other AI Tools

- **ChatGPT**: paste into Custom Instructions or a custom GPT
- **Gemini**: paste into a Gem's system instructions
- **Codex, Copilot, and others**: paste into the system prompt or project instructions

## Upgrading From 1.x

Version 2.0 has five skills where 1.x had six, with new names. Remove the old ones first, so the old and new versions don't compete for the same requests:

| 1.x | 2.0 |
|---|---|
| `problem-framer` | `su-frame` |
| `structure-synthesize` | `su-structure` |
| `strategy-communicator` and `strategy-slides` | `su-storyline` (merged) |
| `strategy-writing` | `su-writing` |
| `strategy-coach` | `su-coach` |

**Claude Code:** delete the old folders, then install the new ones.

```bash
cd ~/.claude/skills && rm -rf problem-framer structure-synthesize strategy-communicator strategy-slides strategy-writing strategy-coach
```

**Claude.ai:** turn off or delete the six old skills in Settings → Capabilities → Skills, then upload the five new ones.

**Custom GPTs, Gems, and Projects:** replace the pasted instructions with the new files.

## Decks: A Slide Editor for Claude and Codex

I've also built [Decks](https://github.com/paulmil11/decks), a free slide editor that runs inside Claude Code or Codex. You comment under a slide, and the AI makes the change and replies on the slide, so it handles most of the grunt work while you think about the argument. It works with these skills: Storyline builds there when Decks is installed. To set it up, paste the prompt from the Decks README into Claude Code or Codex.

## Slide Templates

Storyline builds PowerPoint decks on your company's template if you have one. If you don't, it uses StrategyU's free consulting templates: 100+ slides with action titles (executive summaries, issue trees, charts, frameworks, and roadmaps) in four styles, Crimson, Navy, Minimal, and Dark. Download them at https://strategyu.co/strategy-consulting-powerpoint-templates/. Browser decks match the same colors and fonts.

## Writing Rules

Every skill includes writing craft rules that cut AI-sounding patterns:

- 30 AI writing patterns, including the newer 2025 and 2026 tells: new watch words, same-length sentences, vague connection words, over-formatting, and leftover link and citation code
- 30+ banned AI vocabulary words
- Forced metaphor and awkward verb-noun detection
- Significance inflation and false urgency elimination
- Nominalization and anthropomorphizing checks
- No pie charts (column charts always)
- No takeaway boxes at the bottom of slides
- The read-aloud test

## Frameworks

Based on:
- Pyramid Principle (Barbara Minto / McKinsey)
- MECE (Mutually Exclusive, Collectively Exhaustive)
- SCQA (Situation, Complication, Question, Answer)
- Label-Sort-Insight technique
- Say It With Charts (Gene Zelazny)
