# Storyline: Slides

The slide part of `su-storyline`, in one file for chat apps that can't open separate files. It holds three reference files in order: `slides.md`, then `browser-deck.md`, then `powerpoint.md`. Where the text points to `references/slides.md`, `references/browser-deck.md`, or `references/powerpoint.md`, those are the sections below.

---

# Slides

Read this when the user is making a deck or wants feedback on slides. The storyline (the audience questions, the sequencing, the title rules, and memorability) is in `SKILL.md`. This file covers the slides themselves.

## Before Building a Deck

Ask these with the audience questions in `SKILL.md`, all in one message, and skip any the request or the user's setup already answers ("make me a PowerPoint" answers the second):

1. **Will you present it, send it to be read, or both?**
2. **Where does the deck need to end up?** PowerPoint, Google Slides, Keynote, Canva or another slide app, a company template, or just a PDF.
3. **Do you want to build and review it here, in your AI tool's browser?** Offer this only when the tool can create files and show a web page (the Claude desktop app, Claude Code, Codex, Cursor). If you can't tell what the tool can do, ask which app they're using.

Their answers pick the route (see "Pick the Output" below):

| They say | Route |
|---|---|
| "Just a PDF", "whatever's quickest", or yes to building in the browser | The browser route |
| PowerPoint, Keynote, or a company template | The PowerPoint route (a .pptx opens in Keynote too) |
| Google Slides | The PowerPoint route, then upload the .pptx to Google Drive and open it with Google Slides. If a PDF is enough, the browser route is quicker |
| Canva, Gamma, or another slide app | The outline, written so each slide's title and body can be pasted straight in (most of these apps can also import a .pptx) |
| A deck tool of their own, or a skill or instructions for one | Build there, with this skill for the thinking |

Then confirm you have:
1. **A structured argument** -- If the user has raw data or a vague topic, help them build a pyramid first (main idea + 3 insights + evidence). Use `/su-structure` or `/su-frame` if the thinking isn't done yet.
2. **How the deck will be used:**
   - **Presented** (in person or on a call) -- one idea per slide, large visuals, under 20 words per slide body. Every slide must pass the five-second test.
   - **Sent to read** (reading deck / deliverable) -- more text, each slide self-explanatory, can include detailed analysis. Every slide must pass the ten-second test.
   - **Presented, then sent** -- presentable slides, with the detail in the speaker notes or an appendix.
   - **Proposal / update** -- brief, status-focused.

## Pick the Output

- **Outline only.** When the user asks for an outline, a ghost deck, or "no file", or when your tool can't create files, give the slide-by-slide outline in text and stop there: for each slide, its number, its action title, and what the body shows to prove it. The user can build it in PowerPoint or Google Slides from that.
- **The user's own deck tool.** If the user has a deck tool of their own, or a skill or instructions for one (a slide app, a company's template system), build the deck there and use this skill for the thinking: the ghost deck, the action titles, and the checks.
- **A deck in the browser (the usual choice otherwise).** When you can create files and the user can see a web page: the Claude desktop app, Claude Code, Codex, Cursor. You write the deck as one HTML file, open it in the tool's built-in browser (or the user's own browser), the user looks at real slides and tells you what to change, and you change them in seconds. It ends as a PDF. See `references/browser-deck.md`.
- **PowerPoint (.pptx).** When the deck has to be an editable PowerPoint file: a colleague will keep editing it, it must go into a company template, or the user asks for one. A .pptx opens in PowerPoint, Keynote, and Google Slides. See `references/powerpoint.md`.

The questions in "Before Building a Deck" usually settle this. If they didn't, ask: "Do you need an editable PowerPoint file at the end, or is a PDF enough?" A PDF is enough: use the browser. An editable file: use PowerPoint.

The method is the same on every route. Only the file at the end changes.

## Step 1: Ghost Deck First

Write every action title, in order, before you write any slide body. This is the ghost deck. If you wrote the storyline with `SKILL.md`, or the user brought their own, it is the ghost deck: check it against the title rules and start from it.

