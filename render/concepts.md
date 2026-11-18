# v3 design — "The World Today" (photographic cinematic)

## Why this direction

v1 (newspaper grid) and v2 (split-field typographic) were both flat
type-first layouts. The user rejected them outright: they looked the same
and felt cheap. The user then sent a reference image — "The World Today" —
and asked for that look: dark cinematic navy, a glowing Earth globe as the
centerpiece, photographic panels per story with colored region tabs, a data
panel, key takeaways, a world-map footer. v3 matches that visual language.

## Content rule

The reference image's stories and statistics are fabricated/generic and were
NOT copied. Every headline, dek and number in v3 comes from the verified
news brief for Wednesday 18 November 2026 (plus a fresh news check before
finalizing, which confirmed the brief and added no new lead story — the
North Korea missile launch that broke late was left out: 7 stories already
fill the layout, and the cyclone keeps Oceania/disaster breadth).

## Assets (all AI-generated, text-free, 800x533 JPEG)

| File | Subject | Used for |
|---|---|---|
| assets/globe.jpg | Earth at night, city lights | Globe centerpiece |
| assets/tanker.jpg | Oil tanker on fire at night | Lead: US–Iran war |
| assets/kerch.jpg | Collapsed bridge span over water | Kerch Bridge |
| assets/shenzhen.jpg | Glass skyline at night | Xi–Putin Shenzhen |
| assets/alaska.jpg | Snow peaks + aurora | Peltola / Alaska |
| assets/congo.jpg | Rainforest canopy from above | Ebola / Congo |
| assets/cyclone.jpg | Satellite cyclone spiral | Cyclone Xavier |
| assets/gaza.jpg | Tent rows under grey sky, no people | Gaza winter warning |

Every asset was viewed before use: on-topic, no text, no logos, no people
in distress. The footer world map is hand-drawn inline SVG (dotted
continents + network arcs), never AI-generated — AI maps get geography wrong.

## Layout spec (1024x1024)

- Masthead 0–96: serif "The World Today" left; date right — giant amber
  "18" (72px) with "WEDNESDAY / NOVEMBER 2026" stacked beside it. Gold rule.
- Main zone 96–660: globe circle (340px diameter, centered) with "WORLD
  NEWS" overlaid; the globe overlaps the lead panel below it. Left column:
  Kerch + Shenzhen panels (296x276 each). Right column: Alaska + Congo.
  Lead panel (384x268): tanker photo, "US–Iran War Escalates" + dek.
- Bottom row 672–884 (212 tall): Cyclone photo panel, Gaza photo panel,
  "By the numbers" data panel (4 real figures).
- Footer 896–1024: key takeaways (left), dotted world-map SVG (center),
  "All events first reported 18 Nov 2026" + sources (right).
- Type floors: headlines 40–44px, deks 34px, tabs 26px, footer 26px,
  nothing below 26px. Word budget: 101 words counted programmatically
  (cap 120).
- Palette: deep navy background (#04081A), white ink, amber accent
  (#F2B705), region-tab colors (red/blue/green/purple/teal/orange).

## File size

Photo-rich: the rendered PNG is over 1 MiB, so the final entry.png is
JPEG bytes (quality 85) under the .png name, which the rules allow.
