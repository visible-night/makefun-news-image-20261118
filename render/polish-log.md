# Polish log — news image v2 (news-image-20261118)

## Round 1 — first render (draft 1, sha 7483c0a8)
Looked at the full-size PNG. What works: the giant amber "18" is
unmissable; WEDNESDAY / NOVEMBER 2026 read clearly; the dark/light split is
immediately distinctive and nothing like v1's newspaper grid; all 7 stories
are present, headlines and deks readable, no garbled text, no collisions;
the red numerals anchor every story.

Three worst things:
1. OVERFLOW (critical): the Gaza dek's second line ("displaced.") is clipped
   at the canvas bottom edge. The right field runs ~25px too tall.
2. The tanker/flame SVG is weak: the flame is tiny and floats oddly, the
   hull reads as a flat yellow bar, and the waves are missing entirely —
   the wave path sits at y~112, outside the 100-tall viewBox, so it is
   clipped away.
3. The panel footer is heavy: the sources line wraps to 3 lines and the
   footer crowds the panel's bottom edge, leaving no breathing room.

Fixes for draft 2: tighten the right field (separator margins 16->12px,
dek line-height 1.22->1.18, field padding 26->22px) to reclaim ~55px;
redesign the SVG (viewBox 300x120, bigger flame, raked-bow hull, white
superstructure, waves inside the viewBox); shorten the footer sources to
three outlets; bump the "18" to 190px now the panel has room.

## Round 2 — draft 2 (sha 8151036e)
All three round-1 fixes landed: the Gaza dek is fully visible, the tanker
reads as a burning tanker (hull, portholes, white bridge tower, waves), the
footer has breathing room. 300px downscale: the date is unmistakable, all
seven headlines legible, deks readable.

Three worst things:
1. Numeral imbalance: single-digit numerals (2, 3, 5) look lost next to
   "11,000" and "56" at the same 52px — unequal visual weight.
2. The panel/field split is just two rectangles touching — it needs a
   deliberate graphic device to feel designed.
3. Bad line break in the footer: "Paris" ends one line and "Eye" starts the
   next, splitting a source's name across lines.

Fixes for draft 3: equalize numeral weight (singles 60px, "11,000" 44px,
"56"/"1.7M" stay 52px; compensated by separator margins 12->10px and field
padding 22->20px); add a 5px amber vertical divider at the split, echoing
the amber rule under the date; keep "Paris Eye" together with a non-breaking
space.

## Round 3 — draft 3, FINAL (sha 97e53805)
All round-2 fixes landed: the numerals now balance, the amber seam makes
the split feel intentional, the footer breaks cleanly ("Sources: One Turn, /
Paris Eye, Nexus Europa"). Full look at 1024px and at 300px: date reads
first, lead second, every story clear, nothing false or hyped, every word
spelled right, nothing below the type floors, composition holds at 300px.
Word count 102 (cap 120). No further fix worth making — stopping here.
