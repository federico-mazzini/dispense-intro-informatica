// Sezione Hardware di ICDL: src/1_computer_dispositivi.typ.
// Escluse le due slide su Von Neumann e la docking station; numerazione progressiva.

#let rosso = rgb("#c00000")
#let grigio = rgb("#555555")
#let larghezza = 864pt
#let altezza-corpo = 390pt
#let sfondo = rgb("#fbf4f3")

#let presentazione(body) = {
  set document(title: "Hardware", author: "Federico Mazzini")
  set page(width: 960pt, height: 540pt, margin: 0pt)
  set text(font: "Libertinus Serif", size: 26pt, lang: "it", hyphenate: false,
    fill: rgb("#202020"), top-edge: 0pt, bottom-edge: 0pt)
  set par(leading: 0.44em, spacing: 0.8em, justify: false)
  set list(indent: 4pt, body-indent: 11pt, tight: false, spacing: 0.5em)
  set enum(numbering: "1", indent: 4pt, body-indent: 10pt, tight: false, spacing: 0.5em)
  body
}

// Le coordinate sono in punti nel formato 16:9 del modello.
// Ogni riga mantiene posizione, capoversi ed enfasi del PDF di origine.
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

#let slide(grafica: none, titolo: "", body) = page[
  #if grafica != none {
    place(top + left, image(grafica, width: 960pt, height: 540pt))
  }
  #body
  // Il piccolo fregio rosso è il segno grafico del modello.
  #place(top + left, dx: 48pt, dy: 26pt,
    rect(width: 40pt, height: 3pt, fill: rosso, stroke: none))
  // I crediti originali restano nella fascia inferiore; il contatore è progressivo.
  #place(top + left, dx: 370pt, dy: 525pt, box(width: 220pt)[
    #context align(center)[#text(size: 11pt, fill: grigio)[#counter(page).display() / #counter(page).final().first()]]
  ])
]


// Nuove slide: stessi caratteri, titoli centrati, colori e piè di pagina.
// Il corpo scorre in paragrafi modificabili, senza coordinate per ogni riga.
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
#let lezione(titolo, sottotitolo, body) = slide(titolo: titolo)[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 864)[#text(weight: "bold", titolo)]
  #riga(480, 115.79, 27, centro: true, ampiezza: 864)[#text(weight: "bold", sottotitolo)]
  #place(top + left, dx: 64pt, dy: 158pt, area-nuova(body))
  #riga(29.8, 528.275, 9.68)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68)[#text("Prof. Federico Mazzini")]
]
#let apertura(titolo, sottotitolo) = slide(titolo: titolo)[
  #riga(480, 292, 48, tinta: rosso, centro: true, ampiezza: 864)[#text(weight: "bold", titolo)]
  #riga(480, 334, 28, centro: true, ampiezza: 864)[#text(weight: "bold", sottotitolo)]
  #riga(29.8, 528.275, 9.68)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68)[#text("Prof. Federico Mazzini")]
]

#show: presentazione

// 11. Hardware.pdf, pagina 1 — Hardware
#slide(titolo: "Hardware")[
  #riga(480, 267.16, 58, tinta: rosso, centro: true, ampiezza: 261.58)[#text(weight: "bold", "Hardware")]
  #riga(480, 312.14, 32, centro: true, ampiezza: 469.184)[#text(weight: "bold", "Le componenti di un computer")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// 16. Hardware.pdf, pagina 6 — Componenti di un computer