1. Read the titles as one paragraph. If the paragraph doesn't make the argument, fix the titles or the order now. It is the cheapest point in the whole process to fix the story.
2. Check each title against the title rules in `SKILL.md`: a full sentence, a takeaway rather than a label, two lines at most.
3. Note what each body must show to prove its title (the chart, the table, the three insights). That note becomes the slide.

Show the user the ghost deck when the argument is new or still moving. When they have handed you a settled argument and asked for the deck, go straight on and build: `references/browser-deck.md` or `references/powerpoint.md`, or the user's own deck tool.

---

## Slide Design Principles

### Flow on Slides

**The title is the takeaway; the body proves it.** Never put the takeaway at the bottom of a slide in a "key takeaway" box -- the insight leads the page, it doesn't conclude it. No "takeaway boxes," "key insight" callouts, or summary strips at the bottom.

**Overall Flow:** The deck maps to your pyramid. For longer decks (20+ slides) with distinct argument sections, use section dividers:
1. Title Slide
2. Executive Summary (main recommendation + 3 insights)
3. Section Divider - Insight 1
4. 2-4 slides proving Insight 1
5. Section Divider - Insight 2
6. 2-4 slides proving Insight 2
7. Section Divider - Insight 3
8. 2-4 slides proving Insight 3
9. Recommendation / Next Steps
10. Appendix

For shorter decks (under 15 slides), section dividers add clutter. Ask the user: "This is a shorter deck -- do you want section dividers, or should the slides flow directly?" Default to no dividers for short informational decks.

### The Five-Second and Ten-Second Tests

**Five seconds, for presented slides.** Look at the slide for five seconds. Did the one point come through? Better still, show it to someone who hasn't seen it and ask what it says.

**Ten seconds, for slides people read.** Show any slide to someone for 10 seconds. Can they take it in at a glance? One main point, a readable hierarchy, a chart or table whose shape is legible without study.

It fails on walls of text, a dense table where the number that matters is buried among many, a slide carrying several unrelated ideas, or anything that needs you to narrate it before it makes sense.

**These tests are about legibility, not intent.** A slide with three tidy boxes reading Innovation, Excellence, Growth passes the ten-second test and fails the "so what?" test. Keep the two separate when you give feedback. Telling someone their slide is both unreadable and meaningless when it is only the second is feedback they will discount.

Use the "so what?" test for the other question: does the slide tell the audience what to think?

### Charts & Data Visualization

Write the message the chart should convey before building it. The chart's only job is to prove the slide title.

Three default chart types (cover 80-90% of needs):
- **Bar charts:** Compare items at a point in time
- **Column charts:** Compare across categories or over time
- **Line charts:** Show trends over time

**Never use pie charts.** The human eye is bad at comparing areas and angles. A column chart always shows the same data more clearly. No exceptions.

Before finalizing any chart:
- Does the chart title match what the chart actually shows?
- Is the most important number the most visually prominent?
- Is there anything that doesn't support the title? (Cut it)
- If the title mentions a concept (e.g., "recession"), is it visually marked on the chart?

Use **illustrative charts** when data is uncertain. Label them "Illustrative" and add footnotes about assumptions.

---

## Slide Types and When to Use Them

### Title Slide
- Topic, presenter name, date
- Clean. No clutter.
- **Never rewrite a cover into a summary.** A cover slide does its job by naming the deck, the audience, and the date. It is exempt from the takeaway-title rule, as are section dividers and the appendix divider. When a deck is missing its executive summary, add one after the cover. The fix for a missing slide is a new slide, not an edit to the neighbour.

### Executive Summary
- Main recommendation + 3 key insights, each with 1 line of supporting evidence
- This is the most important slide. Busy executives may only read this one.
- Structure: Recommendation as title, 3 insights as bold labels with brief support

### Section Divider
- One insight statement as the title
- Optional 1-line subtitle adding context
- Signals a new section of the argument
- **When to use:** Only for longer decks (20+ slides) with 3+ distinct argument sections. For shorter decks or informational presentations, dividers waste slides and break flow. Ask the user before adding them.

### Content Slides (the majority)
- Title = takeaway (insight statement, not a label)
- Body = evidence proving the title
- One idea per slide. If you need "and also," you need another slide.
- A subtitle, if there is one, adds what the title doesn't say. It never restates the title, and it stays to one or two lines.
- Slide body options:
  - Bullet points with bold 2-4 word labels (Label-Sort-Insight style)
  - Chart or data visualization
  - Comparison table
  - Quote or callout
  - Process diagram

