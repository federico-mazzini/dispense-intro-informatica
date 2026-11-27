#import "/styles/slides.typ": *
#import "/styles/slides-icdl.typ": riga

// Impaginazione ripresa da ICDL, src/4_gestione_file.typ.
// Il contatore segue questa presentazione; gli stili restano locali al file.
#let pagina-file-icdl(body) = page(margin: 0pt, footer: none)[
  #set text(font: "Libertinus Serif", size: 26pt, lang: "it", hyphenate: false,
    fill: rgb("#202020"), top-edge: 0pt, bottom-edge: 0pt)
  #set par(leading: 0.44em, spacing: 0.8em, justify: false)
  #set list(indent: 4pt, body-indent: 11pt, tight: false, spacing: 0.5em)
  #set enum(numbering: "1", indent: 4pt, body-indent: 10pt, tight: false, spacing: 0.5em)
  #set table(stroke: 1pt + black, fill: none, inset: 5pt)
  #body
  #place(top + left, dx: 48pt, dy: 26pt,
    rect(width: 40pt, height: 3pt, fill: rosso, stroke: none))
  #place(top + left, dx: 370pt, dy: 525pt, box(width: 220pt)[
    #context align(center)[#text(size: 11pt, fill: grigio)[#counter(page).display() / #counter(page).final().first()]]
  ])
]

#let area-file-icdl(body) = context {
  for corpo in (26, 25, 24, 23) {
    let prova = block(width: 832pt, breakable: false)[
      #set text(size: corpo * 1pt, top-edge: "cap-height", bottom-edge: "descender")
      #set par(leading: 0.32em, spacing: 0.58em)
      #set list(indent: 5pt, body-indent: 12pt, spacing: 0.45em)
      #show table: set text(size: corpo * 1pt)
      #body
    ]
    if measure(prova, width: 832pt).height <= 338pt { return prova }
  }
  panic("Il testo della nuova slide supera l'area disponibile.")
}

#let lezione-file-icdl(titolo, sottotitolo, body) = pagina-file-icdl[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 864)[#text(weight: "bold", titolo)]
  #riga(480, 115.79, 27, centro: true, ampiezza: 864)[#text(weight: "bold", sottotitolo)]
  #place(top + left, dx: 64pt, dy: 158pt, area-file-icdl(body))
  #riga(29.8, 528.275, 9.68)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68)[#text("Prof. Federico Mazzini")]
]

#let schema-file-icdl(titolo, sottotitolo, percorso, nota: none) = pagina-file-icdl[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 864)[#text(weight: "bold", titolo)]
  #riga(480, 115.79, 27, centro: true, ampiezza: 864)[#text(weight: "bold", sottotitolo)]
  #place(top + left, dx: 64pt, dy: 155pt,
    image(percorso, width: 832pt, height: if nota == none { 340pt } else { 285pt }, fit: "contain"))
  #if nota != none {
    place(top + left, dx: 64pt, dy: 457pt, block(width: 832pt)[
      #set text(size: 23pt, top-edge: "cap-height", bottom-edge: "descender")
      #set par(leading: 0.32em, spacing: 0.65em)
      #nota
    ])
  }
]

// Le slide della dispensa usano gli stessi titoli e sottotitoli delle pagine ICDL.
#let slide(titolo, sottotitolo, body) = page[
  #fregio
  #block(width: 100%, height: 91pt)[
    #set text(top-edge: 0pt, bottom-edge: 0pt)
    #riga(416, 28.34, 35, tinta: rosso, centro: true, ampiezza: 832)[#text(weight: "bold", titolo)]
    #riga(416, 61.79, 27, centro: true, ampiezza: 832)[#text(weight: "bold", sottotitolo)]
  ]
  #context {
    let corpo = block(width: larghezza, breakable: false, spacing: 0pt, body)
    if measure(corpo, width: larghezza).height > altezza-corpo {
      panic("Il contenuto supera l’area disponibile nella slide: " + titolo)
    }
    corpo
  }
]