#slide(grafica: "/assets/icdl/hardware-06.svg", titolo: "Componenti di un computer")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 539.574)[#text(weight: "bold", "Componenti di un computer")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 64.206)[#text(weight: "bold", "Case")]
  #riga(49.819, 194.914, 20, ampiezza: 670)[#text("Il ")#text(weight: "bold", "case ")#text("è il contenitore che ospita e protegge i componenti interni di un ")]
  #riga(49.819, 221.414, 20, ampiezza: 101.82)[#text("computer. ")]
  #riga(49.819, 259.914, 20, ampiezza: 184.44)[#text(weight: "bold", "Funzioni principali ")]
  #riga(64.819, 298.414, 20, ampiezza: 583.582)[#text("•")#text(weight: "bold", " ")#text(weight: "bold", "Protezione")#text(": protegge i componenti interni da polvere e urti  ")]
  #riga(64.819, 336.914, 20, ampiezza: 485.442)[#text("•")#text(weight: "bold", " ")#text(weight: "bold", "Struttura")#text(": tiene insieme tutti i componenti interni ")]
  #riga(64.819, 375.414, 20, ampiezza: 578.582)[#text("•")#text(weight: "bold", " ")#text(weight: "bold", "Accesso")#text(": permette di collegare dispositivi di input e output ")]
  #riga(64.819, 413.914, 20, ampiezza: 99.282)[#text(weight: "bold", "•")#text(weight: "bold", " ")#text(weight: "bold", "Estetica ")]
  #riga(46.773, 457.013, 17.5, ampiezza: 819.788)[#text("Nei portatili e smartphone non si parla sempre di ")#text(style: "italic", "case")#text(" ma di ")#text(style: "italic", "scocca")#text(" o ")#text(style: "italic", "cover")#text(". La funzione è la stessa: ")]
  #riga(46.773, 480.513, 17.5, ampiezza: 559.703)[#text("protezione + struttura + raffreddamento (anche se molto più ridotto).")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// 17. Hardware.pdf, pagina 7 — Componenti di un computer
#slide(grafica: "/assets/icdl/hardware-07.svg", titolo: "Componenti di un computer")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 539.574)[#text(weight: "bold", "Componenti di un computer")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 186.219)[#text(weight: "bold", "Scheda madre")]
  #riga(75.884, 181.752, 20, ampiezza: 786.16)[#text("La ")#text(weight: "bold", "scheda")#text(" ")#text(weight: "bold", "madre")#text(" è il cuore di ogni computer. Si tratta di una ")#text(weight: "bold", "piastra")#text(" ")#text(weight: "bold", "che raccoglie ")]
  #riga(75.884, 208.252, 20, ampiezza: 788.38)[#text(weight: "bold", "tutti i componenti principali ")#text("e li ")#text(weight: "bold", "collega")#text(" tra loro mediante collegamenti stampati di ")]
  #riga(75.884, 234.752, 20, ampiezza: 675)[#text("rame. A seconda del dispositivo, può essere di dimensioni molto diverse")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// 18. Hardware.pdf, pagina 8 — Componenti di un computer
#slide(grafica: "/assets/icdl/hardware-08.svg", titolo: "Componenti di un computer")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 539.574)[#text(weight: "bold", "Componenti di un computer")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 55.971)[#text(weight: "bold", "CPU")]
  #riga(47, 196.268, 20, ampiezza: 500.02)[#text("La ")#text(weight: "bold", "CPU")#text(" (")#text(weight: "bold", "Central")#text(" ")#text(weight: "bold", "Processing")#text(" ")#text(weight: "bold", "Unit")#text(") o ")#text(weight: "bold", "processore")#text(", è il ")]
  #riga(47, 222.768, 20, ampiezza: 449.1)[#text(weight: "bold", "cervello")#text(" del ")#text(weight: "bold", "computer")#text(". E’ il componente che si ")]
  #riga(47, 249.268, 20, ampiezza: 256.12)[#text("occupa di eseguire calcoli. ")]
  #riga(47, 288.268, 20, ampiezza: 500.58)[#text("Ogni azione che un computer svolge, dall’apertura di ")]
  #riga(47, 314.768, 20, ampiezza: 420.04)[#text("un file alla riproduzione di un video, richiede ")]
  #riga(47, 341.268, 20, ampiezza: 416.2)[#text("l’esecuzione di istruzioni da parte della CPU. ")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// 28. Hardware.pdf, pagina 18 — CPU
