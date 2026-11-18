# News image v2 — concepts, selection, spec (news-image-20261118)

## Phase 1 — Research

- Competition: one image summing up Wednesday 18 November 2026 world news.
  1024x1024 px, <=1 MiB, PNG named entry.png. Judge is an AI image model,
  no news feed, not told the day; pairwise, criteria in order: (1) names the
  day + specific events of that day, (2) selection and breadth across regions
  and fields, (3) reads clearly from the image alone, (4) faithful, no hype
  or speculation as fact, (5) craft, legible at ~300px.
- Hard type floors (300px legibility): masthead date >=64px, headlines >=40px,
  dek >=34px, nothing below 26px. Contrast: body >=4.5:1, large >=3:1.
  Word budget <=120. System fonts only, render offline via headless Chromium.
- v1 was a conventional newspaper layout (masthead + lead + 2x3 grid). v2 must
  be fundamentally different in composition, storytelling, typography, color,
  illustration language and information arrangement.
- Stories (verified 2026-11-18, brief + fresh search; weekday checked: Wednesday):
  1. US-Iran war escalates overnight (Middle East, conflict) — US says it sank
     five tankers; Iran says it struck ten ships near Hormuz.
  2. Kerch Bridge hit a second night (Europe, conflict) — Ukraine strikes
     again; Russia hits bridges in reply.
  3. Xi and Putin meet in Shenzhen (Asia, diplomacy) — talks open ahead of a
     summit with Trump; APEC opened in Shenzhen.
  4. Peltola wins in Alaska (Americas, politics) — Democrats reach 56 seats.
  5. Ebola outbreak doubles in Congo (Africa, health) — UN: over 11,000 cases,
     5,400 deaths.
  6. Cyclone Xavier hits Cook Islands (Oceania, disaster) — Category 5 storm
     strikes the north.
  7. Gaza winter warning (Middle East, humanitarian) — UN warns of cold deaths;
     1.7 million displaced.
  6 regions, 6 fields. No story invented; every number from the reporting.

## Phase 2 — Concept exploration (8 directions)

### 1. The Atlas (custom cartographic)
Architecture: full-bleed abstract world map in flat ink; stories pinned at
their real locations with numbered markers; short labels in a legend rail.
Date as a top band. Typography: map labels small-caps, legend in grotesque.
Color: deep ocean ink, paper land, one red for conflict pins. Illustration:
hand-drawn simplified continents + pin markers. Arrangement: geography is the
organizer; consequence shown by marker size.
Strengths: breadth is visible at a glance (criterion 2); memorable.
Risks: hand-drawn continents can look wrong; labels crowd at 300px; the map
competes with the text for attention. REJECTED: readability risk at 300px.

### 2. The Orbit (radial)
Architecture: central date disc; 7 stories as satellites on concentric
orbits, connected by arc lines; consequence = orbit radius. Typography:
radial labels, date huge in the center. Color: dark space field, amber
orbits, white type. Illustration: orbit rings, dot planets. Arrangement:
radial hierarchy, lead closest to the center.
Strengths: striking, unlike any news graphic; the date is literally central.
Risks: curved and rotated text hurts readability; corners wasted; hierarchy
unclear when shrunk. REJECTED: text on curves fails criterion 3.

### 3. The Meridian (timeline)
Architecture: one horizontal day-line 00:00-24:00 across the canvas; stories
pinned chronologically; date as a vertical slab on the left. Typography:
time labels mono, headlines grotesque. Color: paper field, ink line, red
pins. Illustration: the line itself + tick marks. Arrangement: chronology.
Strengths: tells the story of the day unfolding; strong narrative pull.
Risks: exact times are unknown for most stories — pinning them would
fabricate precision. REJECTED: violates faithfulness (criterion 4).

### 4. The Dark Wire (signal)
Architecture: near-black field; stories as horizontal signal bars whose
length encodes weight; amber date; red accents. Typography: huge amber date,
white headlines. Color: black/amber/red. Illustration: bars, waveform ticks.
Arrangement: bars stacked by consequence.
Strengths: bold, modern, very high contrast; reads well small.
Risks: bar length implies a measured quantity that does not exist; reads as
a chart, not as news; the dark field can feel heavy across the whole square.
REJECTED as a whole, but its dark-field contrast is borrowed by the winner.

### 5. The Diorama (isometric)
Architecture: an isometric illustrated world — tiny ships, a bridge,
buildings, a storm spiral — stories as labeled scenes in one diorama.
Typography: labels on small flags/plaques. Color: flat pastel solids.
Illustration: full isometric SVG scene. Arrangement: scenes placed by story.
Strengths: the most visually distinctive; cinematic; memorable.
Risks: SVG complexity budget; fine illustration detail turns to noise at
300px; text integration is awkward; the picture can overwhelm the news.
REJECTED: craft risk at 300px outweighs the novelty.

