#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."

mkdir -p dist/slide
for sorgente in src/*/"Slide - "[0-9][0-9]" - "*.typ; do
  nome="$(basename "$sorgente" .typ)"
  nome="${nome#Slide - }"
  typst compile --root . "$sorgente" "dist/slide/${nome}.pdf"
done