#show: presentazione.with("File e cartelle")
#apertura("File e cartelle", "Formati, percorsi e organizzazione dei materiali")

// Pagina 2 del PDF ICDL “Gestione di file”.
#lezione-file-icdl("Che cos’è un file?", "Un contenitore digitale")[
Un *file* è un insieme di informazioni salvate su un computer e identificate da un nome.

Si può immaginare un file come un *contenitore digitale*: al suo interno possono esserci informazioni di diverso tipo, come testi, immagini, suoni o video.

Un documento di testo, una fotografia scattata con lo smartphone, una canzone e un video sono tutti esempi di file.
]

// Pagina 3 del PDF ICDL “Gestione di file”.
#lezione-file-icdl("Nome ed estensione", "Come riconosciamo un file")[
Il nome completo di un file comprende due parti, separate da un punto: *il nome scelto per riconoscerlo* e *l’estensione, che ne indica il formato*.

*Relazione di storia.pdf*

*Relazione di storia* descrive il contenuto; *.pdf* è l’estensione.

Il formato aiuta noi a capire di cosa si tratta e il computer a individuare un programma con cui aprirlo. In Windows 10 possiamo mostrare le estensioni da *Esplora file → Visualizza → Estensioni nomi file*.
]

// Pagina 4 del PDF ICDL “Gestione di file”.
#lezione-file-icdl("I tipi di file", "Le estensioni più comuni")[
#table(columns: (1fr, 1.3fr), inset: 6pt,
  table.header([*Tipo di contenuto*], [*Estensioni di esempio*]),
  [Testo e documenti], [.txt, .docx],
  [Fogli elettronici], [.xlsx],
  [Presentazioni], [.pptx],
  [Documenti PDF], [.pdf],
  [Immagini], [.jpg, .png, .gif],
  [Audio e video], [.mp3, .wav, .mp4, .mov],
  [Archivi compressi], [.zip, .rar],
  [Programmi eseguibili in Windows], [.exe],
)
]

// Pagina 6 del PDF ICDL “Gestione di file”.
#lezione-file-icdl("Cartelle e sottocartelle", "Organizzare i materiali")[
Una *cartella*, chiamata anche _directory_, è un contenitore che permette di raggruppare file e mantenerli ordinati. Usare cartelle con nomi chiari aiuta a trovare più facilmente ciò che serve.

Una cartella può contenere *sia file sia altre cartelle*: una cartella contenuta in un’altra viene chiamata *sottocartella*.

Si può creare una cartella per l’anno scolastico e, al suo interno, una cartella per ogni materia. L’insieme di cartelle e sottocartelle forma una *struttura gerarchica* chiamata *albero*.
]

// Pagina 7 del PDF ICDL “Gestione di file”.
#schema-file-icdl("L’albero delle cartelle", "Un esempio con i materiali della classe", "/assets/svg/albero-file-cartelle.svg")

// Pagina 8 del PDF ICDL “Gestione di file”.
#lezione-file-icdl("Il percorso di un file", "Un indirizzo per ritrovarlo")[
Il *percorso* di un file, chiamato anche _path_, indica la sua posizione. È come un *indirizzo*: specifica dove trovare il file, indicando le cartelle che lo contengono.

`C:\Documenti\Classe 1A\Informatica\Appunti.txt`

- *C:* indica l’unità di archiviazione.
- *Documenti*, *Classe 1A* e *Informatica* sono le cartelle da attraversare, in quest’ordine.
- *Appunti.txt* è il file da aprire, all’interno di Informatica.

