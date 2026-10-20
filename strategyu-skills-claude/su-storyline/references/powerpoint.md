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
