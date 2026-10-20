# StrategyU Skills Changelog

All notable changes to the StrategyU AI Skills suite. Most recent first.

## 2026-10-20 (2.1)

- **Writing adds the newer AI tells (2025 and 2026 models).** Five new patterns, 26 to 30: the new watch words ("matters," "quietly," "steady," "dependable," "practical," "clearer," "prioritize," "echoed," "universally," plus "emphasizing," "enhance," "highlighting," "showcasing"), every sentence the same 8-to-20-word length, vague connection words ("associated with"), over-formatting, and link and citation leftovers ("utm_source=chatgpt.com," "[cite: 1]"). Negative parallelisms now include the "Y rather than X" form, and forced metaphors include "X is the Y of Z."
- **Judge clusters, not single words.** One flagged word doesn't make a draft machine-written. The quality check says so, and a new section lists what human writing does (plain "is" and "has," plain verbs, definite claims, honest qualifiers) so a rewrite keeps it.
- **Em dashes:** the newest models use fewer, so a draft without them proves nothing. StrategyU style still avoids them, and Writing's own examples no longer use them.
- **The other four skills** get the same short block of 2026 tells in their writing rules.
- **Storyline points to StrategyU's free consulting templates** (100+ slides in four styles) when the user has no company template, in place of seven built-in style presets.
- **Storyline knows about Decks** (https://github.com/paulmil11/decks), StrategyU's free slide editor for Claude Code and Codex. It builds there when Decks is installed, and the README now links it.
- Email notes now start with the sequencing by name ("Sequencing: Indirect, because..."), and Storyline triggers on "I need to make a deck" and "help me build a deck."
- New eval case: `rewrite-2026-tells`. Result: 12 cases, overall 0.97 (up from 0.92), +0.26 over no skills; after the two fixes above, the email and deck-question cases pass 3 of 3.

## 2026-10-20 (2.0)

- **Five skills, named by step.** Problem Framer is now **Frame** (`su-frame`), Structure & Synthesize is **Structure** (`su-structure`), Strategy Writing is **Writing** (`su-writing`), and Strategy Coach is **Coach** (`su-coach`). The `su-` tag keeps the names from clashing with other skills you have installed.
- **Strategy Communicator and Strategy Slides are now one skill, Storyline** (`su-storyline`). It builds the storyline first (the main point, the order, and titles that say the point), then the email, memo, exec summary, or deck. The two skills used to compete for the same requests.
- **Decks start with a few questions:** who the deck is for, whether you'll present it or send it, where it has to end up (PowerPoint, Google Slides, Keynote, a company template, or just a PDF), and whether to build it in your AI tool's browser. When the argument is already clear, a first-pass storyline comes in the same message.
- **A new way to build decks: in your AI tool's browser.** The AI writes the deck as one HTML file, opens it in Claude's or Codex's built-in browser, you say what to change slide by slide, and it exports a PDF. PowerPoint is still there for decks that must stay editable.
- **Every slide gets checked before you see it:** the five-second test for presented decks, the ten-second test for decks people read, horizontal and vertical flow, and four layout guides (margins, titles of two lines at most, a minimum text size, and no more than four text sizes on a slide).
- **Feedback on decks you already have** follows one order: the story the titles tell, then the slides that need work, then the three changes that matter most.
- **Frame spells out Situation, Complication, Question, and Answer**, and **Storyline names its sequencing** (Direct, Indirect, Concerned, or Aggressive) when it writes an email.
- **Writing** adds a rule against narrated audience reactions ("the number the room will stop on").
- The eval suite moves to the new names and adds three cases: slide feedback, the opening deck questions, and a storyline for a skeptical audience. Result: 10 of 11 cases pass on every run.
- **Upgrading:** delete the six old skills before installing the five new ones (the README shows how).

## 2026-09-20

- **Trigger phrases now reach the model.** All six skills used a `trigger:` frontmatter field that Claude Code never reads. Renamed to `when_to_use:`, so phrases like "help me frame this" and "clean up the writing" now appear in the skill listing Claude uses to pick a skill.
- **Coach and Slides no longer compete for the same requests.** Coach owns "help me with my presentation" and "present to my boss" (thinking first); Slides owns "build the deck," "make the PowerPoint," and anything .pptx. Each points to the other.
- **No invented numbers.** Strategy Writing and Strategy Coach now say: if the source has no specifics, rewrite around [bracketed placeholders] and ask for the numbers rather than making them up.
- **Worked examples are marked illustrative.** The "pause the Europe launch" email example in Strategy Writing and Strategy Communicator now carries a rule not to reuse its facts in a user's draft.
- **Problem Framer answers and asks in the same turn.** Clarifying questions come alongside a first-pass SCQA and issue tree, not instead of them.
- **Bold-label exception.** Strategy Writing's boldface and inline-header rules now exempt emails and slides, where bold insights are the format. Removes a contradiction with Strategy Communicator.
- **Emails now trigger the Communicator skill.** "Write an email to my CFO recommending X" previously matched no skill at all, so the email rules (subject as takeaway, bolded insights, deadline close) never loaded. Added email and memo phrasings to the trigger list.
- **Hypotheses can be statements, and the skill now shows how.** Problem Framer always allowed "questions or statements" but only ever demonstrated questions, so output varied run to run. Added a worked example of both forms and clarified that the test is whether a hypothesis opens an inquiry, not its grammar.
- **Closing slides get real titles.** "Decision and next steps" and "Three risks and how we cover them" were slipping through as slide titles. Added a title rule to the Recommendation slide type and a new Risk/Objection section banning count-only titles.
- Dropped a stale reference to `presentation-strategist` from Strategy Coach's description.
- Added an eval suite (`evals/`) and a plugin manifest so these behaviours are now measured rather than assumed. Current result: mean +0.33 improvement over no-skill baseline across 8 cases, with framing, rewriting, and synthesis showing the largest gains.

## 2026-04-22

- **Memos now use the Pyramid Principle explicitly.** Top-down structure: governing thought first, insight-statement section headers, evidence supports (not leads). First-sentence test added (if reader reads only first sentences, they should get the full argument).
- **Emails bold the insights, not keywords.** Bolded fragments must read as a standalone summary scannable in three seconds. Added a worked example.
- **New pattern: Lazy descriptors that dodge the insight.** Vague shape-words like "thinner," "tighter," "softer," "fuller" used as the main point. Now flagged and rewritten with the insight stated plainly. Pattern count: 24 -> 25.
- **Ask about audience before writing from scratch.** New five-question prompt added to strategy-writing, strategy-communicator, and strategy-coach: reader, stance (supportive/skeptical/opposed), desired decision, time available, what they care about. Skipped when editing existing text.

## 2026-04-20

- **Hypotheses are questions, not answers.** Rewrote Problem Framer Step 3 and Strategy Coach issue-tree guidance. Hypotheses now open investigations at the same level of abstraction as the problem instead of pre-baking conclusions. Added a red-flag check and a new Europe-market example.
- Fixed misleading "testable hypothesis" example that was actually a conclusion.

## 2026-04-17

- Added Claude Chat / Cowork guidance to README -- paste `strategy-coach.md` as a single file when the tool only accepts one upload.
- Split downloads into two zips: `strategyu-skills-claude.zip` (Claude Code directory layout) and `strategyu-skills-general.zip` (flat .md files for any tool).

## 2026-04-15

- Added five new AI-writing patterns across all six skills: forced metaphors, awkward verb-noun pairings, nominalization, anthropomorphizing, fake precision.
- Tightened slide rules: never use pie charts, no takeaway boxes at the bottom of a slide, insights always lead as the title.
- Default to asking the user before adding section dividers; skip dividers entirely on decks under 15 slides.

## 2026-04-10

- Initial release: six skills (Problem Framer, Structure & Synthesize, Strategy Communicator, Strategy Writing, Strategy Slides, Strategy Coach) plus visual guide and presentation template styles.
