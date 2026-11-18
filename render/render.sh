#!/bin/bash
# Renders render/news.html to entry.png (exactly 1024x1024).
# Chromium's --screenshot silently drops the bottom ~46-90px of the page
# when the window is exactly 1024 tall, so we shoot at 1024x1400 and crop
# the top 1024 rows with PIL. The layout itself is 1024px tall, so the
# crop keeps every pixel of the design.
set -euo pipefail
DIR="$(cd "$(dirname "$0")/.." && pwd)"
CHROME="$HOME/.cache/ms-playwright/chromium-1187/chrome-linux/chrome"
"$CHROME" --headless --disable-gpu --no-sandbox \
  --screenshot="$DIR/.shot-tall.png" --window-size=1024,1400 \
  "file://$DIR/render/news.html" 2>/dev/null
python3 - "$DIR" <<'EOF'
import sys
from PIL import Image
d = sys.argv[1]
tall = Image.open(f"{d}/.shot-tall.png")
tall.crop((0, 0, 1024, 1024)).save(f"{d}/entry.png")
out = Image.open(f"{d}/entry.png")
print("entry.png:", out.size, out.format)
EOF
rm -f "$DIR/.shot-tall.png"