#slide(grafica: "/assets/icdl/hardware-18.svg", titolo: "CPU")[
  #riga(240, 82.84, 35, tinta: rosso, centro: true, ampiezza: 86.226)[#text(weight: "bold", "CPU")]
  #riga(240, 115.79, 27, centro: true, ampiezza: 241.272)[#text(weight: "bold", "Frequenza di clock")]
  #riga(54.5, 171.55, 15, ampiezza: 420.702)[#text("La frequenza di clock indica la ")#text(weight: "bold", "velocità")#text(" ")#text(weight: "bold", "con cui la CPU ")]
  #riga(54.5, 191.55, 15, ampiezza: 421.725)[#text(weight: "bold", "lavora")#text(". Più è alto il clock, più velocemente la CPU esegue ")]
  #riga(54.5, 211.55, 15, ampiezza: 98.115)[#text("le operazioni. ")]
  #riga(54.5, 246.55, 15, ampiezza: 421.723)[#text("L’unità di misura è l’")#text(weight: "bold", "Hertz")#text(" (")#text(weight: "bold", "Hz")#text("): oggi i processori normali ")]
  #riga(54.5, 266.55, 15, ampiezza: 421.719)[#text("hanno frequenze nell’ordine dei GHz -> 1.000.000.000 di ")]
  #riga(54.5, 286.55, 15, ampiezza: 117.51)[#text("cicli al secondo! ")]
  #riga(54.5, 321.55, 15, ampiezza: 421.738)[#text("Questi numeri possono sembrare enormi, ma sono ")]
  #riga(54.5, 341.55, 15, ampiezza: 421.721)[#text("necessari! Anche solo per ")#text(weight: "bold", "eseguire un’app")#text(", ")#text("il computer ")]
  #riga(54.5, 361.835, 15, ampiezza: 421.722)[#text("deve aggiornare continuamente lo schermo (i pixel che si ")]
  #riga(54.5, 381.835, 15, ampiezza: 421.725)[#text("accendono e si spengono) e nel frattempo gestire tante ")]
  #riga(54.5, 401.835, 15, ampiezza: 421.727)[#text("altre cose: “ascoltare” il touch o la tastiera, aggiornare la ")]
  #riga(54.5, 421.835, 15, ampiezza: 421.721)[#text("connessione a internet, ascoltare l’arrivo delle notifiche, ")]
  #riga(54.5, 441.835, 15, ampiezza: 233.445)[#text("aggiornare le app in background.")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// 29. Hardware.pdf, pagina 19 — CPU
#slide(grafica: "/assets/icdl/hardware-19.svg", titolo: "CPU")[
  #riga(240, 82.84, 35, tinta: rosso, centro: true, ampiezza: 86.226)[#text(weight: "bold", "CPU")]
  #riga(240, 115.79, 27, centro: true, ampiezza: 62.613)[#text(weight: "bold", "Core")]
  #riga(58.619, 165.724, 16.5, ampiezza: 409.721)[#text("Una CPU dotata di un singolo core esegue un’unica ")]
  #riga(58.619, 187.224, 16.5, ampiezza: 409.735)[#text("operazione alla volta. Un core è un’unità di ")]
  #riga(58.619, 208.724, 16.5, ampiezza: 409.71)[#text("elaborazione indipendente all’interno della CPU. ")]
  #riga(58.619, 230.224, 16.5, ampiezza: 409.728)[#text("Quando un processore contiene ")#text(weight: "bold", "più core")#text(", può ")]
  #riga(58.619, 252.038, 16.5, ampiezza: 76.997)[#text("q u i n d i ")]
  #riga(155.355, 252.038, 16.5, ampiezza: 105.492)[#text(weight: "bold", "e s e g u i r e ")]
  #riga(280.589, 252.038, 16.5, ampiezza: 38.249)[#text(weight: "bold", "p i ù ")]
  #riga(338.581, 252.038, 16.5, ampiezza: 129.98)[#text(weight: "bold", "o p e r a z i o n i ")]
  #riga(58.619, 272.088, 16.5, ampiezza: 178.2)[#text(weight: "bold", "contemporaneamente")#text(" ")]
  #riga(58.619, 301.352, 16.5, ampiezza: 409.728)[#text("Oggi quasi tutti i processori sono ")#text(weight: "bold", "multi")#text(" ")#text(weight: "bold", "core")#text(". Si ")]
  #riga(58.619, 322.852, 16.5, ampiezza: 409.721)[#text("parla quindi di processori Dual (2), Quad (4), Octa ")]
  #riga(58.619, 344.352, 16.5, ampiezza: 68.327)[#text("(8) core. ")]
  #riga(58.619, 402.352, 16.5, ampiezza: 409.729)[#text("Spesso sono presenti ")#text(weight: "bold", "core differenziati")#text(", alcuni più ")]
  #riga(58.619, 423.852, 16.5, ampiezza: 409.725)[#text("potenti (per i compiti più pesanti: elaborazione ")]
  #riga(58.619, 445.352, 16.5, ampiezza: 409.728)[#text("grafiche 3D, montaggio video) e altri più efficienti ")]
  #riga(58.619, 466.852, 16.5, ampiezza: 409.731)[#text("per risparmiare energia (compiti più leggeri: ascolto ")]
  #riga(58.619, 488.352, 16.5, ampiezza: 266.64)[#text("musica, operazioni in background)")]
  #riga(487.385, 193.438, 15, ampiezza: 86.97)[#text(weight: "bold", "6-core CPU ")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// 30. Hardware.pdf, pagina 20 — Memoria
