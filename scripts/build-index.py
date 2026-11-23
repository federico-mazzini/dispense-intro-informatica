#!/usr/bin/env python3
"""Genera l'indice dei PDF pubblicati su GitHub Pages."""
from html import escape
from pathlib import Path
from urllib.parse import quote

root = Path(__file__).resolve().parent.parent
dist = root / "dist"
rows = []
for pdf in sorted((dist / "dispense").glob("*.pdf")):
    slide = dist / "slide" / pdf.name
    if not slide.is_file():
        continue
    href = quote(pdf.name)
    rows.append(f'<tr><td>{escape(pdf.stem)}</td><td><a href="dispense/{href}">Dispensa</a></td>'
                f'<td><a href="slide/{href}">Slide</a></td></tr>')
(dist / "index.html").write_text(
    '<!doctype html><html lang="it"><meta charset="utf-8">'
    '<meta name="viewport" content="width=device-width, initial-scale=1">'
    '<title>Introduzione all’informatica</title>'
    '<style>body{font-family:system-ui;max-width:960px;margin:3rem auto;padding:0 1rem}'
    'td,th{padding:.7rem;text-align:left}a{color:#0057b8}</style>'
    '<h1>Introduzione all’informatica</h1><p>Ultimi PDF pubblicati: dispense e slide.</p>'
    '<table><tr><th>Argomento</th><th>Dispensa</th><th>Slide</th></tr>'
    + ''.join(rows) + '</table></html>\n', encoding="utf-8")
