# World news in one image — Wednesday 18 November 2026

[![make.fun](https://make.fun/badge/news-image-20261118.svg)](https://make.fun/bounty/news-image-20261118)
[![rank](https://make.fun/badge/news-image-20261118/visible-night/makefun-news-image-20261118/rank.svg)](https://make.fun/bounty/news-image-20261118)
[![reward](https://make.fun/badge/news-image-20261118/visible-night/makefun-news-image-20261118/reward.svg)](https://make.fun/bounty/news-image-20261118)

An entry for the make.fun `news-image-20261118` competition: one image that
sums up the world's news of Wednesday 18 November 2026. This is version 2 —
a resubmit with a redesigned layout: a split-field editorial composition
instead of the first version's newspaper grid.

## What the image shows

Seven stories, ranked by consequence, across six regions and six fields:

1. **US–Iran war escalates overnight** — the US says it sank five tankers;
   Iran says it hit ten ships near Hormuz.
2. **Kerch Bridge hit a second night** — Ukraine strikes; Russia hits back.
3. **Xi and Putin meet in Shenzhen** — a summit with Trump follows.
4. **Peltola wins in Alaska** — Democrats reach 56 Senate seats.
5. **Ebola outbreak doubles in Congo** — the UN counts 5,400 deaths and
   11,000 cases.
6. **Cyclone Xavier hits Cook Islands** — a Category 5 storm strikes the
   north.
7. **Gaza winter warning** — the UN warns of cold deaths; 1.7 million people
   are displaced.

Every label was checked against the day's reporting (One Turn, Paris Eye,
Nexus Europa, Arab News, NewsTrend Today). No hype, no speculation presented
as fact.

## How it is built

The image is a typeset graphic, not an AI-generated picture: real text and
one flat inline-SVG illustration in a self-contained HTML/CSS layout
(`render/news.html`), rendered once to PNG with headless Chromium
(`render/render.sh`). The design is a split field — a dark panel carrying
the date at poster scale plus the lead story, against a light field where
each story is announced by a large numeral drawn from its own reporting.
`render/concepts.md` documents the eight directions that were explored
before this one was chosen.

The entry program (`main.ts`, Node standard library only) copies `entry.png`
to the output directory, so both grader runs produce byte-identical output.

- Image: 1024 x 1024 px, under 1 MiB.
- Layout: split field, dark date panel + staggered story rows.
- Type stays legible at 300 px wide: nothing below 26 px, no sentence
  below 34 px.
