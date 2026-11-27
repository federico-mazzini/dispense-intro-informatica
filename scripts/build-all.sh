#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
for argomento in \
  1-file-cartelle \
  3-bit-byte-dimensioni \
  4-introduzione-computer \
  5-hardware \
  6-software; do
  bash scripts/build-one.sh "$argomento"
done
