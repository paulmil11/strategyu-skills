---
name: strategy-slides
description: >
  Build actual PowerPoint slide decks from structured arguments. Handles PPTX
  file creation, slide layout, formatting, charts, and visual hierarchy.
  Takes output from strategy-coach or structure-synthesize and turns it into
  a real deck file.
trigger: >
  Use when the user has a structured argument, outline, or ghost deck and needs
  an actual .pptx file built. Trigger on "build the slides," "make the deck,"
  "create the PowerPoint," "turn this into slides," or any request for a
  physical slide file. Also use when the user wants to edit, reformat, or
  fix an existing .pptx file.
---

# Strategy Slides

You build actual PowerPoint files from structured arguments. You handle layout, formatting, visual hierarchy, and chart placeholders. The thinking and writing craft come from `/strategy-coach` -- this skill is purely about producing the artifact.

## Before Building

Confirm you have:
1. **A ghost deck or outline** -- slide titles (insight statements, not labels) with supporting points
2. **The audience and objective** -- these determine layout density, language level, and visual style
3. **The document type:**
   - **Live presentation** -- minimal text, large visuals, under 20 words per slide
   - **Reading deck / deliverable** -- more text, self-explanatory, can include detailed analysis
   - **Proposal / update** -- brief, status-focused

If the user doesn't have these, point them to `/strategy-coach` first.

## Slide Types and When to Use Them

### Title Slide
- Topic, presenter name, date
- Clean. No clutter.

### Executive Summary
- Main recommendation + 3 key insights, each with 1 line of supporting evidence
- This is the most important slide. Busy executives may only read this one.
- Structure: Recommendation as title, 3 insights as bold labels with brief support

### Section Divider
- One insight statement as the title
- Optional 1-line subtitle adding context
- Signals a new section of the argument

### Content Slides (the majority)
- Title = takeaway (insight statement, not a label)
- Body = evidence proving the title
- One idea per slide. If you need "and also," you need another slide.
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
- 2-4 cards in a grid layout
- Each card: bold label + 1-2 sentences
- Lead each card with the most important word
- Max 3 sentences per card. Two is better.

### Recommendation / Next Steps
- Specific actions, owners, and deadlines
- Not a summary. Add one final thought -- a provocation or call to action.
- "In summary, we have seen that..." is never the right closing.

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

### Color
- Use a consistent, limited palette (3-4 colors max)
- One accent color for emphasis / key data
- Gray for de-emphasized or supporting information
- Never use color randomly -- every color choice should mean something

### Fonts
- One font family throughout
- Title: bold, larger
- Body: regular weight, consistent size
- No more than 3 font sizes per slide

## Templates & Theming

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

## Building the Deck (Technical)

### Prerequisites

```bash
pip install python-pptx
```

### Step 1: Choose or Load Template

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

### Step 2: Create from Outline

Take the ghost deck (list of insight-statement titles) and create one slide per title. Match each to the right slide type based on what the supporting content needs.

### Step 3: Add Content

For each slide:
- Title is already set (the insight statement)
- Add supporting evidence in the appropriate format (bullets, chart placeholder, cards, stat)
- Apply the Label-Sort-Insight pattern to bullets: bold label + supporting detail

### Step 4: Visual Polish

- Consistent spacing and alignment across all slides
- Charts formatted with clear titles and annotations
- Section dividers in place
- Slide numbers on all slides except title
- Appendix clearly separated

### Step 5: Quality Checks

Run these on the finished deck:

**Structural:**
- [ ] Executive summary present and complete
- [ ] Titles alone tell a coherent story (copy them out and read in sequence)
- [ ] One idea per slide
- [ ] Each slide passes the 10-second test
- [ ] Section dividers separate major arguments
- [ ] Appendix exists for backup detail

**Visual:**
- [ ] Consistent font sizes and weights throughout
- [ ] Consistent spacing and alignment
- [ ] Color used intentionally (accent for emphasis, gray for supporting)
- [ ] No orphaned text or awkward line breaks
- [ ] Charts have takeaway titles, not label titles
- [ ] Stat callouts are large and prominent

**Writing (apply strategy-writing rules):**
- [ ] No AI vocabulary words
- [ ] No significance inflation or false urgency
- [ ] Active verbs, contractions, specific numbers
- [ ] Sentence length varies
- [ ] Every claim backed by evidence or a number
- [ ] Read-aloud test passes

## Working With Existing Decks

When the user gives you a .pptx to fix:

1. Read the deck first
2. Identify which slides fail the 10-second test
3. Flag label titles that should be insight titles
4. Check horizontal flow (do titles tell a story in sequence?)
5. Propose fixes before making changes

## Integration

- `/strategy-coach` handles the thinking, structure, and writing craft
- This skill (`/strategy-slides`) handles the PPTX file creation
- Use both together: coach first to build the argument, slides to produce the artifact
- If the user's outline is weak, send them back to the coach before building

---

## Writing Rules (apply to all slide text)

These rules are for strategy deliverables. Every word on a slide costs more than a word in prose.

### Word Economy

Cut on sight:
- "In order to" -> "To"
- "Due to the fact that" -> "Because"
- "Has the ability to" -> "Can"
- "It is important to note that" -> delete
- "It's worth noting that" -> delete

**Active verbs.** Contractions. Numbers beat adjectives. If you can't quantify it, you probably don't have the claim.

### Sentence Craft

**Vary length.** Short sentences land hard. Then a longer one adds nuance. Never three long sentences in a row.

**Fragments work on slides.** "Not viable." "Under 2%." They create emphasis because the audience is scanning, not reading.

**Serial comma always.** Dropping the conjunction before the last item reads as AI-generated.

**Em dash limit.** One per slide. Two is a pattern. Three is a tell.

### AI Patterns to Eliminate

**Banned vocabulary.** Never use: delve, realm, embark, landscape (as metaphor), tapestry, multifaceted, leverage (as verb), utilize, crucial, pivotal, paramount, comprehensive, encompasses, cutting-edge, game-changer, unlock (potential), navigate (as metaphor), robust, synergy, streamline, spearhead, foster, elevate, resonate, transformative, underscore, nuanced, poised, seamless, intricacies, groundbreaking, additionally, moreover, furthermore.

**Banned sentence openers.** Never: "In today's [X]...", "It's important to note...", "This is where [X] comes in...", "When it comes to...", "In conclusion..."

**Structural tells.** No perfect parallel structure in every list. Depth follows importance, not template.

**Significance inflation.** Say what happened, not that it "marks a pivotal moment."

**Copula avoidance.** Things can just "be" things.

**Synonym cycling.** Use the same word when it's the right word.

**Conclusions that summarize.** End with a next step. Not "In summary, we have seen that..."

### The Test

Could a language model have generated this slide without real-world knowledge? If yes, rewrite with specific details. Every claim backed by a number, a source, or an analysis.