Il simbolo `\` separa i diversi elementi del percorso.
]

// Adattata dalla pagina 24 ICDL al lessico già introdotto in classe.
#lezione-file-icdl("Dove conserviamo i file?", "Locale e cloud")[
- *In locale*: il file è salvato nella memoria del dispositivo che stiamo usando. Per esempio, un documento sul nostro computer è disponibile anche senza Internet.
- *Nel cloud*: il file è salvato sui computer di un servizio online, come Google Drive o OneDrive. Vi accediamo tramite Internet con il nostro account, anche da dispositivi diversi.
- *Su supporti esterni*: possiamo salvare i file anche su una chiavetta USB e aprirli collegandola al computer. Anche questi file sono locali: per usarli non serve Internet.
]

// Confronto originale: accesso locale e cloud, senza equivalente in ICDL.
#slide("Dove si salvano i file?", "Sul computer e nel cloud")[
  #table(
    columns: (0.8fr, 1.25fr, 1.3fr),
    table.header([], [*Sul computer*], [*Nel cloud*]),
    [Posizione], [Il file risiede all’interno della memoria del nostro dispositivo.], [Il file risiede sui server di un servizio cloud, come Google Drive o OneDrive.],
    [Accesso], [I file sono locali e accessibili dal dispositivo senza bisogno di Internet.], [I file sono accessibili tramite Internet, usando il proprio account.],
    [Accesso da un altro dispositivo], [È necessario inviare il file o condividerlo caricandolo su un servizio cloud.], [È sufficiente accedere allo stesso servizio cloud con il proprio account.],
  )
]

#slide("Il formato PDF", "L’impaginazione del documento")[
  Il *PDF* mantiene l’aspetto del documento: testo, immagini e impaginazione si vedono in modo coerente su dispositivi diversi.

  Si usa per consegnare una relazione, distribuire una dispensa o preparare un documento da stampare. Per continuare a lavorare sul testo, conserva anche il documento modificabile.

  #tavola("/assets/svg/esportazione-pdf.svg", altezza: 120pt)
]

// Pagina 28 del PDF ICDL “Gestione di file”.
#lezione-file-icdl("I file ZIP", "Più materiali in un unico file")[
Uno *ZIP* è un file con estensione `.zip` che raccoglie altri file e cartelle in *un unico file*, mantenendo l’organizzazione delle sottocartelle. Si chiama anche *archivio ZIP*.

Lo usiamo per *inviare più file insieme*, per esempio documenti e immagini di una ricerca, e per *risparmiare spazio*.

La compressione può ridurre la dimensione dei file, ma il risultato dipende dal loro contenuto: un archivio non diventa necessariamente molto più piccolo.
]

// Pagina 29 del PDF ICDL “Gestione di file”.
#schema-file-icdl("Creare uno ZIP", "Dalla cartella a un unico file", "/assets/svg/compressione-zip.svg", nota: [Lo ZIP contiene una *copia dei file e delle sottocartelle*. La cartella originale rimane al suo posto e puoi continuare a usarla.])

// Pagina 31 del PDF ICDL “Gestione di file”.
#schema-file-icdl("Estrarre uno ZIP", "Ritrovare i file e le cartelle", "/assets/svg/estrazione-zip.svg", nota: [*Estrarre uno ZIP* significa copiare i file e le cartelle che contiene in una cartella del computer. Anche lo ZIP originale rimane disponibile.])

// Invio e condivisione dei file.
#apertura("Inviare e condividere file", "")

#slide("Inviare e condividere un file", "Una copia oppure l’accesso allo stesso file")[
  *Inviare un file* significa farne arrivare una *copia* a un’altra persona. Il destinatario riceve la versione che abbiamo inviato e può conservarla sul proprio dispositivo.

  *Condividere un file* significa dare ad altre persone il *permesso di accedere* a un file nel cloud. Le persone autorizzate possono aprire lo stesso file e ritrovarne gli aggiornamenti.

  #esempio[
    Invio una copia degli appunti per consegnarli. Condivido il documento per continuare a lavorarci insieme.
  ]
]

#slide("Come si invia un file?", "I modi per far arrivare una copia")[
  - *Email*: si aggiunge il file al messaggio come *allegato* e si indica il destinatario.
  - *Messaggistica*: si allega il file a una chat, per esempio come documento, foto o video.
  - *Trasferimento diretto*: si copia il file su una chiavetta USB da consegnare oppure lo si trasferisce con Bluetooth tra dispositivi compatibili.

  Prima dell’invio controlliamo *destinatario, file e dimensione*: ogni servizio può avere un limite per gli allegati.
]

#slide("Come si condivide un file?", "Il file nel cloud e il link per aprirlo")[
  + Carichiamo il file su un servizio cloud, come *Google Drive* o *OneDrive*, oppure creiamo il documento direttamente lì.
  + Apriamo l’opzione *Condividi* e scegliamo *chi può accedere* e *che cosa può fare*.
  + Invitiamo le persone con il loro indirizzo email oppure copiamo il *link* e lo mandiamo ai destinatari.

  Il *link* è l’indirizzo per raggiungere il file. I *permessi* stabiliscono chi può aprirlo e che cosa può fare.
]

#slide("Condivisione e permessi", "Chi può accedere e che cosa può fare")[
  *Accesso limitato*: aprono il file solo le persone autorizzate. *Chiunque abbia il link*: può aprirlo chi riceve quel collegamento, secondo le impostazioni disponibili.

  #table(
    columns: (1fr, 2fr),
    table.header([*Permesso*], [*Che cosa permette di fare*]),
    [Visualizzatore], [Aprire e leggere il materiale.],
    [Commentatore], [Leggere e lasciare commenti.],
    [Editor], [Modificare il materiale, se il tipo di file lo permette.],
  )

  Prima di inviare il link, controlliamo *accesso e permessi*. Possiamo cambiarli o togliere l’accesso in seguito.
]

#slide("Inviare: vantaggi e svantaggi", "Il destinatario conserva una copia")[
  *Vantaggi*
  - Chi riceve il file può conservarlo e aprirlo anche senza Internet, dopo averlo scaricato.
  - È utile per consegnare una versione definitiva, per esempio una relazione in PDF.

  *Svantaggi*
  - Le modifiche successive non arrivano al destinatario: bisogna inviare una nuova copia.
  - Si possono confondere le versioni. I servizi possono limitare la dimensione degli allegati.
]

#slide("Condividere: vantaggi e svantaggi", "Più persone accedono allo stesso file")[
  *Vantaggi*
  - Lo stesso link permette di ritrovare gli aggiornamenti del file condiviso.
  - Con i permessi adatti si può lavorare insieme e decidere chi può leggere o modificare.

  *Svantaggi*
  - Di norma serve Internet; l’accesso dipende dal servizio e dai permessi impostati.
  - Un’impostazione sbagliata può dare accesso a persone indesiderate oppure impedire al destinatario di aprire il file.
]

#slide("Allegato o link?", "La scelta dipende dallo scopo")[
  #table(
    columns: (1.4fr, 1fr),
    table.header([*Situazione*], [*Scelta possibile*]),
    [Consegnare una versione definitiva], [Inviare il PDF in allegato.],
    [Far lavorare qualcuno su una propria copia], [Inviare il file modificabile.],
    [Lavorare insieme sullo stesso documento], [Condividere con il permesso Editor.],
    [Far leggere materiale che si aggiorna], [Condividere con il permesso Visualizzatore.],
    [Far arrivare un file troppo grande per l’email], [Condividere il file con un link.],
  )

  Il *PDF* è un formato. Puoi consegnarlo sia come allegato sia tramite link.
]

#slide("Come far arrivare una cartella", "Un archivio ZIP o una cartella condivisa")[
  *Per consegnare una copia.* Crea uno ZIP della cartella e allegalo all’email, se rientra nel limite di dimensione. Chi lo riceve può estrarlo.

  *Per dare accesso a una cartella che cambia.* Caricala su Drive, scegli persone e permessi, quindi invia il link.

  #esempio[
    Gli appunti di gruppo cambiano ogni settimana. Con una cartella condivisa il gruppo ritrova il materiale aggiornato nello stesso posto.
  ]
]
