#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
for argomento in \
  1-file-cartelle \
  2-bit-byte-dimensioni \
  3-introduzione-computer \
  4-hardware \
  5-software; do
  bash scripts/build-one.sh "$argomento"
done
