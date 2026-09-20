# StrategyU Skills Changelog

All notable changes to the StrategyU AI Skills suite. Most recent first.

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
