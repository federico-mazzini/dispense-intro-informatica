#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."

mkdir -p dist/slides
for sorgente in slides/[0-9][0-9]" - "*.typ; do
  nome="$(basename "$sorgente" .typ)"
  typst compile --root . "$sorgente" "dist/slides/${nome}.pdf"
done
