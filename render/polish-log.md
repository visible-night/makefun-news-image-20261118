# Polish log — news-image-20261118 v3

## Draft 1 — rendered, critiqued

The good: genuinely photographic at first glance — the globe centerpiece,
masthead with the giant amber "18", and the photo panels read as a premium
cinematic news cover, nothing like the flat v1/v2 layouts. The globe
overlapping the tanker lead panel looks intentional. The dotted map reads
as a world map with network arcs.

The bad (all fixed in draft 2):
1. Region tabs collided with headlines on four panels (Kerch, Shenzhen,
   Congo, Gaza): the bottom-anchored text blocks grew upward into the tab
   zone. Fix: shortened every headline to 2 lines and every dek to 2 lines
   (text block now clears the 41px tab zone); Gaza lost its dek (headline
   alone carries it, like Cyclone).
2. "WORLD NEWS" wrapped to two lines and overlapped the lead headline.
   Fix: one line at 44px, wider label, moved up onto the globe.
3. Numbers panel rows wrapped (flex column too narrow) and the 4th row
   spilled out of the panel. Fix: inline rows (bold number + label on one
   line), 4th row changed to "56 Senate seats" (fits; $12bn figure dropped
   from the image).
4. Footer sources line overflowed the footer (4 lines in 128px). Fix:
   shortened to "All events from 18 Nov 2026" (2 lines + sources = 3 lines).

## Draft 2 — rendered, critiqued

All four draft-1 fixes verified: tabs clear of headlines on every panel,
"WORLD NEWS" on one line over the globe with no overlap, all four numbers
rows visible on single lines, date unmissable, 300px downscale reads well.
One issue left: the footer sources line still overflowed — "All events
from 18 Nov 2026" (2 lines) + "Sources: One Turn, Paris Eye" (2 lines)
is 4 lines in a 128px footer, so "Paris Eye" was cut at the bottom edge.
Fix in draft 3: sources shortened to "Sources: One Turn" (3 lines total);
full source list stays in the README.

## Draft 3 — FINAL

Footer sources fixed: "All events from 18 Nov 2026" (2 lines) +
"Sources: One Turn" (1 line), all visible, nothing cut. Final check:
1024x1024, JPEG 285,163 bytes, 101 words (counted programmatically),
determinism PASS (two main.ts runs byte-identical), viewed full-size and
at 300px — date prominent, all 7 headlines readable, no collisions, no
garbled text, nothing cut off. The image reads as photographic and
cinematic at first glance: globe centerpiece, full-bleed photo panels,
data strip, takeaways, dotted map footer — the reference's visual
language, carrying only verified 18 Nov news.

First render of the photographic cinematic layout: masthead with giant amber
"18", globe centerpiece overlapping the tanker lead panel, four side photo
panels, bottom row (cyclone, Gaza, numbers), footer with takeaways + dotted
map + sources. To check: does it look photographic at first glance (not a
flat typographic layout)? Is the date unmissable? Any clipped text, any
headline wrapping past its panel, any tab colliding with the globe overlap?