#slide(titolo: "Memoria")[
  #riga(480, 314.983, 60, tinta: rosso, centro: true, ampiezza: 250.02)[#text(weight: "bold", "Memoria")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// 20. Hardware.pdf, pagina 10 — Componenti di un computer
#slide(grafica: "/assets/icdl/hardware-10.svg", titolo: "Componenti di un computer")[
  #riga(51.165, 178.065, 20, ampiezza: 557.035)[#text("La ")#text(weight: "bold", "memoria")#text(" ")#text(weight: "bold", "centrale")#text(" è la ")#text(weight: "bold", "principale")#text(" del computer. Viene ")]
  #riga(51.165, 204.565, 20, ampiezza: 557.037)[#text("utilizzata per ")#text(weight: "bold", "memorizzare")#text(" i ")#text(weight: "bold", "dati")#text(" e i ")#text(weight: "bold", "programmi")#text(" ")]
  #riga(51.165, 231.065, 20, ampiezza: 557.037)[#text(weight: "bold", "attualmente")#text(" ")#text(weight: "bold", "in")#text(" ")#text(weight: "bold", "esecuzione")#text(". E’ una memoria ")#text(weight: "bold", "temporanea")#text(" ")]
  #riga(51.165, 257.565, 20, ampiezza: 557.032)[#text("il cui contenuto viene completamente cancellato quando ")]
  #riga(51.165, 284.065, 20, ampiezza: 206.7)[#text("si spegne il computer.")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 230.877)[#text(weight: "bold", "Memoria Centrale")]
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 539.574)[#text(weight: "bold", "Componenti di un computer")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// 33. Hardware.pdf, pagina 23 — Memoria
#slide(grafica: "/assets/icdl/hardware-23.svg", titolo: "Memoria")[
  #riga(47, 171.475, 17.5, ampiezza: 470)[#text("La RAM (Random Access Memory) è una memoria ad accesso casuale.")]
  #riga(47, 190.475, 17.5, ampiezza: 360.238)[#text("Le sue caratteristiche sono:")]
  #riga(72, 207.475, 17.5, ampiezza: 438.523)[#text(weight: "bold", "•")#text(weight: "bold", " ")#text(weight: "bold", "tempo di accesso rapido")#text(" e garantisce alte ")]
  #riga(88.042, 230.975, 17.5, ampiezza: 99.453)[#text("prestazioni. ")]
  #riga(72, 266.975, 17.5, ampiezza: 438.507)[#text(weight: "bold", "•")#text(" ")#text("tutto il contenuto viene perso quando il computer ")]
  #riga(88.042, 290.475, 17.5, ampiezza: 317.293)[#text("viene spento, è una ")#text(weight: "bold", "memoria volatile")#text(". ")]
  #riga(47, 326.475, 17.5, ampiezza: 77.333)[#text(weight: "bold", "Esempio ")]
  #riga(47, 349.975, 17.5, ampiezza: 463.505)[#text("Se si sta scrivendo un testo con Word, il testo e ")]
  #riga(47, 373.475, 17.5, ampiezza: 463.509)[#text("l’applicazione stessa vengono salvati temporaneamente ")]
  #riga(47, 396.975, 17.5, ampiezza: 463.526)[#text("nella RAM. Quando si esegue l’operazione di ")]
  #riga(47, 420.475, 17.5, ampiezza: 463.511)[#text("salvataggio, il contenuto del file viene salvato all’interno ")]
  #riga(47, 443.975, 17.5, ampiezza: 300.458)[#text("della memoria seconda, non volatile.")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 181.035)[#text(weight: "bold", "Memoria RAM")]
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 172.494)[#text(weight: "bold", "Memoria")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// 19. Hardware.pdf, pagina 9 — Componenti di un computer
#slide(titolo: "Componenti di un computer")[
  #riga(47, 171.475, 17.5, ampiezza: 870.636)[#text("La memoria secondaria è utilizzata per ")#text(weight: "bold", "memorizzare i dati ")#text("in modo")#text(weight: "bold", " permanente")#text(", cioè fino alla loro ")]
  #riga(47, 194.975, 17.5, ampiezza: 869.448)[#text("eventuale cancellazione. È caratterizzata da ")#text(weight: "bold", "grande capacità di archiviazione")#text(", ")#text(weight: "bold", "tempi di accesso più lenti ")]
  #riga(47, 218.475, 17.5, ampiezza: 870.637)[#text("rispetto alla memoria principale e ")#text(weight: "bold", "non volatilità")#text(", poiché i dati rimangono memorizzati anche dopo lo ")]
  #riga(47, 241.975, 17.5, ampiezza: 232.085)[#text("spegnimento del computer. ")]
  #riga(47, 288.975, 17.5, ampiezza: 474.18)[#text("Esistono ")#text(weight: "bold", "due principali tipologie")#text(" di memoria secondaria: ")]
  #riga(72, 324.975, 17.5, ampiezza: 201.244)[#text("•")#text(weight: "bold", " ")#text(weight: "bold", "HDD")#text(" (Hard Disk Drive) ")]
  #riga(72, 360.975, 17.5, ampiezza: 207.824)[#text("•")#text(weight: "bold", " ")#text(weight: "bold", "SSD")#text(" (Solid State Drive) ")]
  #riga(47, 432.975, 17.5, ampiezza: 870.635)[#text("Si può immaginare la memoria secondaria come un ")#text(weight: "bold", "magazzino")#text(", uno spazio molto grande in cui ")]
  #riga(47, 456.475, 17.5, ampiezza: 870.631)[#text("archiviare/salvare dati, file e programmi, mentre la memoria principale rappresenta il bancone di lavoro ")]
  #riga(47, 479.975, 17.5, ampiezza: 407.943)[#text("su cui i dati vengono elaborati temporaneamente.")]
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 539.574)[#text(weight: "bold", "Componenti di un computer")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 266.706)[#text(weight: "bold", "Memoria Secondaria")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// 34. Hardware.pdf, pagina 24 — Memoria
#slide(grafica: "/assets/icdl/hardware-24.svg", titolo: "Memoria")[
  #riga(47, 170.096, 16.975, ampiezza: 183.619)[#text(weight: "bold", "Hard Disk Drive(HDD)")#text(" ")]
  #riga(47, 192.096, 16.975, ampiezza: 500.559)[#text("Gli Hard Disk funzionano grazie a ")#text(weight: "bold", "dischi magnetici rotanti ")#text("e ")]
  #riga(47, 214.096, 16.975, ampiezza: 500.55)[#text("parti meccaniche ")#text(weight: "bold", "mobili")#text(" (come le testine di lettura e ")]
  #riga(47, 236.096, 16.975, ampiezza: 500.561)[#text("scrittura), che li rendono più ")#text(weight: "bold", "lenti")#text(", ")#text(weight: "bold", "rumorosi")#text(" e soggetti a ")]
  #riga(47, 258.096, 16.975, ampiezza: 500.554)[#text(weight: "bold", "usura")#text(" o rottura. Offrono grande capacità di archiviazione a un ")]
  #riga(47, 280.096, 16.975, ampiezza: 500.555)[#text("costo molto contenuto e venivano utilizzati soprattutto negli ")]
  #riga(47, 302.096, 16.975, ampiezza: 100.153)[#text("anni passati")#text(". ")]
  #riga(47, 336.526, 16.975, ampiezza: 192.191)[#text(weight: "bold", "SSD (Solid State Drive)")#text(" ")]
  #riga(47, 358.526, 16.975, ampiezza: 500.559)[#text("Gli SSD utilizzano una ")#text(weight: "bold", "tecnologia più moderna")#text(", senza parti ")]
  #riga(47, 380.526, 16.975, ampiezza: 500.558)[#text("meccaniche e mobili, risultando molto più ")#text(weight: "bold", "compatti")#text(" (piccoli), ")]
  #riga(47, 402.526, 16.975, ampiezza: 500.553)[#text(weight: "bold", "veloci")#text(", ")#text(weight: "bold", "silenziosi")#text(" e resistenti. Oggi la quasi totalità dei ")]
  #riga(47, 424.526, 16.975, ampiezza: 500.562)[#text("computer moderni utilizza SSD al posto degli hard disk ")]
  #riga(47, 446.526, 16.975, ampiezza: 500.557)[#text("tradizionali, d’obbligo in dispositivi come smartphone, tablet e ")]
  #riga(47, 468.526, 16.975, ampiezza: 98.37)[#text("smartwatch.")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 266.706)[#text(weight: "bold", "Memoria Secondaria")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 172.494)[#text(weight: "bold", "Memoria")]
]

