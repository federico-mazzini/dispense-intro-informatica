#import "/styles/slides.typ": *
#import "/styles/slides-icdl.typ": pagina-icdl, riga

#show: presentazione.with("Hardware")
#let foto(nome, didascalia, altezza: 155pt) = figura(
  "/assets/immagini/5-hardware/" + nome + ".jpg", didascalia, altezza: altezza,
)

#apertura("Hardware", "Componenti, periferiche e memorie")

// Pagina 11 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(11, grafica: "/assets/icdl/hardware-03.svg")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 555.576)[#text(weight: "bold", "Architettura di Von Neumann")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 552.042)[#text(weight: "bold", "Funzionamento di un computer in generale")]
  #riga(47, 171.475, 17.5, ampiezza: 562.328)[#text("Possiamo schematizzare il lavoro di un computer nel modo seguente")]
  #riga(47, 376.459, 17.5, ampiezza: 686.893)[#text(weight: "bold", "Input")#text(": il computer riceve dati dall’esterno, ad esempio da tastiera, mouse o sensori. ")]
  #riga(47, 411.959, 17.5, ampiezza: 782.705)[#text(weight: "bold", "Elaborazione")#text(": i dati vengono processati dal processore, seguendo istruzioni memorizzate nella ")]
  #riga(47, 435.459, 17.5, ampiezza: 207.988)[#text("memoria (il programma). ")]
  #riga(47, 470.959, 17.5, ampiezza: 808.378)[#text(weight: "bold", "Output")#text(": viene elaborato un risultato e restituito in output, ad esempio mostrandolo sullo schermo, ")]
  #riga(47, 494.459, 17.5, ampiezza: 518.49)[#text("stampandolo su un foglio, salvandolo su un dispositivo esterno.")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// Pagina 12 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(12, grafica: "/assets/icdl/hardware-04.svg")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 555.576)[#text(weight: "bold", "Architettura di Von Neumann")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 154.494)[#text(weight: "bold", "Idea di base")]
  #riga(47, 171.475, 17.5, ampiezza: 475.885)[#text("L’architettura di Von Neumann è il ")#text(weight: "bold", "modello alla base dei ")]
  #riga(47, 194.975, 17.5, ampiezza: 477.078)[#text(weight: "bold", "computer moderni")#text(". L’idea è quella di avere un unica ")]
  #riga(47, 218.475, 17.5, ampiezza: 477.078)[#text("memoria in cui vengono mantenuti sia i ")#text(weight: "bold", "dati")#text(" sia le ")]
  #riga(47, 241.975, 17.5, ampiezza: 196.962)[#text(weight: "bold", "istruzioni")#text(" (programmi). ")]
  #riga(47, 277.475, 17.5, ampiezza: 187.915)[#text("Componenti principali ")]
  #riga(72, 312.975, 17.5, ampiezza: 57.552)[#text(weight: "bold", "•")#text(weight: "bold", " ")#text(weight: "bold", "CPU ")]
  #riga(72, 348.475, 17.5, ampiezza: 171.109)[#text(weight: "bold", "•")#text(weight: "bold", " ")#text(weight: "bold", "Memoria centrale ")]
  #riga(72, 383.975, 17.5, ampiezza: 129.337)[#text(weight: "bold", "•")#text(weight: "bold", " ")#text(weight: "bold", "Input/output ")]
  #riga(72, 419.475, 17.5, ampiezza: 47.839)[#text(weight: "bold", "•")#text(weight: "bold", " ")#text(weight: "bold", "Bus")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// Pagina 13 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(13, grafica: "/assets/icdl/hardware-06.svg")[
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

