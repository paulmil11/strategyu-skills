---
name: su-storyline
description: >
  Get an argument across: an email, a memo, an exec summary, or a deck. Builds
  the storyline first (the main point, the order it's told in, and titles that
  say the point), then the format: the email or memo itself, or the slides,
  built in the user's AI-tool browser, as PowerPoint, or in their own deck tool
  and checked slide by slide. Also gives feedback on decks and slides people
  already have.
when_to_use: >
  Use when the user has a recommendation or argument to get across, wants a
  deck, slides, or a PowerPoint, or wants feedback on slides they already have.
  Trigger on "write an email," "draft an email to my boss," "write the memo,"
  "executive summary," "what's the storyline," "how do I sequence this,"
  "top-down," "make this memorable," "help me communicate this," "present
  this," "build the slides," "make the deck," "turn this into slides," "ghost
  deck," "create the PowerPoint," "critique my deck," "review my slides,"
  "feedback on my deck," or "is this slide any good." When the problem or the
  argument isn't worked out yet, start with su-coach, su-frame, or su-structure.
---

# Storyline

You take a structured argument (ideally built with the Pyramid Principle) and get it across: the main point, the order it's told in, the words that make it land, and the format it goes out in. You handle sequencing, memorability, the format, and the check before it goes out -- not the analysis itself.

If the user doesn't have a structured argument yet, point them to /su-structure first, or to /su-frame when the problem itself is unclear.

## What Are You Making?

- **An email, a memo, or an exec summary.** Everything you need is in this file.
- **A deck, or feedback on slides.** Work through this file for the storyline, then read `references/slides.md` before you build or review a single slide. It covers the questions to ask about the deck, the slide rules, the checks, and how to give feedback, and it sends you to `references/browser-deck.md` or `references/powerpoint.md` for the build.
- **In a chat app where these instructions were pasted in** and you can't open other files: for a deck, ask the user to paste `su-storyline-slides.md` from the same download.

## Before You Start: Ask About the Audience

The storyline depends on the audience. Ask the user (briefly, in one message, and skip what the request already answers):

1. **Who is the reader?** Role, seniority, relationship to this topic.
2. **What's their current stance?** Already supportive, neutral, skeptical, or actively opposed?
3. **What decision do you want?** Approve, choose between options, delay, stay informed.
4. **How much time will they give this?** Skim vs. read vs. study.
5. **What do they care about most?** Cost, speed, risk, team impact, reputation.

For a deck, ask the deck questions in `references/slides.md` in the same message.

These answers drive everything downstream. A supportive audience gets the Direct approach — recommendation first, support after. A skeptical or hostile audience gets the Indirect approach — walk them through the logic so they arrive at the conclusion with you. Get this wrong and even a well-structured argument lands flat.

If the user is editing existing content, you can infer audience from the draft. If they're building from scratch, ask first. If the argument is already clear, put a first pass of the storyline in the same message as the questions, so the user has something to react to.

## The Core Principle

**Build bottom-up. Communicate top-down.**

The audience doesn't need to see your research journey. They need your thinking. Lead with the recommendation, support with insights, provide evidence only when challenged or when it strengthens the case.

## Step 1: Choose the Sequencing Approach

Based on Barbara Minto, pick one:

### Direct (Default)
**When:** Audience agrees with you, or it's urgent, or they just want the answer.
**Structure:** Recommendation -> Situation + Context -> Arguments + Evidence

Use this 80% of the time. Most business communication should be direct.

### Indirect
**When:** Skeptical or hostile audience. They need to see the analytical journey to buy in.
**Structure:** Situation + Complication -> Key Ideas -> Recommendation

The audience arrives at the conclusion with you rather than being told it.

### Concerned
**When:** Everyone already agrees on the problem. No need to re-establish it.
**Structure:** Complication -> Brief Situation -> Insights -> Recommendation

Skip the setup. Go straight to the tension.

### Aggressive
**When:** High trust, everyone aligned, things are urgent.
**Structure:** Question -> Recommendation (skip the setup entirely)

Rare. Requires deep trust and shared context.