// Integrazione syllabus: 1.2.2
#lezione("Prestazioni del computer", "CPU, RAM e memoria di massa")[
Le prestazioni dipendono da *più componenti che lavorano insieme*.

- *CPU*: esegue le istruzioni. Contano la sua architettura, il clock e i core; più GHz da soli non bastano a confrontare processori diversi.
- *RAM*: contiene i dati e i programmi in uso. Se è insufficiente, lavorare con molte applicazioni aperte può rallentare il computer.
- *Memoria di massa*: conserva file e programmi. Un SSD, rispetto a un HDD, riduce in genere i tempi di avvio e di caricamento.
]

// 21. Hardware.pdf, pagina 11 — Componenti di un computer
#slide(grafica: "/assets/icdl/hardware-11.svg", titolo: "Componenti di un computer")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 539.574)[#text(weight: "bold", "Componenti di un computer")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 244.566)[#text(weight: "bold", "Periferiche di input")]
  #riga(75.884, 180.027, 17.5, ampiezza: 808.833)[#text("Una periferica di input è qualsiasi dispositivo che permette al computer di ")#text(weight: "bold", "ricevere dati e comandi ")]
  #riga(75.884, 203.86, 17.5, ampiezza: 745.57)[#text(weight: "bold", "dall’esterno")#text(". Senza periferiche di input, il computer sarebbe come una scatola chiusa: ")#text(weight: "bold", "non ")]
  #riga(75.884, 227.692, 17.5, ampiezza: 545.177)[#text(weight: "bold", "riceverebbe alcuna informazione")#text(" e quindi non potrebbe fare nulla.")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// 22. Hardware.pdf, pagina 12 — Componenti di un computer
