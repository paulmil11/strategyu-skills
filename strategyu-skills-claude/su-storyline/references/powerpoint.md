# The PowerPoint Route

The steps follow Step 1 (the ghost deck) in `references/slides.md`.

## Step 2: Pick the Template

Ask which of these the user has, in this order:

1. **Their company's template.** Use it. See "Using a Custom Template" below.
2. **StrategyU's consulting templates.** Free at https://strategyu.co/strategy-consulting-powerpoint-templates/ (the page asks for an email). It has 100+ slides with action titles: executive summaries, issue trees, charts, frameworks, and roadmaps. There are four styles:
   - **Crimson:** deep red and charcoal, Georgia titles, Arial body.
   - **Navy:** navy with a muted steel-blue accent, Cambria and Calibri.
   - **Minimal:** black, gray, and a deep green accent, all Arial.
   - **Dark:** dark slate with steel blue and muted gold, for screens and dimmed rooms.

   Once the user has downloaded the .pptx, load it like any template. It ships with its sample slides, and they already follow the rules in this skill. For each slide in the ghost deck, start from the closest sample (executive summary, issue tree, chart, roadmap) and replace its text, then delete the samples you didn't use before saving:

   ```python
   def delete_slide(prs, index):
       sld_id = prs.slides._sldIdLst[index]
       prs.part.drop_rel(sld_id.rId)
       prs.slides._sldIdLst.remove(sld_id)
   ```
3. **Neither.** Start from a blank widescreen deck: one font family (Arial or Calibri), dark gray text, and one accent color for the number or bar that proves each title.

A template .pptx is a normal PowerPoint file with the theme (colors, fonts, slide master, layouts, logo placement) set up. python-pptx loads it as the starting point, and every new slide inherits the look.

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

# Option A: No template (start from blank)
prs = Presentation()
prs.slide_width = Inches(13.333)  # Widescreen 16:9
prs.slide_height = Inches(7.5)

# Option B: The user's template, or a StrategyU template they downloaded
prs = Presentation('Consulting-Template-Slides-Crimson.pptx')
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
