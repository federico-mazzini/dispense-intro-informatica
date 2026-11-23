#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."

mkdir -p dist/slide
for sorgente in src/*/"Slide - "*.typ; do
  nome="$(basename "$sorgente" .typ)"
  cartella="$(basename "$(dirname "$sorgente")")"
  printf -v numero "%02d" "${cartella%%-*}"
  nome="${numero} - ${nome#Slide - }"
  typst compile --root . "$sorgente" "dist/slide/${nome}.pdf"
done