### 6. The Stat Wall (data typography)
Architecture: giant numerals ARE the layout — 5, 10, 56, 11,000, 5,400,
1.7M — each anchoring its story at poster scale. Typography: numerals at
100px+, headlines attached. Color: paper field, ink numerals, one red.
Illustration: type as image. Arrangement: numbers by magnitude of the story.
Strengths: numbers read best of all at 300px; data-driven; distinctive.
Risks: not every story has a natural number (Kerch, Shenzhen) — forcing
numbers onto them is gimmicky; can feel like a dashboard, not a news image.
REJECTED as a whole, but the number-anchor idea is borrowed by the winner.

### 7. The Split Field (asymmetric Swiss editorial) — CHOSEN
Architecture: the square is split into two unequal fields — a dark ink panel
(360px) holding the date at poster scale plus the lead story, against a light
paper field (664px) holding six stories in a staggered, non-grid arrangement,
each anchored by a large numeral from its own reporting. Typography: the date
is the largest element (a ~190px "18"); headlines 40-44px; deks 34px.
Color: ink #14161A vs paper #F5F1E8, amber #E8B400 for the date, signal red
#C8102E for the story numerals. Illustration: one flat tanker/flame SVG in
the lead; numerals as the visual system; generous negative space.
Arrangement: strict consequence order — date first, lead second, the six
stories after, staggered indents so no two rows align the same way.
Strengths: extreme hierarchy (date -> lead -> rest) matches the judge's
criteria order exactly; the giant "18" is unmissable at 300px; the dark/light
split is immediately distinctive; numbers give every story a visual anchor
that survives shrinking; negative space makes it feel designed, not filled.
Risks: the split must balance; the stagger must look deliberate, not
accidental. Both are controlled in the polish loop.

### 8. The Seismograph (wave)
Architecture: a single bold pulse-line runs across the canvas — the pulse of
the day — with stories as peaks labeled above and below it. Typography:
labels alternate above/below the line. Color: paper, ink line, red peaks.
Illustration: the wave itself. Arrangement: peaks by consequence.
Strengths: a strong metaphor; dynamic; the line gives the eye a path.
Risks: peak heights imply magnitude (fabricated); the wave fights the text;
labels above and below the line get cramped. REJECTED: fabricated magnitude.

## Phase 3 — Art direction (selected: Concept 7, fused with 6 and 4)

Visual identity: "The Day in Seven Signals." One dark field, one light field,
one giant date, seven stories each announced by its own number.

Spec:
- Canvas 1024x1024. Left panel x=0-360, ink #14161A, full height. Right field
  x=360-1024, paper #F5F1E8.
- Left panel (top to bottom): kicker "WORLD NEWS" 28px amber, letterspaced;
  "WEDNESDAY" 46px white bold; "18" ~190px amber bold; "NOVEMBER 2026" 40px
  white bold; thin amber rule; lead headline "US-Iran war escalates
  overnight" 44px white bold; lead dek "US says it sank five tankers; Iran
  says it hit ten ships." 34px #D8D8D8; flat tanker/flame SVG in amber/red;
  footer "Events first reported 18 Nov 2026" 26px #9AA0A6 + sources line.
- Right field: six stories, consequence order, staggered indents (alternate
  0 / 24px), thin rules between rows. Each row: a large numeral in signal red
  (56-64px bold) flowing into the headline (40px ink bold, Kerch 44px as
  second lead), dek 34px #3A3A3A below.
  Numbers (all from the reporting): Kerch "2" (second night), Shenzhen "3"
  (three leaders), Peltola "56" (Senate seats), Ebola "11,000" (cases),
  Cyclone "5" (Category 5), Gaza "1.7M" (displaced).
- Copy (word budget ~105, under the 120 cap):
  - Kerch: "Kerch Bridge hit a second night" / "Ukraine strikes; Russia hits
    back."
  - Shenzhen: "Xi and Putin meet in Shenzhen" / "Summit with Trump follows."
  - Peltola: "Peltola wins in Alaska" / "Democrats reach 56 Senate seats."
  - Ebola: "Ebola outbreak doubles in Congo" / "UN: over 11,000 cases, 5,400
    deaths."
  - Cyclone: "Cyclone Xavier hits Cook Islands" / "Category 5, strikes the
    north."
  - Gaza: "Gaza winter warning" / "UN warns of cold deaths; 1.7 million
    displaced."
- Fonts: DejaVu Sans (system). No web fonts, no external assets.
- Contrast: white on #14161A ~17:1; amber #E8B400 on #14161A ~8:1; red
  #C8102E on #F5F1E8 ~6.3:1; ink on paper ~14:1. All pass.
- Render: headless Chromium screenshot at 1024x1400, crop top 1024 rows with
  PIL (Chromium --screenshot drops the bottom ~46-90px at 1024x1024).
