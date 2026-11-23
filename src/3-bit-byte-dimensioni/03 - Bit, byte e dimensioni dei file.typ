#import "/styles/template.typ": dispensa
#show: dispensa.with(
  titolo: "Bit, byte e dimensioni dei file",
  sottotitolo: "Dati e informazioni, file, unità di misura e conversioni. Teoria ed esercizi.",
  numerazione: "1.",
)

#[
#import "/styles/didattica.typ": *
#import "/styles/template.typ": grigio

#[
= Dati e informazioni

Ogni giorno utilizziamo tantissimi *dati*: numeri, parole, immagini, suoni e video. Ma che differenza c'è tra un dato e un'informazione?

== Che cos'è un dato?

Un *dato* è un elemento che rappresenta qualcosa, come un numero, una parola o un simbolo.

#esempio-teoria(titolo: [Esempi di dati])[
  `5` · `Luca` · `18:30` · `37,5`

  Presi singolarmente, questi dati non ci dicono molto. Il numero *25*, ad esempio, potrebbe rappresentare un'età, una temperatura o un prezzo.
]

== Che cos'è un'informazione?

Un'*informazione* è il significato che possiamo ricavare da uno o più dati quando conosciamo il contesto a cui si riferiscono.

#diagramma("/assets/svg/dato_informazione.svg", width: 100%)

Il dato è sempre lo stesso, ma l'informazione cambia in base al contesto.

#da-ricordare[Dai dati alle informazioni][
  I dati rappresentano qualcosa, mentre le informazioni sono i significati che ricaviamo interpretando i dati.
]
]

#pagebreak()
#[
= Il file: un contenitore di dati

Un *file* è un insieme di dati digitali conservati con un nome. Un file può contenere un testo, una fotografia, un brano audio, un video oppure altri tipi di contenuto.

Possiamo immaginarlo come un contenitore di informazioni.

#esempio-teoria[
  Il file `vacanze.jpg` contiene i dati necessari a rappresentare una fotografia, mentre `appunti.txt` contiene un testo.
]

#diagramma("/assets/svg/tipi_file.svg", width: 100%)

Ogni file contiene una certa quantità di dati. La *dimensione di un file* dipende dalla quantità di dati al suo interno.

#richiamo[
  *UNA DOMANDA* \
  Ma come sono fatti i dati all'interno di un file e, più in generale, all'interno di un computer?
]

I dati all'interno di un computer sono rappresentati dai bit, che affrontiamo nella prossima sezione.
]

#[
= Il bit

Il computer rappresenta i dati utilizzando soltanto due cifre: *0 e 1*. Questo modo di rappresentare i dati si chiama *sistema binario*.

Ogni singola cifra binaria prende il nome di *bit* (dall'inglese _binary digit_). Un bit può quindi assumere solo due valori: 0 oppure 1.

#diagramma("/assets/svg/bit.svg", width: 100%)

Un messaggio, una fotografia o un video sono rappresentati nel computer attraverso lunghe sequenze di bit. Cambia il modo in cui il computer interpreta queste sequenze, non le cifre utilizzate.

== Ma nel computer ci sono davvero 0 e 1?

Non ci sono numeri scritti al suo interno: 0 e 1 rappresentano *due stati distinti*. Nei circuiti elettronici, per esempio, questi stati possono corrispondere a due diversi livelli di tensione elettrica.

#da-ricordare[I due valori di un bit][
  Un bit può valere soltanto 0 oppure 1.
]
]

#pagebreak()
#[
= Il byte: un gruppo di 8 bit

Un gruppo di *8 bit* forma un *byte*. Un byte quindi non è niente se non un raggruppamento di 8 bit.

#diagramma("/assets/svg/byte.svg", width: 100%)

#nota[
  *ATTENZIONE ALLE SIGLE* \
  *8 b = 1 B.* Il bit (`b`) e il byte (`B`) non sono la stessa unità di misura. Per esempio, 8 Mb (megabit) non significano 8 MB (megabyte).
]
]

#[
= Quanto spazio occupa un file?

Come abbiamo visto, il contenuto di un file è rappresentato attraverso una sequenza di 0 e 1.

Ogni file contiene una quantità diversa di dati e, di conseguenza, un numero diverso di bit e byte. La *dimensione di un file*, chiamata anche _peso_, indica quanto spazio occupa nella memoria del computer e si misura in *byte*.

#esempio-teoria[
  Un semplice file di testo può contenere poche migliaia di byte, mentre una fotografia può contenerne milioni e un video persino miliardi.
]

#diagramma("/assets/svg/sequenze.svg", width: 100%)

*In tutti i casi si tratta sempre di sequenze di 0 e 1, soltanto più o meno lunghe.*

#table(
  columns: (1.4fr, 1fr),
  table.header([*Tipo di file*], [*Dimensione di esempio*]),
  [Breve testo], [500 byte],
  [Documento], [85.000 byte],
  [Fotografia], [3.000.000 byte],
  [Video breve], [45.000.000 byte],
)

#text(size: 9pt, fill: grigio)[La dimensione effettiva dipende dal contenuto e da come il file viene salvato.]
]