// Pagina 14 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(14, grafica: "/assets/icdl/hardware-07.svg")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 539.574)[#text(weight: "bold", "Componenti di un computer")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 186.219)[#text(weight: "bold", "Scheda madre")]
  #riga(75.884, 181.752, 20, ampiezza: 786.16)[#text("La ")#text(weight: "bold", "scheda")#text(" ")#text(weight: "bold", "madre")#text(" è il cuore di ogni computer. Si tratta di una ")#text(weight: "bold", "piastra")#text(" ")#text(weight: "bold", "che raccoglie ")]
  #riga(75.884, 208.252, 20, ampiezza: 788.38)[#text(weight: "bold", "tutti i componenti principali ")#text("e li ")#text(weight: "bold", "collega")#text(" tra loro mediante collegamenti stampati di ")]
  #riga(75.884, 234.752, 20, ampiezza: 675)[#text("rame. A seconda del dispositivo, può essere di dimensioni molto diverse")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// Pagina 24 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(24, grafica: "/assets/icdl/hardware-11.svg")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 539.574)[#text(weight: "bold", "Componenti di un computer")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 244.566)[#text(weight: "bold", "Periferiche di input")]
  #riga(75.884, 180.027, 17.5, ampiezza: 808.833)[#text("Una periferica di input è qualsiasi dispositivo che permette al computer di ")#text(weight: "bold", "ricevere dati e comandi ")]
  #riga(75.884, 203.86, 17.5, ampiezza: 745.57)[#text(weight: "bold", "dall’esterno")#text(". Senza periferiche di input, il computer sarebbe come una scatola chiusa: ")#text(weight: "bold", "non ")]
  #riga(75.884, 227.692, 17.5, ampiezza: 545.177)[#text(weight: "bold", "riceverebbe alcuna informazione")#text(" e quindi non potrebbe fare nulla.")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// Pagina 25 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(25, grafica: "/assets/icdl/hardware-12.svg")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 539.574)[#text(weight: "bold", "Componenti di un computer")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 263.628)[#text(weight: "bold", "Periferiche di output")]
  #riga(75.884, 192.022, 17.5, ampiezza: 795.148)[#text("Una periferica di output è qualsiasi dispositivo che permette al computer di mostrare risultati e/o ")]
  #riga(75.884, 215.522, 17.5, ampiezza: 682.682)[#text("comunicare con l’esterno")#text(". Senza output, nessun risultato sarebbe visibile o utilizzabile.")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// Pagina 26 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(26, grafica: "/assets/icdl/hardware-13.svg")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 539.574)[#text(weight: "bold", "Componenti di un computer")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 339.984)[#text(weight: "bold", "Periferiche di input/output")]
  #riga(75.884, 180.027, 17.5, ampiezza: 785.698)[#text("Una periferica di input/output è un dispositivo con duplice funzione, permette di ")#text(weight: "bold", "ricevere dati e ")]
  #riga(75.884, 203.86, 17.5, ampiezza: 785.698)[#text(weight: "bold", "fornire risultati")#text(". È quindi necessario che svolga entrambe le funzioni: input e output.")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// Pagina 29 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(29, grafica: "/assets/icdl/hardware-14.svg")[
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

#slide("Altri componenti interni", "Grafica, energia, raffreddamento ed espansione")[
  - *GPU.* Elabora la grafica. Può essere integrata o trovarsi su una scheda dedicata.
  - *Alimentazione.* L’alimentatore o la batteria forniscono energia ai componenti.
  - *Raffreddamento.* Dissipatori, ventole o circuiti a liquido allontanano il calore.
  - *Schede aggiuntive.* Si inseriscono negli slot della scheda madre e aggiungono funzioni come Wi-Fi o audio.
]

// Pagina 15 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(15, grafica: "/assets/icdl/hardware-08.svg")[
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

#slide("I transistor", "Dai circuiti ai valori binari")[
  Una CPU moderna contiene miliardi di *transistor*. Possiamo immaginarli come minuscoli interruttori elettronici: i loro circuiti permettono di rappresentare ed elaborare valori binari.

  #esempio[
    Un nanometro è un miliardesimo di metro. In uno spessore di 0,06 mm, simile a quello di un capello, entrano 20.000 segmenti da 3 nm.
  ]
]

#slide("La frequenza di clock", "Quanti cicli avvengono in un secondo")[
  Il *clock* scandisce il lavoro della CPU con cicli regolari. *1 GHz* corrisponde a un miliardo di cicli al secondo.

  Per eseguire le istruzioni, il processore usa questi intervalli in modi diversi. La durata del lavoro dipende anche dal programma e dall’architettura della CPU.

  #esempio[
    Per confrontare due processori, oltre alla frequenza guarda il numero di core e considera il tipo di programma che dovranno eseguire.
  ]
]

// Pagina 17 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(17, grafica: "/assets/icdl/hardware-19.svg")[
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

