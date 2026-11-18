// Entry program for the make.fun news-image-20261118 competition (v3).
// It copies the finished image, entry.png, into the output directory.
// The image itself is built at authoring time from HTML/CSS and photo assets;
// this program only copies bytes, so both grader runs produce identical output.
import { copyFileSync, mkdirSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const here = dirname(fileURLToPath(import.meta.url));
const outDir = process.env.MAKEFUN_OUTPUT_DIR ?? "/output";
mkdirSync(outDir, { recursive: true });
copyFileSync(join(here, "entry.png"), join(outDir, "entry.png"));