### Chart Slides
- Chart title = the takeaway ("Revenue doubled after premium tier launch" not "Monthly Revenue")
- Chart below proves the title
- Callout the most important number with color or size
- Annotate inflection points, milestones, or concepts named in the title
- Source and date in small text at bottom

### Stat Callout Slides
- One big number (60-72pt)
- Reframing label below (not just the metric name)
- "10x faster" beats "Completed in 2 days"
- Comparisons are more memorable than absolutes

### Card / Grid Slides
- **Don't default to generic white boxes.** A grid of identical white rounded cards, each holding a label and a line, is the stock AI look and it says nothing about how the items relate. Before reaching for cards, ask what the items have in common and draw that: stages along a process, points on a spectrum, a before and after, a chart, a map, a ladder. If the items are just a list, a plain list with strong lead words beats boxes.
- Use cards only when each item is a truly parallel unit and the grouping is the point. Even then, vary the weight (one dark or emphasized card, the rest lighter) instead of N identical white boxes.
- 2-4 cards in a grid layout
- Each card: bold label + 1-2 sentences
- Lead each card with the most important word
- Max 3 sentences per card. Two is better.

### Recommendation / Next Steps
- Specific actions, owners, and deadlines
- Not a summary. Add one final thought -- a provocation or call to action.
- "In summary, we have seen that..." is never the right closing.
- **The title is still a takeaway.** "Decision and next steps" is a label. "Approve by March 14 and we exit both leases before they renew" is a title. The last slide is the one she acts on; it earns a real title more than any other.

### Risk / Objection Slides
- **Count-only titles are intellectually blank.** "Three risks and how we cover them" tells the reader nothing -- which risks? Name the finding: "The real exposure is West Coast service, not warehouse capacity."
- State what the risk actually is in the title, then size it and say what covers it in the body.
- Same rule for any slide whose title starts with a number of things ("Four considerations," "Three options"). Say what they are or what they add up to.

### Appendix
- Detailed data, methodology, additional analysis
- Clearly labeled as appendix
- Exists for Q&A backup, not for the main presentation

## Layout Principles

### Visual Hierarchy
- Title is always the most prominent text element
- One focal point per slide (the thing the eye goes to first)
- White space is a feature, not wasted space
- Left-to-right, top-to-bottom reading flow for Western audiences

### Text Guidelines

**Live presentations:**
- Under 20 words per slide body
- Title + visual + maybe one supporting line
- 2-3 minutes per slide

**Reading decks:**
- More text is fine, but still structured
- Bold labels on every bullet point
- Each slide must stand alone (it will be forwarded without context)

### Guides

Four guidelines that make a deck look professional. They flag a slide for a second look; they don't forbid anything.
- **Margins.** Keep a band around the edge of every slide clear for the logo, the source line, and the page number. Text and figures stay inside it.
- **Titles.** Two lines at most. Cover, section, and closing slides are exempt.
- **Text size.** Nothing smaller than 12 px on a 1000 px-wide slide, which is about 12 pt on a widescreen PowerPoint slide. If it needs to be smaller to fit, it needs to move to the notes or the appendix.
- **Sizes per slide.** No more than four text sizes on one slide.

### Color
- Use a consistent, limited palette (3-4 colors max)
- One accent color for emphasis / key data
- Gray for de-emphasized or supporting information
- Never use color randomly -- every color choice should mean something

### Fonts
- One font family throughout
- Title: bold, larger
- Body: regular weight, consistent size
- Three font sizes per slide is plenty; four is the most (see Guides)

---

## Feedback on Slides

### Giving Feedback on a Deck

The user may hand you a .pptx, a PDF, screenshots, or slide text pasted into the chat. Ask who the deck is for and whether it will be presented or read, if you can't tell from the deck. Read the whole deck before saying anything about one slide.