#slide("Memoria centrale e secondaria", "Il piano di lavoro e il magazzino")[
  #tavola("/assets/svg/hardware-software/memorie.svg", altezza: 182pt)

  La *RAM* contiene i dati e le istruzioni in uso. È come un piano di lavoro: i materiali sono a portata di mano.

  La *memoria secondaria* (SSD o HDD) conserva file e programmi anche a computer spento, come un magazzino.
]

#slide("Capacità e velocità delle memorie", "Quanti dati e quanto tempo")[
  La *capacità* indica quanti dati può contenere una memoria. La *velocità di trasferimento* indica quanti dati possiamo leggere o scrivere ogni secondo.

  #table(
    columns: (1fr, 1.2fr, 1.1fr),
    table.header([*Memoria*], [*Velocità indicativa*], [*Capacità di esempio*]),
    [RAM], [20–30 GB/s], [2–64 GB],
    [SSD], [1–7 GB/s], [128 GB–2 TB],
    [HDD], [100–200 MB/s], [500 GB–10 TB],
  )

  Sono valori indicativi. La velocità effettiva dipende anche dal dispositivo, dal collegamento e dal tipo di operazione.
]

// Pagina 20 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(20, grafica: "/assets/icdl/hardware-23.svg")[
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

// Pagina 22 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(22, grafica: "/assets/icdl/hardware-24.svg")[
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

#slide("La cache", "Dati a portata di CPU")[
  #due-colonne(
    [
      La *cache* è una memoria più piccola e veloce della RAM, integrata nella CPU o molto vicina a essa.

      Tiene copie di dati e istruzioni che la CPU potrebbe riusare. Se il dato è già nella cache, la CPU lo ottiene più rapidamente.
    ],
    foto("cache", [I livelli di cache L1 e L2 nello schema.], altezza: 245pt),
    rapporto: (1.2fr, 1fr),
  )
]

#slide("ROM, memoria flash e avvio", "Le prime istruzioni restano disponibili")[
  La *ROM* (_Read Only Memory_) è una memoria *non volatile* destinata alla lettura di dati già registrati. Può contenere istruzioni fondamentali per un dispositivo.

  Nei computer moderni il *firmware* di avvio è spesso conservato in una memoria *flash*: mantiene i dati a computer spento e consente di aggiornare il firmware.
]

#slide("L’attività dei pancake", "Ingredienti, strumenti e ricetta")[
  #due-colonne(
    [
      *Ingredienti.* 250 ml di latte, 200 g di farina 00, 65 g di zucchero e 1 uovo.

      *Strumenti.* Una ciotola, una padella e una frusta.

      *Ricetta.* Mescola l’uovo con lo zucchero. Aggiungi latte e farina mescolando. Versa il composto in padella e cuoci per circa 4 minuti.
    ],
    foto("pancake", [Pancake pronti da servire.], altezza: 237pt),
    rapporto: (1.3fr, 1fr),
  )
]

#slide("Due modi di preparare i pancake", "Materiali lontani o sul piano di lavoro")[
  + *Prima esecuzione.* Gli ingredienti e gli strumenti sono sparsi. Ogni volta che ti serve qualcosa, interrompi la preparazione per andare a prenderlo.
  + *Seconda esecuzione.* Gli stessi materiali sono sul piano di lavoro. Li raggiungi senza allontanarti.

  #esempio[
    La ricetta rappresenta il *programma*. Il piano di lavoro rappresenta la *RAM*. Dove metteresti i materiali da conservare quando il lavoro è finito? A quale memoria corrisponde quel posto?
  ]
]

#slide("Completa la mappa", "Componenti e funzioni")[
  *Parole da inserire:* output, RAM, CPU, cache, input, SSD.

  #tavola("/assets/svg/mappa-esercizi-hardware.svg", altezza: 282pt)
]

#slide("Prova a ragionare", "Periferiche, CPU e memorie")[
  + Un touchscreen riproduce un video e rileva il tocco. Quale funzione è input e quale output?
  + Un documento è aperto ma le ultime modifiche non sono state salvate. Che cosa può succedere se manca la corrente?
  + Due computer hanno CPU con lo stesso numero di core. Quali altre caratteristiche potrebbero influire sulla rapidità con cui aprono e usano un’app?
]
