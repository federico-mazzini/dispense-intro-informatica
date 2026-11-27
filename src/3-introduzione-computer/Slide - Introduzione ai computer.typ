#import "/styles/slides.typ": *
#import "/styles/slides-icdl.typ": pagina-icdl, riga

#show: presentazione.with("Introduzione ai computer")
#let foto(nome, didascalia, altezza: 155pt) = figura(
  "/assets/immagini/3-introduzione-computer/" + nome + ".jpg", didascalia, altezza: altezza,
)

#apertura("Introduzione ai computer", "Dispositivi, hardware e software")

// Pagina 5 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(5, grafica: "/assets/icdl/introduzione-02.svg")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 221.172)[#text(weight: "bold", "Il computer")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 182.331)[#text(weight: "bold", "Alcuni esempi")]
  #riga(29.8, 528.275, 9.68, ampiezza: 170.755)[#text("IIS Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
  #riga(699.39, 221.805, 40, tinta: rosso, centro: true, ampiezza: 225.8)[#text(weight: "bold", "Questi sono ")]
  #riga(695.55, 264.685, 40, tinta: rosso, centro: true, ampiezza: 192.6)[#text(weight: "bold", "computer!")]
]

// Pagina 6 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(6, grafica: "/assets/icdl/introduzione-03.svg")[
  #riga(480, 115.79, 27, centro: true, ampiezza: 182.331)[#text(weight: "bold", "Alcuni esempi")]
  #riga(29.8, 528.275, 9.68, ampiezza: 170.755)[#text("IIS Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
  #riga(242.673, 243.205, 40, tinta: rosso, centro: true, ampiezza: 305.88)[#text(weight: "bold", "Ma anche questi ")]
  #riga(238.833, 286.085, 40, tinta: rosso, centro: true, ampiezza: 289.52)[#text(weight: "bold", "sono computer!")]
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 221.172)[#text(weight: "bold", "Il computer")]
]

#slide("I computer oggi", "Forme diverse, lo stesso principio")[
  Un computer *riceve dati*, li *elabora* seguendo le istruzioni di un programma e *produce risultati*.

  #esempio[
    Uno smartwatch riceve dati dai suoi sensori e mostra informazioni sul quadrante. Quali dati usa per stimare quanti passi hai fatto?
  ]
]

// Pagina 7 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(7, grafica: "/assets/icdl/introduzione-04.svg")[
  #riga(480, 115.79, 27, centro: true, ampiezza: 120.258)[#text(weight: "bold", "Tipologie")]
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 221.172)[#text(weight: "bold", "Il computer")]
  #riga(204.386, 162, 15, ampiezza: 693.912)[#text(weight: "bold", "I COMPUTER")#text(" ")#text(weight: "bold", "DESKTOP")#text(" (chiamati anche computer fissi) vengono chiamati così proprio perché ")]
  #riga(204.386, 182, 15, ampiezza: 693.912)[#text("sono progettati per poter essere posizionati su una scrivania o su un tavolo. I PC, in generale, ")]
  #riga(204.386, 202, 15, ampiezza: 610.185)[#text("offrono delle prestazioni mediamente superiori rispetto alle altre tipologie di computer.")]
  #riga(209.386, 257.663, 15, ampiezza: 693.921)[#text(weight: "bold", "I COMPUTER")#text(" ")#text(weight: "bold", "PORTATILI")#text(" (chiamati anche semplicemente notebook o laptop) sono dei computer ")]
  #riga(209.386, 277.663, 15, ampiezza: 693.921)[#text("di dimensioni ridotte proprio per poter essere facilmente trasportati ovunque (infatti sono dotati ")]
  #riga(209.386, 297.663, 15, ampiezza: 192.105)[#text("di una batteria ricaricabile).")]
  #riga(209.386, 347.775, 15, ampiezza: 693.911)[#text(weight: "bold", "GLI")#text(" ")#text(weight: "bold", "SMARTPHONE")#text(" non sono altro che dei telefoni cellulari dotati di uno schermo touchscreen ")]
  #riga(209.386, 367.775, 15, ampiezza: 693.915)[#text("nonché di funzionalità proprie dei computer. Con uno smartphone è possibile infatti effettuare ")]
  #riga(209.386, 387.775, 15, ampiezza: 693.924)[#text("delle telefonate, navigare su Internet, inviare e/o ricevere dei messaggi di testo o di posta ")]
  #riga(209.386, 407.775, 15, ampiezza: 113.355)[#text("elettronica, ecc.")]
  #riga(204.386, 452.596, 15, ampiezza: 616.41)[#text(weight: "bold", "I TABLET")#text(" sono dei dispositivi dotati di caratteristiche hardware e software proprie degli ")]
  #riga(204.386, 472.596, 15, ampiezza: 586.065)[#text("smartphone che, a seconda dei casi, consentono o meno di sostituire un computer ")]
  #riga(204.386, 492.596, 15, ampiezza: 63.345)[#text("portatile.")]
  #riga(29.8, 528.275, 9.68, ampiezza: 170.755)[#text("IIS Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

#slide("Console e dispositivi indossabili", "Computer pensati per attività diverse")[
  - Una *console* è progettata soprattutto per i videogiochi. Il giocatore usa un *controller* per inviare comandi.
  - Uno *smartwatch* è un computer *indossabile* (_wearable_). I suoi sensori possono raccogliere dati sul battito o sul movimento e mostrarli sul quadrante.

  #esempio[
    Un controller e un sensore di movimento ricevono dati in modi diversi. Quali dati raccolgono?
  ]
]