#pagebreak()
#[
= I principali multipli del byte

== Perché servono i multipli?

Per misurare una distanza non si usano sempre i metri: a volte è più comodo usare i chilometri. Allo stesso modo, per misurare la dimensione dei file si usano kilobyte, megabyte, gigabyte e altri multipli.

#esempio-teoria[
  Invece di scrivere che un file occupa 2048 byte, si può dire che occupa *2 KB*, usando le equivalenze della scheda successiva.
]

I *multipli* sono unità più grandi del byte. Nelle equivalenze di questa scheda si usa la *convenzione scolastica basata su 1024*: per passare a un multiplo più grande si raggruppano 1024 unità di quello precedente.

#table(
  columns: (0.5fr, 1.35fr, 1.5fr),
  table.header([*Unità*], [*Nome*], [*Corrispondenza*]),
  [B], [byte], [unità di base],
  [KB], [kilobyte], [1 KB = 1024 B],
  [MB], [megabyte], [1 MB = 1024 KB],
  [GB], [gigabyte], [1 GB = 1024 MB],
  [TB], [terabyte], [1 TB = 1024 GB],
  [PB], [petabyte], [1 PB = 1024 TB],
  [EB], [exabyte], [1 EB = 1024 PB],
  [ZB], [zettabyte], [1 ZB = 1024 EB],
  [YB], [yottabyte], [1 YB = 1024 ZB],
)

#da-ricordare[La convenzione delle equivalenze][
  Questa scheda usa 1024 per le equivalenze. In altri contesti è possibile trovare conversioni basate su 1000: controllare sempre la convenzione utilizzata.
]
]

#pagebreak()
#[
= Lo schema delle conversioni

Nello schema seguente si usano byte, KB, MB, GB e TB. Ogni passaggio tra due unità vicine corrisponde a una moltiplicazione o a una divisione per 1024.

#diagramma("/assets/svg/equivalenze.svg", width: 100%)

Per passare a un'unità più grande si *divide per 1024*; per passare a un'unità più piccola si *moltiplica per 1024*. Ogni passaggio conta: da GB a KB ne servono due.

== Esempi di conversione

#esempio-teoria(titolo: [Esempio 1. Da unità grande a piccola])[
  2 GB = 2 × 1024 = *2048 MB*
]

#esempio-teoria(titolo: [Esempio 2. Da unità piccola a grande])[
  3072 KB = 3072 ÷ 1024 = *3 MB*
]

#esempio-teoria(titolo: [Esempio 3. Due passaggi consecutivi])[
  1 GB = 1 × 1024 = 1024 MB \
  1024 MB = 1024 × 1024 = *1.048.576 KB*
]
]

#pagebreak()
#[
= Lo spazio di archiviazione

Tutti i *dati* occupano spazio nella memoria dei dispositivi. Non soltanto fotografie e documenti: anche *applicazioni*, programmi e sistema operativo utilizzano spazio.

Ogni dispositivo ha una *capacità di archiviazione*, cioè una quantità massima di dati che può conservare. Una parte è già occupata; quella che rimane è lo *spazio disponibile* per nuovi dati.

#diagramma("/assets/svg/archiviazione.svg", width: 100%)

#richiamo[
  *512 GB - 320 GB = 192 GB disponibili* \
  *Capacità totale:* quantità massima di dati che il dispositivo può conservare. \
  *Spazio occupato:* parte già utilizzata. \
  *Spazio disponibile:* parte ancora libera.
]

== Prova a ragionare

+ Un computer ha una capacità di 256 GB. Se 180 GB sono occupati, quanto spazio è ancora disponibile?

  #risposta(righe: 2)

+ Una chiavetta USB ha 8 GB disponibili. È possibile salvare tre video da 3 GB ciascuno? Motivare la risposta.

  #risposta(righe: 2)
]
]

#set heading(numbering: none)
#pagebreak()
#[
#import "/styles/didattica.typ": *
#import "/styles/template.typ": grigio

#[
#titolo-sezione[Esercizi]

= 1. Completa il testo

Utilizzare le parole proposte. Ogni parola può essere usata una volta sola.

#richiamo[
  *PAROLE DA UTILIZZARE* \
  0 · byte · bit · dimensione · 1 · dati · otto · file
]

Un computer rappresenta i #vuoto(25mm) attraverso sequenze delle cifre #vuoto(10mm) e #vuoto(10mm).

Ogni cifra binaria si chiama #vuoto(25mm). Un gruppo di #vuoto(16mm) bit forma un #vuoto(25mm).

Un #vuoto(25mm) può contenere un testo, una fotografia o un audio. La quantità di byte occupati prende il nome di #vuoto(25mm) del file.

= 2. Completa la mappa concettuale

Inserire i termini nei riquadri per completare i collegamenti.

*PAROLE:* dimensione · byte · file · bit · multipli · informazioni

#diagramma("/assets/svg/mappa.svg", width: 100%)
]

#pagebreak()
#[
= 3. Vero o falso? Motiva la risposta

Per ogni affermazione, indicare se è vera o falsa e motivare la scelta.

