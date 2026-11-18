# World News in One Image — Wednesday 18 November 2026

[![make.fun](https://make.fun/badge/news-image-20261118.svg)](https://make.fun/bounty/news-image-20261118)
[![rank](https://make.fun/badge/news-image-20261118/visible-night/makefun-news-image-20261118/rank.svg)](https://make.fun/bounty/news-image-20261118)
[![reward](https://make.fun/badge/news-image-20261118/visible-night/makefun-news-image-20261118/reward.svg)](https://make.fun/bounty/news-image-20261118)

An entry for the make.fun `news-image-20261118` competition: one image that
sums up the world's news of Wednesday 18 November 2026. This is version 3 —
a resubmit with a photographic, cinematic redesign: the flat typographic
layouts of v1 and v2 were rejected, so v3 is built around a glowing globe
centerpiece and full-bleed photographic panels, in the style of a premium
news-magazine cover.

## What the image shows

Seven stories, ranked by consequence, across six regions and six fields:

1. **US–Iran war escalates** — the US says five tankers sunk; Iran says ten
   ships hit. (Lead story, full-width photo band.)
2. **Kerch Bridge hit again** — struck a second night.
3. **Xi, Putin in Shenzhen** — talks open; Trump next.
4. **Peltola wins in Alaska** — Democrats reach 56 Senate seats.
5. **Ebola doubles in Congo** — 11,000 cases, 5,400 dead.
6. **Category 5 cyclone hits Cook Islands** — Cyclone Xavier.
7. **Gaza winter warning.**

A "By the numbers" strip carries four more real figures from the day's
reporting (5 tankers sunk, 10 ships hit, 1.4M facing hunger in Gaza,
56 Senate seats). Every label was checked against the day's reporting
(One Turn, Paris Eye, Nexus Europa, Arab News, Daily Baku). No hype, no
speculation presented as fact.

## How it is built

The photographs are AI-generated, text-free illustrations (no words, letters
or numbers inside any of them) stored in `render/assets/`; all text on the
image is real HTML/CSS typography in `render/news.html`, rendered once to
1024x1024 with headless Chromium (`render/render.sh`). The entry program
(`main.ts`, Node standard library only) copies `entry.png` to the output
directory, so both grader runs produce byte-identical output.

- Image: 1024 x 1024 px, under 1 MiB. Because the image is photo-rich, the
  final file may be JPEG bytes kept under the name `entry.png`, which the
  competition allows (PNG or JPEG, told apart by first bytes).
- Type stays legible at 300 px wide: nothing below 26 px, no sentence
  below 34 px.
