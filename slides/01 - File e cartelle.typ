#import "/styles/slides.typ": *

#show: presentazione.with("File e cartelle")
#apertura("File e cartelle", "Formati, percorsi e organizzazione dei materiali")

#slide("Che cos’è un file?", "Un contenitore digitale")[
  Un *file* è un insieme di dati salvati e identificati da un nome. Può contenere testo, immagini, suoni o video.

  #esempio[
    Una relazione di informatica, una foto scattata con lo smartphone e una registrazione vocale sono tutti esempi di file.
  ]
]

#slide("Nome ed estensione", "Come riconosciamo il formato")[
  #esempio[
    Relazione di storia#text(fill: rosso, weight: "bold")[.pdf]
  ]

  *Relazione di storia* è il nome scelto per riconoscere il contenuto. *.pdf* è l’estensione: la parte finale dopo il punto.

  L’estensione indica il formato e aiuta il computer a scegliere un programma adatto ad aprire il file.
]

#slide("I tipi di file", "Le estensioni più comuni")[
  #table(
    columns: (1fr, 1.3fr),
    table.header([*Categoria*], [*Estensioni di esempio*]),
    [Documenti], [`.txt`, `.docx`, `.pdf`],
    [Fogli di calcolo e presentazioni], [`.xlsx`, `.pptx`],
    [Immagini], [`.jpg`, `.png`, `.gif`],
    [Audio], [`.mp3`, `.wav`],
    [Video], [`.mp4`, `.mov`],
    [Archivi compressi], [`.zip`, `.rar`],
  )
]

#slide("Cartelle e sottocartelle", "L’albero dei materiali di 1A")[
  Una *cartella* (o _directory_) può contenere file e altre cartelle. Una cartella dentro un’altra si chiama *sottocartella*.

  #tavola("/assets/svg/albero-file-cartelle.svg", altezza: 250pt)
]

#slide("Il percorso di un file", "Un indirizzo per ritrovarlo")[
  Il *percorso*, o _path_, indica dove si trova il file.

  #esempio[`C:\Documenti\Classe 1A\Informatica\Appunti.txt`]

  - *C:* indica l’unità di archiviazione.
  - *Documenti*, *Classe 1A* e *Informatica* sono le cartelle da attraversare, in quest’ordine.
  - *Appunti.txt* è il file da aprire. La barra inversa (`\`) separa gli elementi del percorso.
]

#slide("Dove si salvano i file?", "Sul computer e nel cloud")[
  #table(
    columns: (0.8fr, 1.25fr, 1.3fr),
    table.header([], [*Sul computer*], [*Nel cloud*]),
    [Posizione], [Nell’unità di archiviazione del dispositivo.], [Sui server di servizi come Drive o OneDrive.],
    [Accesso], [I file locali si aprono anche senza Internet.], [Di norma si accede via Internet con il proprio account.],
    [Da un altro dispositivo], [Si trasferisce o sincronizza il file.], [Si può ritrovare il file accedendo allo stesso account.],
  )
]

#slide("Il formato PDF", "L’impaginazione del documento")[
  Il *PDF* mantiene l’aspetto del documento: testo, immagini e impaginazione si vedono in modo coerente su dispositivi diversi.

  Si usa per consegnare una relazione, distribuire una dispensa o preparare un documento da stampare. Per continuare a lavorare sul testo, conserva anche il documento modificabile.

  #tavola("/assets/svg/esportazione-pdf.svg", altezza: 120pt)
]

#slide("I file ZIP", "Un unico archivio per più file")[
  Uno *ZIP* raccoglie file e cartelle in un unico archivio, mantenendo la struttura delle sottocartelle. La compressione può ridurre lo spazio occupato.

  Per *creare* l’archivio, seleziona la cartella o i file in Esplora file e scegli il comando per comprimere in formato ZIP.

  #tavola("/assets/svg/compressione-zip.svg", altezza: 125pt)
]

#slide("Estrarre uno ZIP", "I file e le cartelle dell’archivio")[
  In Esplora file, fai clic destro sullo ZIP e scegli *Estrai tutto*. Indica dove creare la cartella con i file estratti.

  Lo ZIP rimane disponibile. Puoi aprire e modificare i file estratti nella cartella di destinazione.

  #tavola("/assets/svg/estrazione-zip.svg", altezza: 130pt)
]

#slide("Prova in laboratorio", "Organizzare, esportare ed estrarre")[
  + Crea la cartella `Classe 1A` con una sottocartella `Informatica`.
  + Salva un documento in `Informatica` ed esportalo in PDF. Hai ottenuto due file: quali sono i loro nomi completi?
  + Crea uno ZIP della cartella `Classe 1A` ed estrailo in un’altra posizione. La struttura delle cartelle è rimasta la stessa?
]