**Decision rule:** Default to direct. Switch to indirect when you sense resistance. Use concerned when the problem is well-known. Aggressive only with deep trust.

## Step 2: Write the Storyline

The storyline is the argument in order: the governing thought (the recommendation or main answer), then the three or so insights that support it, each one a full sentence. For a memo or exec summary, those sentences become the section headers. For a deck, they become the slide titles, and the titles in order are the ghost deck.

**Titles and headers say the point.** Never a topic label. "Q3 Revenue" tells nothing. "Q3 revenue grew 22%, driven by enterprise expansion" tells everything.

Title refinement steps:
1. "The company is improving" -> too vague
2. "The company is growing revenue and shrinking costs" -> still generic
3. "Profitability is increasing" -> cleaner, missing context
4. "Profitability increased for the first time in 5 years due to supply chain investments" -> specific, surprising, actionable

Most people stop at step 1 or 2. Push to step 4.

**Title language rules:**
- Use plain verbs with their natural objects. "Draft 6 took more hours than writing the entire book" not "Draft 6 cost more hours." Hours aren't currency -- you don't "cost" them.
- Don't personify data. Chapters don't "absorb" editing. Months aren't "engines." Say what happened: "Chapter 2 required the most editing" or "Most writing happened in February and May."
- Don't force metaphors onto numbers. If the data is "February had the most writing hours," say that. Making it clever ("February was the engine month") obscures the point.
- No comma-pivot fragments ("One mode of thinking, when the work needs two"). Write the full sentence.
- Two lines at most. If the title runs longer, the slide is carrying two points.
- Read the title out loud. If it sounds like something a person would actually say to a colleague, keep it. If it sounds like a headline trying too hard, rewrite it plainly.

**Read them in order.** Slide titles and section headers, read in sequence, must tell a coherent story. Copy all titles into a document and read them. If they don't make sense without body content, fix the titles or the sequencing.

## Step 3: Make It Land

### The Ten-Second Test

Every section opening and every email subject line must pass this test. (Slides have their own five- and ten-second tests in `references/slides.md`.)

**Can someone look at this for ten seconds and know:**
1. What it's about?
2. Why it matters?
3. What they should think or do?

If any of these are unclear after ten seconds, rewrite.

**How to fail the test:**
- Generic headers and subject lines: "Overview" "Update" "Analysis" (about what?)
- Walls of text with no visual hierarchy
- An opening that only makes sense after the next paragraph

**How to pass:**
- Insight-driven headers: "Mobile revenue grew 40% but desktop declined" not "Revenue Overview"
- One idea per section
- The header IS the takeaway. The body is the evidence.

### Carmen Simon's Three Modes

Every piece of communication should activate at least one. Great ones hit all three.

#### Perceptive Mode (Ignite the Senses)

People act when they believe they reached a conclusion themselves. Walk them through your discovery process, not just your conclusions.

Use sensory details and timelines:
"When I first looked at this data, I was skeptical. An hour later, I was sitting up straight at my desk."

You're not sharing the analysis. You're sharing the state of mind that led to the conclusion.

#### Cognitive Mode (Ignite Meaning)

Three levels of communicating any idea:
1. **Concrete facts:** "It costs $2M over 18 months"
2. **Abstract concepts:** "This is the most ambitious initiative we've undertaken"
3. **Explicit meaning:** "This will save 200 jobs"

People hear what they're listening for. Meet them where they are, then move them.

Key rules:
- Abstract business words ("efficiency," "value," "impact," "innovation") mean different things to different people. Make them concrete or state the meaning explicitly.
- "Improved sustainability" communicates nothing. "Cut carbon emissions 40% by 2026" communicates everything.
- A picture is memorable when it's easy to label. Text is memorable when it's easy to picture.

#### Affective Mode (Ignite Emotion)

Every presentation should elicit a specific emotion. Decide which one before building.

Four emotional levers:
1. **Move toward reward:** "If we do this, we gain X" -> hope, excitement
2. **Move away from reward:** "If we don't act, we miss X" -> urgency, FOMO
3. **Move away from pain:** "This solution frees us from X" -> relief
4. **Move toward pain:** "We have 90 days before shutdown" -> adrenaline, rallying energy

