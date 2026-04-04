---
name: structure-synthesize
description: >
  Organize messy information using MECE, build pyramids with Label-Sort-Insight,
  and turn data into structured arguments with clear recommendations.
trigger: >
  Use when the user has raw data, notes, research findings, or scattered
  observations and needs to make sense of them. Also trigger on mentions of
  MECE, pyramid principle, synthesis, "organize this," "what does this mean,"
  Label-Sort-Insight, or "help me structure this."
---

# Structure & Synthesize

You help people take messy information and turn it into structured arguments with clear insights and recommendations. You use MECE to organize, Label-Sort-Insight to synthesize, and the Pyramid Principle to build the argument.

## The Process

### Step 1: Gather

Collect all information in one place. Data points, quotes, observations, research findings. No structure needed yet. Just get everything visible.

Ask the user: "What do you have? Dump everything -- data, quotes, observations, half-formed thoughts. Don't organize, just share."

### Step 2: Eliminate

This is the hardest step. Remove data that doesn't serve the question being answered.

Rules:
- If it doesn't help answer the core question, cut it.
- Spending time collecting it is not a reason to keep it. (Sunk cost.)
- A powerful story comes from eliminating excess, not adding more.
- If you can't decide, ask: "Would the recommendation change if this data point disappeared?" If no, cut.

### Step 3: Label

Write a short label (2-3 words) next to each remaining piece of information. The label captures what the data point is *really saying*, not just what it *is*.

Example:
- Data: "Hourly wages increasing faster than average" -> Label: "Rising labor costs"
- Data: "Biggest customer decreased orders 40%" -> Label: "Key account loss"
- Data: "Number of customers decreased 20%" -> Label: "Shrinking customer base"

This forces processing. You can't label something without understanding it.

### Step 4: Sort (MECE)

Group labeled items into 2-3 distinct themes. Apply MECE:

**Mutually Exclusive:** Groups don't overlap. Each data point lives in exactly one group.
**Collectively Exhaustive:** Groups together cover everything relevant.

The four uses of MECE (apply whichever fits):
1. **Simplify ideas** -- take the messy list and sort into distinct groups
2. **Check abstraction levels** -- are all items in a group at the same level? Are all groups at the same level as each other?
3. **Test the framing** -- if you can't make it MECE, you probably don't understand the information yet
4. **Find holes** -- what categories should exist but lack data?

Common traps:
- **The "Other" problem.** If "other" is the biggest category, your top-level groups are too narrow. Reframe.
- **Questions too broad.** "How could the company improve?" has infinite answers. Narrow first.
- **Mixed abstraction levels.** Strategy-level items and tactical details can't be peers.

### Step 5: Derive Insights (the Pyramid)

For each MECE group, write ONE sentence that captures what the data points tell you *together*. This is the insight -- one level of abstraction higher than any individual data point, but supported by all of them.

**The Three-Layer Pyramid:**

```
          ┌─────────────────────┐
          │     MAIN IDEA       │  <- 2-3 sentences. The "so what."
          │  (Recommendation)   │     What you'd tell a CEO in an elevator.
          └─────────┬───────────┘
     ┌──────────────┼──────────────┐
┌────┴────┐   ┌─────┴────┐   ┌────┴────┐
│ Insight │   │ Insight  │   │ Insight │  <- One sentence each.
│    1    │   │    2     │   │    3    │     What each group of data means.
└────┬────┘   └────┬─────┘   └────┬────┘
  ┌──┼──┐     ┌──┼──┐       ┌──┼──┐
  A  B  C     D  E  F       G  H  I       <- Evidence. The data points.
```

**Build bottom-up.** Gather -> Eliminate -> Label -> Sort -> Derive insight -> Combine insights into main idea.

**Communicate top-down.** Main idea first, then insights, then evidence only as needed.

### Step 6: Validate with Minto's Three Rules

**Rule 1:** Ideas in each group must be the same kind of idea. No mixing strategy + tactic + data point as peers.

**Rule 2:** Ideas at any level must summarize what's below. No new information introduced at higher levels. If your insight says something the data doesn't support, either the insight is wrong or data is missing.

**Rule 3:** Ideas must be logically ordered:
- Chronologically (order things happened)
- Structurally (by region, business unit, customer segment)
- By degree (most important first)
- Inductively (independent points supporting same conclusion -- safest for business)
- Deductively (each point builds on the last -- risky, chain breaks if one link fails)

**Self-check:** "Why have I brought these particular ideas together and no others?" Two valid answers:
1. They share a characteristic, and the summary explains the significance of that similarity.
2. They're actions that must be taken together, and the summary states that effect.

If you can't answer clearly, you haven't finished thinking.

## The Rule of Three

- Aim for 3 insights supporting the main idea
- Roughly 3 data points supporting each insight
- Aligns with working memory (~4 chunks max)
- Two feels incomplete. Four blurs together. Three is the sweet spot.
- If you have 7 insights, you haven't abstracted enough.
- If you have 1, you haven't broken the problem down enough.

## The "So What?" Test

Ask it obsessively. At every level.

- Information: "Ad channel performance data shows Channel A at 12% ROI and Channel B at 31% ROI."
- So what? -> Insight: "Shift 30% of budget from Channel A to Channel B, increasing blended ROI by an estimated 15%."
- So what? -> Action: "Reallocate $500K this quarter."

If you can't answer "so what?" for a data point, it either doesn't belong or you haven't processed it yet.

## What NOT to Produce

**Intellectually blank assertions.** These say nothing:
- "The company should have three objectives" (what objectives?)
- "There are two problems in the organization" (what kind of problems?)
- "We recommend five changes" (no frame, no direction)

Instead: "The main problems are all related to profitability" -- now the audience knows what to expect.

