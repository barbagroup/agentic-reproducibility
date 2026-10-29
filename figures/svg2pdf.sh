#!/bin/sh
# Convert an SVG figure to a vector PDF sized exactly to the SVG canvas,
# using headless Google Chrome. Usage: figures/svg2pdf.sh in.svg out.pdf
set -e
CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
svg="$1"; pdf="$2"
w=$(sed -n 's/.*<svg[^>]* width="\([0-9.]*\)".*/\1/p' "$svg" | head -1)
h=$(sed -n 's/.*<svg[^>]* height="\([0-9.]*\)".*/\1/p' "$svg" | head -1)
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
{
  printf '<!doctype html><html><head><meta charset="utf-8"><style>'
  printf '@page{size:%spx %spx;margin:0}html,body{margin:0;padding:0}svg{display:block}' "$w" "$h"
  printf '</style></head><body>'
  cat "$svg"
  printf '</body></html>'
} > "$tmp/fig.html"
"$CHROME" --headless --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$tmp/fig.pdf" "file://$tmp/fig.html" 2>/dev/null
mv "$tmp/fig.pdf" "$pdf"