#affermazione(1)[Un byte è formato da otto bit.]
#affermazione(2)[1 MB corrisponde a 1000 KB.]
#affermazione(3)[Un file da 2 GB è più grande di un file da 900 MB.]

= 4. Dati e informazioni

*1.* Il numero `18` può rappresentare informazioni diverse. Scrivere tre possibili significati del dato, specificando ogni volta il contesto.

#risposta(righe: 3)

*2.* Considerare i dati: `Luca` – `7` – `Matematica`. Spiegare quale informazione si può ricavare collegando i tre dati.

#risposta(righe: 2)
]

#pagebreak()
#[
= 5. Ragionare su bit e byte

Un file contiene la seguente sequenza di cifre binarie. Indicare quanti bit e quanti byte rappresenta.

#richiamo[
  #align(center)[`01101001 11001010 00111101`]
]

#grid(columns: (1fr, 1fr), column-gutter: 10mm,
  [*Bit:* #riga-risposta(48mm)],
  [*Byte:* #riga-risposta(48mm)],
)

= 6. Ordinare i file per dimensione

Ordinare i file dal più piccolo al più grande, spiegando come sono state confrontate le dimensioni.

#table(
  columns: (1.6fr, 0.8fr),
  table.header([*File*], [*Dimensione*]),
  [`foto.jpg`], [3 MB],
  [`documento.pdf`], [750 KB],
  [`video.mp4`], [2 GB],
  [`appunti.txt`], [5 KB],
  [`musica.mp3`], [8 MB],
)

*Ordine:* #riga-risposta(122mm)

*Come hai confrontato le dimensioni?*
#risposta(righe: 2)

= 7. Esegui le equivalenze

Indicare il risultato e, dove necessario, il calcolo utilizzato.

#set enum(spacing: 10pt)
+ 3 MB = #riga-risposta(41mm) KB
  #risposta(righe: 1)
+ 4096 KB = #riga-risposta(41mm) MB
  #risposta(righe: 1)
+ 1,5 GB = #riga-risposta(41mm) MB
  #risposta(righe: 1)
+ 2 TB = #riga-risposta(41mm) GB
  #risposta(righe: 1)
]

#pagebreak()
#[
= 8. Trovare e correggere gli errori

Alcune equivalenze sono corrette e altre sbagliate. Individuare quelle errate e riscriverle correttamente.

#table(
  columns: (1fr, 1.4fr),
  table.header([*Equivalenza*], [*Corretta? / Correzione*]),
  [2 KB = 2048 B], [#riga-risposta(53mm)],
  [3 MB = 3072 KB], [#riga-risposta(53mm)],
  [4 GB = 4000 MB], [#riga-risposta(53mm)],
  [2048 KB = 2 MB], [#riga-risposta(53mm)],
  [1 TB = 1024 KB], [#riga-risposta(53mm)],
)

= 9. Problemi con le dimensioni

*1.* Una cartella contiene 4 fotografie da 3 MB ciascuna e un documento da 512 KB. Calcolare la dimensione totale della cartella, esprimendo il risultato in KB.

#risposta(righe: 2)

*2.* È possibile inviare allegati per un massimo di 10 MB. Si devono inviare un documento da 2 MB e due fotografie rispettivamente da 4 MB e 5 MB. È possibile inviarli tutti insieme? Motivare la risposta.

#risposta(righe: 2)

= 10. Spiega perché

Leggere le affermazioni e spiegare perché sono possibili o corrette.

+ Un file di testo può essere più grande di una fotografia.

  #risposta(righe: 2)

+ Due fotografie possono avere dimensioni molto diverse.

  #risposta(righe: 2)

+ Un file di 2048 KB può essere descritto anche con un numero più piccolo e un'altra unità di misura.

  #risposta(righe: 2)
]

#pagebreak()
#[
= 11. Indaga i file sul computer

Individuare tre file di tipo diverso, per esempio un documento, una fotografia e un PDF. Aprire le proprietà e leggere la dimensione di ciascun file.

#table(
  inset: (x: 7pt, y: 10pt),
  columns: (0.33fr, 1.65fr, 1fr, 1fr, 0.65fr),
  table.header([*N.*], [*Nome del file*], [*Tipo*], [*Dimensione*], [*Unità*]),
  [1], [], [], [], [],
  [2], [], [], [], [],
  [3], [], [], [], [],
)

== Ordina e spiega

Ordinare i file dal più piccolo al più grande. Se le unità di misura sono diverse, trasformare le dimensioni nella stessa unità prima di confrontarle.

#set enum(spacing: 8pt)
1. #riga-risposta(125mm)
2. #riga-risposta(125mm)
3. #riga-risposta(125mm)

= 12. Crea una breve guida

Creare un documento intitolato _Quanto occupano i file?_ che contenga la tabella compilata, una classifica dal file più piccolo al più grande e un breve testo che risponda alle domande seguenti.

+ Quale file occupa più byte?
+ Quale unità di misura compare più spesso?
+ Che differenza c'è tra il contenuto di un file e la sua dimensione?

#richiamo[
  *OBIETTIVO* \
  Capire che il byte permette di misurare la quantità di dati contenuti in un file, indipendentemente dal tipo di contenuto.
]
]
]
