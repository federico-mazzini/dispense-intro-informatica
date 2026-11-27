// Componenti del nuovo percorso; il template delle altre dispense resta invariato.
#import "template.typ": dispensa
#import "didattica.typ": richiamo
#let percorso(body, titolo: "", numero: "", mostra-sottotitolo: true, accento: black, sfondo: white) = {
  show: dispensa.with(titolo: titolo, sottotitolo: if mostra-sottotitolo { [#numero · Hardware e software · Classe prima] } else { [] }, accento: accento, sfondo: sfondo, numerazione: "1.")
  show heading: set text(hyphenate: false)
  body
}
#let schema(path) = block(width: 100%, breakable: false, above: 14pt, below: 14pt)[
  #align(center)[#image(path, width: 100%)]
]
