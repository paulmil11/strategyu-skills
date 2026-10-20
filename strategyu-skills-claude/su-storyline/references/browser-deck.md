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
