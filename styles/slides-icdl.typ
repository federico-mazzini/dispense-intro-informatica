// Coordinate e impostazioni delle pagine riprese da ICDL, Computer e dispositivi.
#let rosso = rgb("#c00000")
#let grigio = rgb("#555555")

#let riga(x, y, corpo, body, tinta: rgb("#202020"), peso: "regular", angolo: 0deg,
    centro: false, ampiezza: none, url: none) = context {
  let contenuto = text(size: corpo * 1pt, fill: tinta, weight: peso, body)
  if url != none { contenuto = link(url, contenuto) }
  let misura = measure(contenuto)
  // Riduce solo le righe che supererebbero il loro ingombro originale.
  if ampiezza != none and misura.width > ampiezza * 1pt {
    contenuto = scale(x: ampiezza * 1pt / misura.width * 100%, y: 100%,
      origin: left + top, reflow: true, contenuto)
  }
  let offset = if centro { measure(contenuto).width / 2 } else { 0pt }
  place(top + left, dx: x * 1pt - offset, dy: y * 1pt,
    rotate(angolo, origin: left + top, reflow: false, contenuto))
}

#let pagina-icdl(numero, grafica: none, body) = page(margin: 0pt, footer: none)[
  #set text(font: "Libertinus Serif", size: 26pt, lang: "it", hyphenate: false,
    fill: rgb("#202020"), top-edge: 0pt, bottom-edge: 0pt)
  #set par(leading: 0.44em, spacing: 0.8em, justify: false)
  #set list(indent: 4pt, body-indent: 11pt, tight: false, spacing: 0.5em)
  #set enum(numbering: "1", indent: 4pt, body-indent: 10pt, tight: false, spacing: 0.5em)
  #if grafica != none {
    place(top + left, image(grafica, width: 960pt, height: 540pt))
  }
  #body
  #place(top + left, dx: 48pt, dy: 26pt,
    rect(width: 40pt, height: 3pt, fill: rosso, stroke: none))
  // La pagina mantiene il numero mostrato nel PDF ICDL.
  #place(top + left, dx: 370pt, dy: 525pt, box(width: 220pt)[
    #align(center)[#text(size: 11pt, fill: grigio)[#numero / 52]]
  ])
]

#let area-nuova(body) = context {
  for corpo in (26, 25, 24, 23) {
    let prova = block(width: 832pt, breakable: false)[
      #set text(size: corpo * 1pt, top-edge: "cap-height", bottom-edge: "descender")
      #set par(leading: 0.32em, spacing: 0.58em)
      #set list(indent: 5pt, body-indent: 12pt, spacing: 0.45em)
      #body
    ]
    if measure(prova, width: 832pt).height <= 338pt { return prova }
  }
  panic("Il testo della nuova slide supera l'area disponibile.")
}
#let lezione-icdl(numero, titolo, sottotitolo, body) = pagina-icdl(numero)[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 864)[#text(weight: "bold", titolo)]
  #riga(480, 115.79, 27, centro: true, ampiezza: 864)[#text(weight: "bold", sottotitolo)]
  #place(top + left, dx: 64pt, dy: 158pt, area-nuova(body))
  #riga(29.8, 528.275, 9.68)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68)[#text("Prof. Federico Mazzini")]
]