#slide(grafica: "/assets/icdl/hardware-12.svg", titolo: "Componenti di un computer")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 539.574)[#text(weight: "bold", "Componenti di un computer")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 263.628)[#text(weight: "bold", "Periferiche di output")]
  #riga(75.884, 192.022, 17.5, ampiezza: 795.148)[#text("Una periferica di output è qualsiasi dispositivo che permette al computer di mostrare risultati e/o ")]
  #riga(75.884, 215.522, 17.5, ampiezza: 682.682)[#text("comunicare con l’esterno")#text(". Senza output, nessun risultato sarebbe visibile o utilizzabile.")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// 23. Hardware.pdf, pagina 13 — Componenti di un computer
#slide(grafica: "/assets/icdl/hardware-13.svg", titolo: "Componenti di un computer")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 539.574)[#text(weight: "bold", "Componenti di un computer")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 339.984)[#text(weight: "bold", "Periferiche di input/output")]
  #riga(75.884, 180.027, 17.5, ampiezza: 785.698)[#text("Una periferica di input/output è un dispositivo con duplice funzione, permette di ")#text(weight: "bold", "ricevere dati e ")]
  #riga(75.884, 203.86, 17.5, ampiezza: 785.698)[#text(weight: "bold", "fornire risultati")#text(". È quindi necessario che svolga entrambe le funzioni: input e output.")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// Integrazione syllabus: 1.2.3
