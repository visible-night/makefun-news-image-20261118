# Polish log — news-image-20261118

## Round 1 (first render)
- Found: the masthead date at 64px wrapped to two lines ("2026" on its own
  line) and collided with the lead headline; the footer was pushed off the
  canvas by the overflow.
- Found: the ship's bow wedge read as an arrowhead above the deck line.
- Fixed: date to 58px with no letter-spacing (one line, still the largest
  text on the image); removed the bow triangle so the hull is one clean
  silhouette.

## Round 2 (second render)
- Found: date now on one line and the lead reads cleanly, but the footer was
  still missing. Pixel scan showed content ending at row 933.
- Root cause: Chromium's --screenshot with --window-size=1024,1024 drops the
  bottom ~90px of the page. A 1024x1400 shot proved the layout itself is
  correct (footer rule at rows 940-941, last content row 1011) and
  window-height independent (masthead lands on identical rows at any height).
- Fixed: render.sh now shoots at 1024x1400 and crops the top 1024 rows with
  PIL. Playwright CLI was tried first but the downloaded version could not
  run against the cached browser, so the crop approach stayed.

## Round 3 (third render)
- Full image: date prominent, lead + six grid stories all readable, footer
  with the "first reported" line and sources present, no garbled text,
  nothing cut off.
- 300px downscale: the date and every headline still read; deks are small
  but legible; icons remain recognisable.
- Verdict: ship it. Remaining nits (summit icon slightly blobby, small air
  under the lead dek) are not worth another round.