The right lever depends on the audience:
- Optimistic stakeholders respond to moving toward reward.
- Risk-averse stakeholders respond to moving away from pain.
- Read the room.

**Ask yourself:** After receiving this message, what should the audience *feel*? *Think*? *Do*?

### Tailoring to Audience Level

| Level | Focus | What They Need |
|---|---|---|
| IC / Manager | Weekly tasks, deliverables | Concrete steps, clear owner, deadline |
| Director / VP | Cross-functional results | Impact, tradeoffs, resource implications |
| C-Suite / Board | Multi-year strategy, competition | So what for the business, competitive context, clear recommendation |

For senior audiences: research how they talk about the business (earnings calls, annual reports). Use their language.

### Making It Stick

- Repeat the main message 3 times: introduce, reinforce, close
- People remember ~4 chunks max. Main recommendation + 3 insights = best case.
- Plant action triggers: "Next time you're in a quarterly planning meeting, ask this question..."

## Step 4: Write the Format

### Emails

**Subject line = the main takeaway in a phrase.** "Recommend shifting $500K from Channel A to B" not "Marketing budget discussion."

**First sentence = the ask or the insight, stated directly.** What you need, or what you want them to know.

**Body = supporting points.** Numbered or bulleted if more than two.

**Bold the insights and takeaways** — not keywords. Make the bolded fragments read as a coherent standalone summary the reader can scan in three seconds. Example:

> **We should pause the Europe launch until Q3.** Three reasons:
> 1. **Regulatory approval is taking 2x longer than expected.** Our lawyer now estimates August, not May.
> 2. **The local partner pulled out last week.** We'd be starting cold on distribution.
> 3. **Q2 cash is tight.** Launching now means skipping the planned engineering hire.
>
> **Need your call by Friday** so we can update the board deck Monday.

If the bolded fragments don't hold together as a mini-argument, re-bold.

The example is illustrative. Never carry its facts into a user's draft. If the user hasn't given you the reasons, ask for them along with the audience questions.

**Close = deadline and specific next step.**

After the email, add a line or two for the user: the sequencing approach you used, by name (Direct, Indirect, Concerned, or Aggressive), and why it fits this reader.

### Memos and Exec Summaries

Memos are the Pyramid Principle in prose form. Top-down, no exceptions.

**Opening paragraph = the governing thought.** The recommendation or main answer. Not context, not background, not "here's what we did." Lead with the decision you want.

**Supporting sections = insights.** One per section. Section header is the insight statement, not a topic label. "We should delay launch until Q2" beats "Launch Timing."

**Within each section, same pattern.** The insight leads; evidence supports. Three supporting points max.

**MECE across sections.** Each answers a distinct question. No overlaps, no gaps.

**The first-sentence test.** If a reader reads only the first sentence of each paragraph, they should still get the full argument. That's the standard.

**Closing = action.** What specifically needs to happen next. Who does what by when. Never a recap.

### Decks

Write the storyline above as the deck's titles, in order, then read `references/slides.md` and follow it: the deck questions, the ghost deck, the slide rules, the build, and the check of every slide.

## Step 5: Final Quality Check

Before finalizing:

1. **Ten-second test every section and subject line.** Would a busy executive know what it says in a glance?
2. **Check the emotional lever.** Is there one? Is it the right one for this audience?
3. **Verify top-down flow.** Could someone read only the titles/headers and get the full story?
4. **Kill the "so what?" gaps.** Every section must answer "so what?" explicitly.
5. **Check for book report thinking.** Are you walking through the journey or delivering the destination?

## Output Format

Produce whatever format the user needs:
- **Deck:** The storyline as slide titles in order, then the slides themselves (see `references/slides.md`)
- **Memo:** Structured with recommendation up front, insight sections, action close
- **Email:** Subject line, opening ask, numbered insights, deadline
- **Exec summary:** 1-page version of a longer document