#lezione("Periferiche", "Integrate ed esterne")[
Una periferica può essere *integrata* nel dispositivo oppure *esterna*, collegata tramite un cavo o una connessione senza fili. La funzione rimane la stessa.

- *Tastiera, mouse e trackpad*: permettono di inserire testo, puntare e dare comandi. Il trackpad svolge la funzione del mouse nei portatili.
- *Webcam e microfono*: acquisiscono immagini, video e suoni.
- *Schermo e altoparlanti*: restituiscono immagini e suoni.
- *Scanner e stampante*: il primo acquisisce un documento su carta, la seconda produce una copia su carta.
]

// 24. Hardware.pdf, pagina 14 — Componenti di un computer
#slide(grafica: "/assets/icdl/hardware-14.svg", titolo: "Componenti di un computer")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 539.574)[#text(weight: "bold", "Componenti di un computer")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 335.097)[#text(weight: "bold", "Interfacce e porte esterne")]
  #riga(83.412, 274.106, 15, ampiezza: 130.08)[#text(weight: "bold", "Esempi principali ")]
  #riga(96.412, 306.106, 15, ampiezza: 423.142)[#text("•")#text(" ")#text("USB (Type A, Type C): collegare tastiere, mouse, memorie ")]
  #riga(112.453, 326.106, 15, ampiezza: 396.525)[#text("esterne (chiavette), nei dispositivi mobili utilizzata come ")]
  #riga(112.453, 346.106, 15, ampiezza: 102)[#text("alimentazione ")]
  #riga(96.412, 378.106, 15, ampiezza: 400.027)[#text("•")#text(" ")#text("HDMI: collegare monitor o proiettori per video e audio ")]
  #riga(96.412, 410.106, 15, ampiezza: 279.922)[#text("•")#text(" ")#text("Ethernet: collegamento a reti cablate ")]
  #riga(96.412, 442.106, 15, ampiezza: 263.737)[#text("•")#text(" ")#text("Jack audio: uscita e ingresso audio ")]
  #riga(96.412, 474.106, 15, ampiezza: 446.662)[#text("•")#text(" ")#text("slot per schede SD, pulsanti di accensione, led di stato e altro")]
  #riga(84.11, 171.788, 17.5, ampiezza: 816.882)[#text("Le ")#text(weight: "bold", "interfacce")#text(" e le ")#text(weight: "bold", "porte")#text(" ")#text(weight: "bold", "esterne")#text(" permettono al computer di ")#text(weight: "bold", "comunicare con il mondo esterno")#text(", ")]
  #riga(84.11, 195.288, 17.5, ampiezza: 816.881)[#text("collegando ")#text(weight: "bold", "periferiche")#text(" di input e output, i ")#text(weight: "bold", "collegamenti")#text(" ")#text(weight: "bold", "di")#text(" ")#text(weight: "bold", "rete")#text(" e ")#text(weight: "bold", "sistemi")#text(" ")#text(weight: "bold", "di")#text(" ")#text(weight: "bold", "archiviazione")#text(". Le ")]
  #riga(84.11, 218.788, 17.5, ampiezza: 816.888)[#text("porte esterne sono i connettori fisici, mentre le interfacce sono le regole e i protocolli che ")]
  #riga(84.11, 242.288, 17.5, ampiezza: 452.795)[#text("permettono ai dispositivi di comunicare correttamente.")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// Integrazione syllabus: 1.2.4
#lezione("Porte di input/output", "USB e HDMI")[
La porta *USB* permette di collegare periferiche e trasferire dati. Può fornire anche alimentazione: ad esempio per una chiavetta, un mouse o la ricarica di un dispositivo.

*USB-A* e *USB-C* indicano forme diverse del connettore. Il connettore, da solo, non indica tutte le funzioni o la velocità disponibili.

La porta *HDMI* trasporta *video e audio digitali*. Si usa, ad esempio, per collegare un computer a un monitor, a un televisore o al proiettore della classe.
]
