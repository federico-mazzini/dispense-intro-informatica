#let rosso = rgb("#c00000")
#let grigio = rgb("#555555")
#let larghezza = 832pt
#let altezza-corpo = 344pt

#let presentazione(titolo, body) = {
  set document(title: titolo, author: "Federico Mazzini")
  set page(
    width: 960pt,
    height: 540pt,
    margin: (x: 64pt, top: 54pt, bottom: 33pt),
    footer-descent: 30%,
    footer: context {
      set text(font: "Libertinus Serif", size: 10pt, fill: grigio)
      grid(
        columns: (1fr, 1fr, 1fr),
        [Polo Tecnico Professionale di Lugo],
        align(center)[#counter(page).display() / #counter(page).final().first()],
        align(right)[Prof. Federico Mazzini],
      )
    },
  )
  set text(font: "Libertinus Serif", size: 26pt, lang: "it", hyphenate: false, fill: rgb("#202020"))
  set par(leading: 0.35em, spacing: 0.75em)
  set list(indent: 4pt, body-indent: 11pt, tight: false, spacing: 0.42em)
  set enum(indent: 4pt, body-indent: 11pt, tight: false, spacing: 0.42em)
  set table(
    stroke: (x, y) => (bottom: 0.6pt + rgb("#c7c7c7")),
    fill: (x, y) => if y == 0 { rgb("#f8f0ef") },
    inset: (x: 12pt, y: 8pt),
  )
  show table: set text(size: 23pt)
  body
}

#let fregio = place(top + left, dx: -16pt, dy: -28pt,
  rect(width: 40pt, height: 3pt, fill: rosso, stroke: none),
)

#let apertura(titolo, sottotitolo) = page[
  #fregio
  #align(center + horizon)[
    #text(size: 49pt, weight: "bold", fill: rosso, titolo)
    #v(12pt)
    #text(size: 27pt, weight: "bold", sottotitolo)
  ]
]

#let slide(titolo, sottotitolo, body) = page[
  #fregio
  #block(width: 100%, height: 91pt)[
    #align(center)[
      #text(size: 36pt, weight: "bold", fill: rosso, titolo)
      #v(5pt)
      #text(size: 24pt, weight: "bold", sottotitolo)
    ]
  ]
  #context {
    let corpo = block(width: larghezza, breakable: false, spacing: 0pt, body)
    if measure(corpo, width: larghezza).height > altezza-corpo {
      panic("Il contenuto supera l’area disponibile nella slide: " + titolo)
    }
    corpo
  }
]

#let esempio(body) = block(
  width: 100%,
  fill: rgb("#fbf4f3"),
  stroke: (left: 2pt + rosso),
  inset: (x: 16pt, y: 11pt),
  body,
)

#let tavola(percorso, altezza: 245pt) = align(center,
  image(percorso, width: 100%, height: altezza, fit: "contain"),
)

#let figura(percorso, didascalia, altezza: 155pt) = align(center)[
  #tavola(percorso, altezza: altezza)
  #v(5pt)
  #text(size: 20pt, fill: grigio, didascalia)
]

#let due-colonne(sinistra, destra, rapporto: (1fr, 1fr)) = grid(
  columns: rapporto,
  column-gutter: 32pt,
  align: horizon,
  sinistra,
  destra,
)

#let galleria(..figure) = grid(
  columns: (1fr,) * figure.pos().len(),
  column-gutter: 22pt,
  ..figure.pos(),
)