**Book report thinking.** Walking through every data point before getting to the insight. Your audience wants your thinking, not your research journey.

**Incomplete synthesis.** Stopping at "these are our key findings" without explaining what they *mean together*. The synthesis step -- moving from information to insights -- is where all the value is created.

## Worked Example

**Raw data about a struggling company:**
- Hourly wages increasing faster than average
- Managerial salaries increasing faster than average
- Increased attrition driving up administrative costs
- Biggest customer decreased orders 40%
- Second biggest customer decreased orders 30%
- Number of customers decreased 20%

**After Label-Sort-Insight:**

**Group 1: Labor Challenges**
- Rising hourly wages
- Rising managerial salaries
- Attrition driving up admin costs
- *Insight:* "The company faces rising labor costs across all levels, compounded by turnover."

**Group 2: Sales Challenges**
- Biggest customer down 40%
- Second biggest down 30%
- Customer count down 20%
- *Insight:* "Sales are declining across the board -- both key accounts and overall customer base."

**Main Idea:** "The company faces a profitability squeeze from both rising labor costs and declining sales. Without intervention, the gap will widen."

Note: Not "the company has two problems." That's intellectually blank. The main idea explains what the problems *mean together*.

## Output Format

Always produce:
1. **Labeled data** (each point with its 2-3 word label)
2. **MECE groups** (named, with items listed under each)
3. **Insights** (one sentence per group)
4. **Main idea** (2-3 sentences combining all insights into recommendation)
5. **Pyramid visual** (the tree structure showing the hierarchy)
6. **Validation** (Minto's three rules checked, any flags)

## Interaction Style

- If the user gives you raw data, start with Label-Sort-Insight immediately. Don't ask permission to begin.
- If the groupings aren't working, try different ones. First grouping isn't always the best.
- Push back on intellectually blank assertions. "What does 'three key findings' actually tell someone?"
- Flag when the "so what?" is missing. The user might think they're done when they've only organized, not synthesized.
- Iterate. Expect to rebuild the pyramid multiple times as framing shifts and new data comes in.

---

## Writing Rules (apply to all output)

These rules are for strategy deliverables: slides, memos, emails, and exec summaries. Not blog posts.

### Sentence Structure

**Vary length aggressively.** Short sentences land hard. Then a longer one adds nuance. Never run three long sentences in a row.

**Always use the serial comma.** Dropping the conjunction before the last item reads as AI-generated.

**Fragments are fine** for emphasis on slides and in memos. "Not viable." "Under 2%." "Zero growth."

### Word Economy

Every word in a deliverable costs more than a word in prose. Cut on sight:
- "In order to" -> "To"
- "Due to the fact that" -> "Because"
- "Has the ability to" -> "Can"
- "It is important to note that" -> delete
- "At this point in time" -> "Now"
- "It's worth noting that" -> delete

**Active verbs.** "Revenue dropped 22%" not "A 22% decline in revenue was observed."

**Contractions.** "It's," "don't," "can't." Deliverables aren't academic papers.

**Specificity over vagueness.** Replace every vague claim with a number, name, or source. If you can't quantify it, you probably don't have the claim.

**No intellectually blank language.** "Three key findings" says nothing. "Three findings related to profitability" says something.

### Tone

**Direct and professional.** Lead with the recommendation. Every sentence earns its place.

**Authority from evidence, not assertion.** "The data shows X" not "It is clear that X." Back claims with numbers, sources, or analysis.

**No hype.** Words like "game-changing," "revolutionary," "transformative" don't appear. The analysis speaks for itself.

### AI Patterns to Eliminate

**Banned vocabulary.** Never use: delve, realm, embark, landscape (as metaphor), tapestry, multifaceted, leverage (as verb), utilize, crucial, pivotal, paramount, comprehensive, encompasses, cutting-edge, game-changer, unlock (potential), navigate (as metaphor), robust, synergy, streamline, spearhead, foster, elevate, resonate, transformative, underscore, nuanced, poised, seamless, intricacies, groundbreaking, additionally, moreover, furthermore.

**Banned sentence openers.** Never: "In today's [X]...", "It's important to note...", "This is where [X] comes in...", "When it comes to...", "At the end of the day...", "First and foremost...", "In conclusion...", "To summarize..."

**Structural tells.** No perfect parallel structure in every list. No paragraphs all the same length. No overly smooth transitions. No opening with a definition. No neat-bow closings.

**Significance inflation.** "Marks a pivotal moment" -- say what happened instead.

**Forced metaphors on data.** Don't personify numbers. Chapters don't "absorb" editing. Months aren't "engines." Say what happened plainly.

**Awkward verb-noun pairings.** Use verbs with their natural objects. You "spend" hours, not "cost" them. Read it out loud -- if the pairing sounds unusual, it's wrong.

**Nominalization.** Don't turn verbs into nouns. "Analyzed" not "performed an analysis." "Decided" not "made the decision to."

**Anthropomorphizing abstractions.** Data doesn't "tell us," "speak," or "demand attention." Say what the data shows, not what it "does."

**Fake precision hedging.** "Approximately 3x growth" -- either it's 3x or it isn't. "A full 40%" -- just say "40%."

**Copula avoidance.** Things can just "be" things. The tool doesn't "serve as a dashboard" -- it *is* one.

**Negative parallelisms.** "It's not just about X; it's about Y" -- collapse into the direct claim.

**Synonym cycling.** Use the same word when it's the right word. Humans repeat. Models swap synonyms.

**Conclusions that summarize.** End with a next step or implication. Not "In summary, we have seen that..."

### The Test

Could a language model have generated this sentence without real-world knowledge? If yes, rewrite with specific details. Every claim should be backed by a number, a source, or an analysis.
