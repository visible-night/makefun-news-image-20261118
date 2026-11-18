// Entry program for the news-image competition.
// The picture (entry.png) is drawn at build time from render/news.html.
// All this program does is drop an exact copy of it into the output
// directory the grader reads, so every run writes identical bytes.
import { mkdirSync, readFileSync, writeFileSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const root = dirname(fileURLToPath(import.meta.url));
const target = process.env.MAKEFUN_OUTPUT_DIR ?? "/output";
const picture = readFileSync(join(root, "entry.png"));

mkdirSync(target, { recursive: true });
writeFileSync(join(target, "entry.png"), picture);
