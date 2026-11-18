#!/bin/sh
# Render the news-image v3 entry: HTML/CSS + photo assets -> entry.png.
# Chromium's --screenshot drops the bottom ~46-90px at 1024x1024, so shoot at
# 1024x1400 and crop the top 1024 rows with PIL. The photo-rich PNG is over
# 1 MiB, so the final file is JPEG bytes kept under the name entry.png
# (the competition allows PNG or JPEG, told apart by first bytes).
set -e
cd "$(dirname "$0")/.."
CHROME="$HOME/.cache/ms-playwright/chromium-1187/chrome-linux/chrome"
"$CHROME" --headless --disable-gpu --no-sandbox --allow-file-access-from-files --hide-scrollbars --screenshot=/tmp/ni18-v3-raw.png --window-size=1024,1400 "file://$PWD/render/news.html"
python3 - <<'PY'
from PIL import Image
import os
im = Image.open('/tmp/ni18-v3-raw.png').convert('RGB')
im = im.crop((0, 0, 1024, 1024))
im.save('/tmp/ni18-v3.png', 'PNG')
png_size = os.path.getsize('/tmp/ni18-v3.png')
if png_size <= 1048576:
    im.save('entry.png', 'PNG')
    print('entry.png: PNG', png_size, 'bytes')
else:
    im.save('entry.png', 'JPEG', quality=85)
    print('entry.png: JPEG', os.path.getsize('entry.png'), 'bytes (PNG was', png_size, ')')
final = Image.open('entry.png')
print('final:', final.size, final.format, os.path.getsize('entry.png'), 'bytes')
assert final.size == (1024, 1024)
assert os.path.getsize('entry.png') <= 1048576
PY
