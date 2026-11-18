#!/bin/bash
# Render render/news.html to entry.png at exactly 1024x1024 using the
# Playwright-cached headless Chromium. No network use: the HTML is
# self-contained (inline CSS/SVG, system fonts only).
#
# NOTE: Chromium's --screenshot with --window-size=1024,1024 drops the
# bottom ~90px of the page (a headless quirk: the capture viewport comes
# out shorter than the window). The layout itself is window-height
# independent (verified: the masthead lands on identical rows at any
# window height), so we shoot tall and crop the top 1024 rows with PIL.
set -euo pipefail
DIR="$(cd "$(dirname "$0")/.." && pwd)"
CHROME="$HOME/.cache/ms-playwright/chromium-1187/chrome-linux/chrome"
TMP="$(mktemp /tmp/news-render-XXXXXX.png)"
"$CHROME" --headless=new --no-sandbox --disable-gpu --hide-scrollbars \
  --force-device-scale-factor=1 --window-size=1024,1400 \
  --screenshot="$TMP" "file://$DIR/render/news.html" 2>/dev/null
python3 - "$TMP" "$DIR/entry.png" <<'EOF'
import sys
from PIL import Image
im = Image.open(sys.argv[1])
im.crop((0, 0, 1024, 1024)).save(sys.argv[2])
EOF
rm -f "$TMP"
file "$DIR/entry.png"
stat -c '%s bytes' "$DIR/entry.png"
