#!/bin/bash

CONFIG="$HOME/.config/niri/basicsettings.kdl"

python3 - "$CONFIG" <<'PY'
import re
import sys
from pathlib import Path

path = Path(sys.argv[1])
text = path.read_text()

m = re.search(r'(touchpad\s*\{)(.*?)(\n\s*\})', text, re.S)
if not m:
    print("No encontré un bloque touchpad { ... } en config.kdl", file=sys.stderr)
    sys.exit(1)

start, body, end = m.group(1), m.group(2), m.group(3)

if re.search(r'^\s*off\s*$', body, re.M):
    body = re.sub(r'^\s*off\s*$\n?', '', body, flags=re.M)
    state = "ON"
else:
    body = "        off\n" + body
    state = "OFF"

new_text = text[:m.start()] + start + body + end + text[m.end():]
path.write_text(new_text)

print(f"Touchpad {state}")
PY
