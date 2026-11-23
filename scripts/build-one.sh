#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
argomento="${1:?Indicare una cartella numerata}"
case "$argomento" in
  1-file-cartelle|2-inviare-condividere-file|3-bit-byte-dimensioni|4-introduzione-computer|5-hardware|6-software|7-funzionamento-computer) ;;
  *) echo "Argomento non riconosciuto: $argomento" >&2; exit 1 ;;
esac
principali=( "src/${argomento}/""Dispense - "*.typ )
if [[ ${#principali[@]} -ne 1 || ! -f "${principali[0]}" ]]; then
  echo "Atteso un solo documento principale per $argomento" >&2
  exit 1
fi
titolo="$(basename "${principali[0]}" .typ)"
printf -v numero "%02d" "${argomento%%-*}"
nome="${numero} - ${titolo#Dispense - }"
mkdir -p dist/dispense
typst compile --root . "${principali[0]}" "dist/dispense/${nome}.pdf"