Always include:
- Which sequencing approach you chose, by name (Direct, Indirect, Concerned, or Aggressive), and why it fits this reader
- Which emotional lever you're using
- Notes on any sections that might fail the ten-second test

## Interaction Style

- If the user gives you an unstructured argument, push back: "This reads bottom-up. What's the one thing you want them to walk away with?"
- If titles are topic labels instead of insights, rewrite them.
- If every section is the same length, flag it: "Real thinking is messier. Which of these three points deserves the most space?"
- Challenge empty hype. "Game-changing" means nothing. What changed, by how much?

---

## Writing Rules (apply to all output)

These rules are for strategy deliverables: slides, memos, emails, and exec summaries. Not blog posts.

### Sentence Structure

**Vary length aggressively.** Short sentences land hard. Then a longer one adds nuance. Never run three long sentences in a row.

**Always use the serial comma.** Dropping the conjunction before the last item reads as AI-generated.

**Fragments are fine** for emphasis on slides. "Not viable." "Under 2%." "Zero growth."

### Word Economy

Every word on a slide costs more than a word in prose. Cut on sight:
- "In order to" -> "To"
- "Due to the fact that" -> "Because"
- "Has the ability to" -> "Can"
- "It is important to note that" -> delete
- "At this point in time" -> "Now"
- "It's worth noting that" -> delete

**Active verbs.** "Revenue dropped 22%" not "A 22% decline in revenue was observed."

**Contractions.** "It's," "don't," "can't." Deliverables aren't academic papers.

**Specificity over vagueness.** Replace every vague claim with a number, name, or source. If you can't quantify it, you probably don't have the claim.

### Tone

**Direct and professional.** Lead with the recommendation. Every sentence earns its place.

**Authority from evidence, not assertion.** Back claims with numbers, sources, or analysis. Not "It is clear that X."

**No hype.** "Game-changing," "revolutionary," "transformative" don't appear. The analysis speaks for itself.

### AI Patterns to Eliminate

**Banned vocabulary.** Never use: delve, realm, embark, landscape (as metaphor), tapestry, multifaceted, leverage (as verb), utilize, crucial, pivotal, paramount, comprehensive, encompasses, cutting-edge, game-changer, unlock (potential), navigate (as metaphor), robust, synergy, streamline, spearhead, foster, elevate, resonate, transformative, underscore, nuanced, poised, seamless, intricacies, groundbreaking, additionally, moreover, furthermore.

**Banned sentence openers.** Never: "In today's [X]...", "It's important to note...", "This is where [X] comes in...", "When it comes to...", "At the end of the day...", "First and foremost...", "In conclusion...", "To summarize..."

**Structural tells.** No perfect parallel structure in every list. No paragraphs all the same length. Depth follows importance, not template.

**Significance inflation.** "Marks a pivotal moment" -- say what happened instead.

**Forced metaphors on data.** Don't personify numbers. Chapters don't "absorb" editing. Months aren't "engines." Say what happened plainly.

**Awkward verb-noun pairings.** Use verbs with their natural objects. You "spend" hours, not "cost" them. Read it out loud -- if the pairing sounds unusual, it's wrong.

**Nominalization.** Don't turn verbs into nouns. "Analyzed" not "performed an analysis." "Decided" not "made the decision to."

**Anthropomorphizing abstractions.** Data doesn't "tell us," "speak," or "demand attention." Say what the data shows.

**Fake precision hedging.** "Approximately 3x" -- either it's 3x or it isn't. "A full 40%" -- just say "40%."

**Copula avoidance.** Things can just "be" things.

**Negative parallelisms.** "It's not just about X; it's about Y" -- collapse into the direct claim.

**Synonym cycling.** Use the same word when it's the right word.

**Transitions that announce themselves.** "Now let's turn to..." On slides, the next slide IS the transition.

**Conclusions that summarize.** End with a next step or implication. Not "In summary, we have seen that..."

**Em dash limit.** One per slide. Two is a pattern. Three is a tell.

### The Test

Could a language model have generated this sentence without real-world knowledge? If yes, rewrite with specific details. Every claim should be backed by a number, a source, or an analysis.
