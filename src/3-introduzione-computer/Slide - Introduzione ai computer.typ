#import "/styles/slides.typ": *

#show: presentazione.with("Introduzione ai computer")

// Testi: capitolo 1 della dispensa 03; conclusione introduttiva dal capitolo 2.
// Disposizione e sequenza: “Intro al computer.pdf”, fornito dal docente.
// Esempi visivi → definizione e funzionamento → tipologie → embedded → server.
#let immagine(nome, altezza: 200pt) = align(center,
  image("/assets/immagini/3-introduzione-computer/" + nome + ".jpg",
    width: 100%, height: altezza, fit: "contain"),
)
#let tipo(titolo, nome, body) = grid(
  columns: (116pt, 1fr), column-gutter: 23pt, align: horizon,
  immagine(nome, altezza: 69pt),
  [#set text(size: 22pt)
    *#titolo* \
    #body],
)

#apertura("Introduzione ai computer", "")

#slide("Il computer", "Alcuni esempi")[
  #due-colonne(
    grid(columns: (1fr, 1fr), column-gutter: 14pt,
      immagine("portatile", altezza: 250pt),
      immagine("desktop", altezza: 250pt),
    ),
    [#align(center)[#text(size: 39pt, weight: "bold", fill: rosso)[Questi sono computer!]]],
    rapporto: (1.5fr, 1fr),
  )
]

#slide("Il computer", "Alcuni esempi")[
  #due-colonne(
    [#align(center)[#text(size: 39pt, weight: "bold", fill: rosso)[Ma anche questi sono computer!]]],
    [
      #grid(columns: (1fr, 1fr), column-gutter: 15pt,
        immagine("smartphone", altezza: 160pt),
        immagine("console", altezza: 160pt),
      )
      #v(9pt)
      #immagine("smartwatch", altezza: 144pt)
    ],
    rapporto: (1fr, 1.45fr),
  )
]

#slide("Che cos’è un computer?", "Un dispositivo elettronico programmabile")[
  Un *computer* è una macchina che usa l’energia elettrica per eseguire le istruzioni di un *programma*.

  Un *programma* è una sequenza di istruzioni: indica al computer che cosa deve fare.

  *Programmabile* significa che la stessa macchina può svolgere compiti diversi usando programmi diversi.
]

#slide("Come funziona un computer", "Riceve dati, li elabora e produce risultati")[
  #set text(size: 24pt)
  I *dati* possono essere numeri, testi, immagini e suoni. *Elaborarli* significa eseguire operazioni su di essi per ottenere un risultato.

  #tavola("/assets/svg/computer-dati-programma-risultati.svg", altezza: 185pt)
  #v(8pt)
  *Calcolatrice:* inseriamo 2 e 3 → il programma esegue la somma → sullo schermo compare 5.
]

#slide("La stessa macchina, tanti usi", "Cambia il programma, cambia ciò che possiamo fare")[
  Un’*applicazione*, o *app*, è un programma che usiamo per svolgere un’attività.

  #v(12pt)
  #grid(columns: (1fr, 1fr, 1fr), column-gutter: 28pt,
    [*Calcolatrice* \
      Con il programma Calcolatrice facciamo i conti.],
    [*Macchina da scrivere* \
      Con un programma di scrittura prepariamo un documento.],
    [*Telefono* \
      Con un’app per le chiamate parliamo con un’altra persona.],
  )
  #v(16pt)
  La macchina rimane la stessa: sono i *programmi* a permetterci di usarla in modi diversi.
]

#slide("Il computer", "Le principali tipologie")[
  #set block(spacing: 0pt)
  #tipo([Computer desktop], "desktop")[Computer fissi da usare su una scrivania, con monitor, tastiera e mouse.]
  #v(11pt)
  #tipo([Computer portatili], "portatile")[Detti anche *notebook* o *laptop*: facili da trasportare, con schermo, tastiera e batteria ricaricabile.]
  #v(11pt)
  #tipo([Smartphone], "smartphone")[Telefoni che eseguono app. Lo schermo *touchscreen* riconosce il tocco delle dita.]
  #v(11pt)
  #tipo([Tablet], "tablet")[Computer portatili con touchscreen, in genere più grande di quello di uno smartphone.]
]

#slide("Il computer", "Le principali tipologie")[
  #set block(spacing: 0pt)
  #tipo([Console], "console")[Computer pensati soprattutto per i videogiochi. Il giocatore invia comandi con un *controller*.]
  #v(11pt)
  #tipo([Server], "server")[Computer che forniscono dati e servizi ad altri dispositivi collegati attraverso una rete.]
  #v(11pt)
  #tipo([Dispositivi wearable], "smartwatch")[Computer *indossabili*, come gli smartwatch. I sensori rilevano dati, per esempio sul movimento.]
  #v(11pt)
  #tipo([Sistemi embedded], "embedded")[Computer *incorporati* in altri dispositivi per controllarne il funzionamento.]
]

#slide("Tipologie di computer", "I sistemi embedded")[
  #due-colonne(
    [#set text(size: 24pt)
      Un *sistema embedded* è un computer inserito in un dispositivo o in un macchinario per controllarne una o più funzioni.

      _Embedded_ significa *«incorporato»*.

      È progettato per *compiti specifici*: in una lavatrice, per esempio, controlla le fasi del lavaggio.
    ],
    immagine("robot", altezza: 292pt),
    rapporto: (1fr, 1.2fr),
  )
]