Give the feedback in this order:
1. **The story.** List the titles in order, then say in two or three sentences what story they tell and what is missing or out of order. This is the horizontal flow check, and it is the feedback that matters most.
2. **The slides that need work.** Go slide by slide, but only where there is a problem: what's wrong (the title, vertical flow, the timed test, the chart, the density) and the fix. When the title is the problem, write the new title.
3. **The three changes that matter most**, in order. Changes to the argument, the order, or a missing slide come before fonts, colors, and alignment.

If the argument itself doesn't hold, say so first. Better slides won't rescue it, and that is the finding the user most needs.

Four rules before the patterns:

**Check every slide reference before you write it.** Before putting "slide 7" next to a figure, confirm that figure is on slide 7. Citing a number to the wrong slide is the fastest way to lose someone who knows their own deck, and it is the mistake a careless reviewer makes most often.

**Moving detail is not deleting it.** When a slide is too dense for the room, lead with the finding and send the detail to the appendix. A full P&L, a methodology page, or a detailed data cut earns its place behind the argument, especially for a financially focused audience or a deck that will be read without a presenter. Always say where displaced detail goes.

**A slide can be sound and still not belong.** "This does not hold up" and "this does not carry the argument" are different findings, and the presenter reacts differently to each. When the content is fine but off-argument, say so and send it to the appendix or to the meeting where it fits, rather than calling it a failure.

**Read the deck once more for contradictions between slides.** This is the finding people trust you for and the one reviewers most often miss, because each slide is defensible on its own. Look for a figure that appears twice with different values or bases, a slide promising something another slide withholds, a cause named on one slide that another slide's numbers contradict, and a title claiming a movement its own chart cannot show at that axis. A $0.4M decline on a 0-to-50 axis reads as flat whatever the digits say.

**Name slides plainly.** "Slide 3 is strong:" and "Slide 4 has three problems:" beat ranking slides against each other. Never describe one slide in terms of another ("the best thing here", "undoes that work"). State what is on the slide and what it does.