#slide("I sistemi embedded", "Computer incorporati in altri dispositivi")[
  #due-colonne(
    [
      Un *sistema embedded* è un computer incorporato in un dispositivo o in un macchinario. Svolge compiti precisi.

      In una lavatrice controlla le fasi del lavaggio. In un’auto un sistema incorporato può gestire l’ABS. Altri esempi si trovano nei pacemaker e nei robot industriali.
    ],
    foto("robot", [Robot in una catena di montaggio.], altezza: 230pt),
    rapporto: (1.3fr, 1fr),
  )
]

#slide("I server", "Richieste e risposte attraverso la rete")[
  Un *server* mette dati e servizi a disposizione di altri dispositivi. Il dispositivo che fa la richiesta svolge il ruolo di *client*.

  #tavola("/assets/svg/hardware-software/client-server.svg", altezza: 200pt)

  Quando apri un sito o guardi un video in streaming, il tuo dispositivo riceve dati da uno o più server.
]

#slide("Servizi che usano i server", "Web, streaming, gioco online e cloud")[
  #due-colonne(
    [
      - *Web e posta.* I server forniscono pagine web e gestiscono le email.
      - *Streaming.* Inviano i dati mentre guardiamo o ascoltiamo.
      - *Gioco online.* Coordinano le azioni dei giocatori.
      - *Cloud.* Conservano i file e li rendono accessibili tramite l’account.
    ],
    foto("server-ibm", [Sistemi server.], altezza: 225pt),
    rapporto: (1.35fr, 1fr),
  )
]

// Pagina 9 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(9, grafica: "/assets/icdl/introduzione-10.svg")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 402.486)[#text(weight: "bold", "Software e Hardware")]
  #riga(29.8, 528.275, 9.68, ampiezza: 170.755)[#text("IIS Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
  #riga(41.476, 181.475, 17.5, ampiezza: 100.328)[#text(weight: "bold", "HARDWARE ")]
  #riga(41.476, 200.31, 17.5, ampiezza: 412.802)[#text("Per HARDWARE (HW) si intende tutto ciò che ")]
  #riga(41.476, 223.81, 17.5, ampiezza: 412.802)[#text("riguarda il computer e che è tangibile, materiale, ")]
  #riga(41.476, 247.31, 17.5, ampiezza: 412.8)[#text("che ha un peso fisico. In sostanza è l’insieme ")]
  #riga(41.476, 270.81, 17.5, ampiezza: 412.798)[#text("delle componenti fisiche (meccaniche, elettriche, ")]
  #riga(41.476, 294.31, 17.5, ampiezza: 412.78)[#text("elettroniche, magnetiche e ottiche) che ")]
  #riga(41.476, 317.81, 17.5, ampiezza: 221.568)[#text("costituiscono l’elaboratore.")]
  #riga(507.71, 181.548, 17.5, ampiezza: 96.443)[#text(weight: "bold", "SOFTWARE ")]
  #riga(507.71, 200.383, 17.5, ampiezza: 412.793)[#text("Per SOFTWARE (SW) si intende tutto ciò che c’è ")]
  #riga(507.71, 223.883, 17.5, ampiezza: 412.797)[#text("ma non è tangibile. È la parte invisibile di un ")]
  #riga(507.71, 247.383, 17.5, ampiezza: 412.8)[#text("elaboratore, costituita dai programmi residenti ")]
  #riga(507.71, 270.883, 17.5, ampiezza: 412.806)[#text("nella memoria del computer o nei supporti di ")]
  #riga(507.71, 294.383, 17.5, ampiezza: 138.757)[#text("memorizzazione.")]
]

#slide("Completa la mappa", "Tipi di computer e loro componenti")[
  *Parole da inserire:* software, server, hardware, wearable, embedded, portatile.

  #tavola("/assets/svg/mappa-esercizi-introduzione-computer.svg", altezza: 265pt)
]

#slide("Prova a classificare", "Dispositivi, componenti e programmi")[
  + Una lavatrice regola da sola le fasi del programma. Che tipo di computer lo permette?
  + Apri un video online. Quale ruolo svolge il server?
  + Classifica batteria, Android, schermo e un’app di messaggistica come hardware o software. Motiva le risposte.
]