#slide("I sistemi embedded", "Esempi nell’uso quotidiano")[
  #set text(size: 25pt)
  - *Elettrodomestici:* controllano il funzionamento di lavatrici, forni a microonde e frigoriferi.
  - *Automobili:* gestiscono il motore, gli airbag e l’*ABS*, che aiuta a evitare il bloccaggio delle ruote in frenata.
  - *Dispositivi medici:* nel pacemaker aiutano il cuore a mantenere un ritmo regolare.
  - *Robotica:* controllano i robot industriali nelle catene di montaggio.
]

#slide("Un computer che aiuta il cuore", "Il pacemaker")[
  #due-colonne(
    immagine("pacemaker", altezza: 300pt),
    [#set text(size: 24pt)
      Il *pacemaker* contiene un piccolo computer che aiuta il cuore a battere con regolarità.

      Il modello illustrato viene impiantato *sotto la pelle, nella parte alta del torace*, ed è collegato al cuore da sottili fili.

      Funziona grazie a una *batteria* e rimane attivo *giorno e notte*.
    ],
    rapporto: (1fr, 1.35fr),
  )
]

#slide("Il computer nel pacemaker", "Gli stessi tre passaggi")[
  #set text(size: 25pt)
  #table(columns: (1fr, 2.7fr),
    table.header([*Passaggio*], [*Che cosa succede*]),
    [*Riceve dati*], [Rileva i segnali elettrici del cuore.],
    [*Li elabora*], [Il programma controlla il tempo trascorso tra i battiti.],
    [*Produce un risultato*], [Se il cuore batte troppo lentamente, invia piccoli impulsi elettrici che lo stimolano a battere.],
  )
  #v(15pt)
  Un computer può quindi produrre anche *un’azione*, come un impulso elettrico: il risultato non deve essere per forza mostrato su uno schermo.
]

#slide("Tipologie di computer", "I server")[
  #due-colonne(
    [#set text(size: 24pt)
      Un *server* è un computer che mette *dati e servizi* a disposizione di altri dispositivi.

      I dispositivi comunicano attraverso una *rete*: un insieme di dispositivi collegati per scambiarsi dati.

      Per rendere disponibili i servizi in ogni momento, normalmente resta acceso *24 ore al giorno, 7 giorni su 7*.
    ],
    immagine("server-ibm", altezza: 305pt),
    rapporto: (1.15fr, 1fr),
  )
]

#slide("I server e Internet", "Una richiesta, una risposta")[
  #set text(size: 24pt)
  Quando apriamo un *sito Internet*, il nostro dispositivo chiede a un server i dati necessari per visualizzarlo.

  #grid(columns: (1fr, 65pt, 1fr), column-gutter: 18pt, align: horizon,
    [#align(center)[*Il nostro dispositivo* \
      Chiede i dati del sito.]],
    [#align(center)[#text(size: 43pt, fill: rosso)[⇄]]],
    [#align(center)[*Il server* \
      Riceve la richiesta e invia i dati.]],
  )
  #v(18pt)
  Il *browser*, cioè il programma con cui navighiamo, usa i dati ricevuti per mostrare la pagina sullo schermo.
]

#slide("Dove si trova il cloud?", "I nostri file nella memoria di un server")[
  #set text(size: 25pt)
  Quando salviamo un file nel *cloud*, lo inviamo attraverso Internet a un *server*, per esempio di Google Drive.

  Quel server è un computer in un *luogo fisico del mondo*, anche molto lontano da noi: conserva il file e ce lo rende accessibile online.

  Per aprire o aggiornare il file online dobbiamo poter *contattare il server*: serve una connessione Internet.
]

#slide("I server", "Esempi nell’uso quotidiano")[
  #set text(size: 24pt)
  - *Video e musica in streaming:* il server invia i dati mentre guardiamo o ascoltiamo, senza dover scaricare prima tutto il contenuto.
  - *Giochi online:* i server scambiano con i giocatori dati come posizioni, azioni e punteggi della partita.
  - *Cloud:* servizi come Drive e iCloud conservano i file. Li ritroviamo da dispositivi diversi entrando nel nostro *account*, il profilo personale del servizio.
  - *Siti Internet e posta elettronica:* i server forniscono i dati dei siti e ricevono e inoltrano le email.
]

// Ultima slide mantenuta come introduzione, senza gli approfondimenti successivi.
#slide("Hardware e software", "Le due parti fondamentali di un computer")[
  #grid(columns: (1fr, 1fr), column-gutter: 32pt, align: top,
    [#set text(size: 24pt)
      #text(size: 28pt, weight: "bold", fill: rosso)[Hardware]

      I *componenti fisici*: le parti interne e i dispositivi come tastiera e schermo.

      Ci permettono di *usare il computer* e di ricevere i risultati.
      #v(6pt)
      #tavola("/assets/immagini/4-hardware/scheda-madre.jpg", altezza: 105pt)
    ],
    [#set text(size: 24pt)
      #text(size: 28pt, weight: "bold", fill: rosso)[Software]

      I *programmi* contengono le istruzioni che stabiliscono che cosa fa il computer.

      Per scrivere un documento usiamo un *programma di scrittura*.
      #v(6pt)
      #galleria(immagine("windows", altezza: 68pt), immagine("android", altezza: 68pt), immagine("drive", altezza: 68pt))
    ],
  )
]