When reviewing a deck (yours or someone else's), check for these patterns:

1. **Title promises growth, chart shows no growth data.** Title and visual must tell the same story.
2. **Buzzwords with stock photos.** Remove images that don't directly illustrate the point.
3. **Pretty Slide Syndrome.** Looks polished but says nothing. Ask: "What does this tell me to think or do?"
4. **Concept in title not marked on chart.** If you mention "recession" or "inflection point," annotate it.
5. **Hypothetical data presented as real.** Frame it honestly. Use "illustrative" charts.
6. **Buzzwords masquerading as insight.** "Synergistic value creation" -> "We expect to lose $1.2B this year."

### The EVO Feedback Framework

- **Explanations:** Are there alternate interpretations? Could the audience read this differently?
- **Versions:** Could a different chart type, layout, or framing work better?
- **Opportunities:** What's missing? What insight is buried in the data?

Push toward structural feedback (challenging the argument) not cosmetic feedback (challenging the font).

---

## Quality Checks (Every Route)

Run these on the finished deck, whichever route built it.

**Structural:**
- [ ] Main message leads the deck, not buried at end
- [ ] Executive summary present and complete
- [ ] 3 key insights (or a compelling reason for different number)
- [ ] Every slide title is a takeaway, not a label
- [ ] Titles alone tell a coherent story (horizontal flow test)
- [ ] Five- or ten-second test passed on every slide (whichever fits how the deck will be used)
- [ ] One idea per slide
- [ ] All insights are MECE
- [ ] Chart titles match what charts show
- [ ] No pie charts (never -- use column charts instead)
- [ ] No undefined abstract terms
- [ ] Each slide stands alone (will be forwarded without context)
- [ ] Emotional register is intentional
- [ ] Key message repeated 3x across the deck
- [ ] Deck tailored to audience's level and language

**Visual:**
- [ ] Every slide rendered and looked at
- [ ] Guides pass: margins clear, titles two lines at most, nothing under 12 px (12 pt), four text sizes at most
- [ ] Consistent font sizes and weights throughout
- [ ] Consistent spacing and alignment
- [ ] Color used intentionally (accent for emphasis, gray for supporting)
- [ ] No orphaned text or awkward line breaks
- [ ] Stat callouts are large and prominent

**Writing:**
- [ ] No banned vocabulary words
- [ ] No significance inflation or false urgency
- [ ] Active verbs, contractions, specific numbers
- [ ] Every claim backed by evidence or a number

---

## Working With Existing Decks

When the user gives you a deck to fix:

1. Give the feedback first (see "Giving Feedback on a Deck"), and agree with the user what to change.
2. Then edit their file in place: keep their template, fonts, and layouts, and change only what you agreed. A .pptx stays a .pptx.
3. Render the slides you changed and look at them before you say it's done.

---

# The Browser Route

You build the deck as a web page and the user reviews it in a browser, the way a consultant reviews a printout: slide by slide, saying what to change. These are rough instructions. Adapt them to the tool you're in. The steps follow Step 1 (the ghost deck) in `references/slides.md`, and the checks in Step 5 are the ones `references/slides.md` describes.

## Step 2: Write the Deck as One HTML File

Keep the whole deck in one file, `deck.html`, in a folder of its own. The file needs nothing else: no build step, no packages, no chart library. That keeps it easy to edit, open, and send.

- **One slide per `<section class="slide">`**, at a fixed 16:9 size (1280 x 720 px), stacked down the page with its number. Stacked slides are the easiest to review, and they print one per page. Add a present mode (arrow keys, full screen) only if the user asks.
- **The action title is the slide's `<h2>`.** The body below proves it. The source line and the slide number sit in the bottom margin.
- **The style lives in CSS variables** at the top of the file: colors, fonts, sizes. Pick a style from "Pick the Style" in `references/powerpoint.md` (or use the user's brand colors) and set it there once, so restyling the deck is one edit. Load fonts from Google Fonts, with a safe fallback (Helvetica, Arial) in case the user is offline.
- **Charts are inline SVG** drawn from the real numbers: columns and bars from zero, values labelled on the marks, the mark that proves the title in the accent color and the rest gray. Never a pie.
- **Speaker notes** go in an `<aside class="notes">` on each slide, hidden on screen and in print. Put the source for every number there, and mark text you drafted for the user so they can replace it.
- **Print styles** make each slide one PDF page at the slide's own size, with backgrounds on.

A starting point, to adapt:

```html
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Deck title</title>
<style>
  :root { --ink: #1A1A2E; --accent: #E63946; --gray: #C9C4C4; --muted: #6B6B6B; --paper: #FFFFFF;
          --font: 'Helvetica Neue', Arial, sans-serif; }
  body { margin: 0; padding: 24px 0; background: #E6E6E6; font-family: var(--font); color: var(--ink); }
  .slide { width: 1280px; height: 720px; box-sizing: border-box; margin: 0 auto 24px; padding: 56px 72px 72px;
           position: relative; display: flex; flex-direction: column; overflow: hidden;
           background: var(--paper); box-shadow: 0 2px 12px rgba(0,0,0,.12); }
  .slide h2 { font-size: 40px; line-height: 1.15; margin: 0 0 32px; }
  .slide .body { flex: 1; min-height: 0; font-size: 24px; line-height: 1.4; }
  .slide .body svg { width: 100%; height: 100%; }
  .slide .source, .slide .num { position: absolute; bottom: 26px; font-size: 16px; color: var(--muted); }
  .slide .source { left: 72px; } .slide .num { right: 48px; }
  .notes { display: none; }
  @media print {
    @page { size: 1280px 720px; margin: 0; }
    body { padding: 0; background: none; zoom: 1 !important; }
    .slide { margin: 0; box-shadow: none; break-after: page; }
    * { -webkit-print-color-adjust: exact; print-color-adjust: exact; }
  }
</style>
</head>
<body>
<section class="slide">
  <h2>The action title: one plain sentence that says the point</h2>
  <div class="body">The evidence that proves the title.</div>
  <div class="source">Source: where the numbers came from</div>
  <div class="num">1</div>
  <aside class="notes">What the presenter says. Drafted by the AI: replace.</aside>
</section>
<script>
  // shrink the slides to fit the window (printing resets this)
  const fit = () => { if (innerWidth) document.body.style.zoom = Math.min(1, (innerWidth - 32) / 1280); };
  addEventListener('resize', fit); fit();
</script>
</body>
</html>
```

## Step 3: Open It in the Browser

- **A built-in browser** (the Claude desktop app's browser pane, Codex's in-app browser): open the deck there, so you and the user look at the same page. Built-in browsers often won't open a `file://` page, so serve the folder and open the address it gives:
  ```bash
  python3 -m http.server 8123      # run inside the deck's folder
  ```
  then open `http://localhost:8123/deck.html`. If the port is taken, pick another; never stop a server you didn't start. Use the tool's own way of running a local server if it has one, and stop the server when the deck is done.
- **No built-in browser** (Claude Code in a terminal, Cursor): open the file in the user's own browser (`open deck.html` on a Mac, `start deck.html` on Windows) and reload it after each change.
- **A chat app that previews HTML** (Claude.ai artifacts, ChatGPT canvas): show the file there. The user can't keep the file open between messages, so give them the final file to download.

## Step 4: Review Rounds

1. The user looks at the slides and says what to change, by slide number: "Slide 3: the title is too long", "Slide 5: swap the order of the steps".
2. You edit `deck.html`, reload the page, and look at what you changed before you say it's done.
3. Answer each point in one plain line ("Slide 3: cut the title to one line"). Ask when a comment is half-finished or could mean two things. Don't guess.

Want the user to fix wording right on the slide? Add `contenteditable` to the titles and bodies. Edits made in the browser live only in that open page and vanish on reload, so read them back before you reload: with your browser tools if you have them, or by asking the user to paste them. Then write them into the file.

## Step 5: Check Every Slide

Look at every slide, not just the code that made it: take a screenshot of each one in the browser, or print to PDF and look at the pages. A slide you haven't seen isn't done.

Two quick checks to run in the browser (the console, or your browser tool):

```js
// horizontal flow: the titles in order, to read as one paragraph
[...document.querySelectorAll('.slide h2')].map((h, i) => `${i + 1}. ${h.textContent}`).join('\n')
```

```js
// the slides that overflow, and titles over two lines
[...document.querySelectorAll('.slide')].flatMap((s, i) => {
  const h = s.querySelector('h2'), lines = h ? Math.round(h.offsetHeight / parseFloat(getComputedStyle(h).lineHeight)) : 0;
  return [s.scrollHeight > s.clientHeight + 1 && `Slide ${i + 1}: content overflows`, lines > 2 && `Slide ${i + 1}: title runs ${lines} lines`].filter(Boolean);
})
```

Then the rest of the checks, by eye:
1. **Horizontal flow.** Read the titles as one paragraph. Rewrite topic labels, long titles, and comma pivots.
2. **Vertical flow.** For each slide, say what it has to show to prove its title, then check that the body shows it.
3. **The timed test** for the deck's use (five seconds if presented, ten if sent to read), and "so what?" on every slide.
4. **The Guides.** Margins clear, titles two lines at most, nothing under 16 px on this 1280 px slide, no more than four text sizes on a slide.

## Step 6: Export a PDF

- **From the browser:** Print, then Save as PDF. Turn on "Background graphics", and turn off headers and footers.
- **From the command line**, with Chrome installed (on a Mac, Chrome is `"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"`):
  ```bash
  chrome --headless --no-pdf-header-footer --print-to-pdf=deck.pdf http://localhost:8123/deck.html
  ```

Check that the PDF has one slide per page, then give the user both files: `deck.html` to keep editing with you later, and the PDF to send. If they later need it in PowerPoint, rebuild it with `references/powerpoint.md` from the same ghost deck. Don't try to convert the HTML.

---

# The PowerPoint Route

The steps follow Step 1 (the ghost deck) in `references/slides.md`.

## Step 2: Pick the Style

### How Templates Work

The user can either:
1. **Use a built-in style** -- pick from the presets below
2. **Bring their own .pptx template** -- upload a branded template file with their slide master, colors, fonts, and logo

A template .pptx is just a normal PowerPoint file with the desired theme (colors, fonts, slide master, layouts, logo placement) and all slides deleted. python-pptx loads it as the starting point and all new slides inherit the brand.

### Asking the User

Before building, ask:

> **Style:** Do you have a branded .pptx template, or should I use a built-in style?
>
> If built-in: **Which style?**
> - **Editorial** -- DM Serif Display + DM Sans. Magazine feel, red/amber. Sophisticated.
> - **Boardroom** -- Playfair Display + Libre Franklin. Deep green, gold. Old money energy.
> - **Ink** -- Fraunces + Inter. Pure black and white. Literary, minimal.
> - **Midnight** -- Lora + Inter. Full dark mode, amber accents. Late-night strategy.
> - **Studio** -- Instrument Serif (italic) + Space Grotesk. Indigo gradient. Creative.
> - **Earth** -- Cormorant Garamond + DM Sans. Warm browns, terracotta. Grounded.
> - **Bold Corporate** -- Montserrat. Black/coral. High contrast. Pure sans-serif.
>
> **Accent color?** (used for emphasis, key data, section dividers -- or keep the default)

### Built-in Style Definitions

#### 1. Editorial
```
Primary: #1A1A2E (deep navy)   Accent: #E63946 (red)
Secondary: #F4A261 (amber)     Light: #FEFEFE (white)
Heading: DM Serif Display      Body: DM Sans
Title: 28pt                    Body: 14pt
Vibe: Magazine editorial. Sophisticated but readable.
```

#### 2. Boardroom
```
Primary: #1B3A2D (deep green)  Accent: #C5975B (gold)
Text: #444444 (dark gray)      Light: #F7F5F0 (warm cream)
Heading: Playfair Display      Body: Libre Franklin
Title: 26pt                    Body: 14pt
Vibe: Private equity. Investor meetings. The room has leather chairs.
```

#### 3. Ink
```
Primary: #111111 (black)       Accent: #111111 (also black)
Text: #444444 (gray)           Light: #FFFFFF (white)
Heading: Fraunces              Body: Inter
Title: 26pt                    Body: 14pt
Vibe: Literary. Let the words do the work. No color needed.
```

#### 4. Midnight
```
Primary: #0F0F14 (near-black)  Accent: #D4A843 (amber)
Text: #C8C0AA (warm gray)      Light: #F0EAD6 (parchment)
Heading: Lora                  Body: Inter
Title: 26pt                    Body: 14pt
Vibe: Dark mode. Late-night strategy session. Warm and focused.
```

#### 5. Studio
```
Primary: #2D1B69 (indigo)      Accent: #8B5CF6 (violet)
Text: #444444 (gray)           Light: #FAFAFA (near-white)
Heading: Instrument Serif (italic)  Body: Space Grotesk
Title: 30pt                    Body: 14pt
Vibe: Creative strategy. Design studio. The title slide has a subtle glow.
```

#### 6. Earth
```
Primary: #3C2415 (dark brown)  Accent: #C87941 (terracotta)
Text: #4A3F35 (warm gray)      Light: #FAF6F1 (warm white)
Heading: Cormorant Garamond    Body: DM Sans
Title: 28pt                    Body: 14pt
Vibe: Grounded. Human. The deck you'd present at a retreat, not a boardroom.
```

#### 7. Bold Corporate
```
Primary: #000000 (black)       Accent: #FF3366 (coral)
Text: #333333 (dark gray)      Light: #F8F8F8 (near-white)
Heading: Montserrat Bold       Body: Montserrat
Title: 36pt                    Body: 14pt
Vibe: High contrast. Confident. The only pure sans-serif template.
```

### Using a Custom Template

If the user provides a .pptx template:

1. Load it: `prs = Presentation('their-template.pptx')`
2. Inspect the slide layouts: list all layouts from the slide master
3. Map each layout to a slide type (title, content, section divider, blank)
4. Report back to the user: "Your template has these layouts: [list]. I'll use Layout X for content slides, Layout Y for section dividers, etc."
5. Build slides using their layouts

If the template has custom placeholders, map them. If it's missing a layout type, fall back to blank + manual positioning.

### Modifying Theme Colors Programmatically

python-pptx doesn't have a public API for changing theme colors, but the underlying XML is accessible. A .pptx is a ZIP archive with the theme at `ppt/theme/theme1.xml`.

To swap the accent color at runtime:

```python
from pptx import Presentation
from lxml import etree

prs = Presentation('template.pptx')
ns = {'a': 'http://schemas.openxmlformats.org/drawingml/2006/main'}

# Access theme XML via slide master
theme_elem = prs.slide_masters[0].element
clr_scheme = theme_elem.find('.//' + '{' + ns['a'] + '}' + 'clrScheme')

# Modify accent1 color
accent1 = clr_scheme.find('{' + ns['a'] + '}accent1/{' + ns['a'] + '}srgbClr')
if accent1 is not None:
    accent1.set('val', '2E75B6')  # New hex color without #

prs.save('output.pptx')
```

The 12 theme color slots: dk1, dk2, lt1, lt2, accent1-accent6, hlink, folHlink.

Font themes live in `<a:fontScheme>` with `<a:majorFont>` (headings) and `<a:minorFont>` (body).

### Font Safety

Custom fonts only render if installed on the machine opening the file. For maximum compatibility, stick to these widely-available fonts:
- **Safe everywhere:** Calibri, Arial, Helvetica, Times New Roman
- **Widely available:** Montserrat, Inter, Source Sans Pro, Roboto (via Google Fonts, installed on most modern machines)
- **macOS safe:** SF Pro, Helvetica Neue, Avenir

If the user specifies a custom font, warn them: "This font will only display correctly on machines where it's installed. On other machines, PowerPoint will substitute a default."

---


## Step 3: Build the Slides

### Prerequisites

```bash
pip install python-pptx
```

### Choose or Load the Template

```python
from pptx import Presentation
from pptx.util import Inches, Pt, Emu
from pptx.dml.color import RGBColor
from pptx.enum.text import PP_ALIGN

# Option A: Built-in style (start from blank, apply style)
prs = Presentation()
prs.slide_width = Inches(13.333)  # Widescreen 16:9
prs.slide_height = Inches(7.5)

# Option B: User's template
prs = Presentation('user-template.pptx')
```

### Create from the Ghost Deck

Take the ghost deck from Step 1 in `references/slides.md` (the list of action titles) and create one slide per title. Match each to the right slide type based on what the supporting content needs.

### Add Content

For each slide:
- Title is already set (the insight statement)
- Add supporting evidence in the appropriate format (bullets, chart placeholder, cards, stat)
- Apply the Label-Sort-Insight pattern to bullets: bold label + supporting detail

### Visual Polish

- Consistent spacing and alignment across all slides
- Charts formatted with clear titles and annotations
- Section dividers in place (if deck warrants them -- 20+ slides with distinct sections)
- Slide numbers on all slides except title
- Appendix clearly separated

- Speaker notes: what the presenter says, and where every number comes from

## Step 4: Render and Check Every Slide

Look at the slides, not just the code that made them. A slide you haven't seen isn't done.

1. **Render them.** Where LibreOffice is installed, turn the deck into a PDF and one picture per slide, then open every picture:
   ```bash
   soffice --headless --convert-to pdf deck.pptx
   pdftoppm -png -r 60 deck.pdf slide
   ```
   If your tool can't render slides, say so and ask the user to flip through the file and tell you what looks wrong.
2. **Horizontal flow.** Print the titles in order and read them as one paragraph:
   ```python
   from pptx import Presentation
   for i, slide in enumerate(Presentation('deck.pptx').slides, 1):
       print(i, slide.shapes.title.text if slide.shapes.title else '(no title)')
   ```
   Rewrite topic labels, titles over two lines, and comma pivots.
3. **Vertical flow.** For each slide, say what it has to show to prove its title, then check that the body shows it.
4. **The timed test** for the deck's use (five seconds if presented, ten if sent to read), and "so what?" on every slide.
5. **The Guides.** Margins clear, titles two lines at most, nothing under 12 pt, no more than four text sizes on a slide. Text that overflows its box or runs into another shape gets fixed, not shrunk until it fits.

Fix what you find and render again until the deck is clean.

## Step 5: Export

Save the .pptx, and when the user wants a PDF too, export it with `soffice --headless --convert-to pdf deck.pptx` (or ask them to use File > Export > PDF). Tell the user what you chose where the brief was blank: the style, the sequencing, whether there are dividers.
