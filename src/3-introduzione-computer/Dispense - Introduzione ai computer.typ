#import "/styles/percorso-computer.typ": *
#show: percorso.with(titolo: "Introduzione ai computer", numero: "03", accento: rgb("#963B36"), sfondo: rgb("#FBF1EF"))

#[
#import "/styles/percorso-computer.typ": *
#import "/styles/template.typ": grigio
#import "/styles/didattica.typ": esempio-teoria, da-ricordare

// Immagini originali delle slide; proporzioni conservate, senza ritaglio.
#let foto(nome, altezza: 32mm, didascalia: none) = block(breakable: false, width: 100%)[
  #align(center)[#image(if nome.starts-with("/") { nome } else { "/assets/immagini/3-introduzione-computer/" + nome }, width: 100%, height: altezza, fit: "contain")]
  #if didascalia != none [
    #block(above: 4pt)[#align(center)[#text(size: 9pt, fill: grigio)[#didascalia]]]
  ]
]
#let tipo(titolo, nome, body) = block(width: 100%, breakable: false, above: 12pt, below: 12pt)[
  #grid(columns: (35mm, 1fr), column-gutter: 6mm,
    foto(nome, altezza: 26mm),
    [#block(sticky: true, below: 5pt)[#text(weight: "bold")[#titolo]] #body],
  )
]

= Tutto è un computer

Quando pensiamo a un *computer*, immaginiamo spesso un dispositivo fisso sulla scrivania oppure un portatile. In realtà, i computer possono avere forme e dimensioni molto diverse.

Un *computer* è un *dispositivo elettronico programmabile*: una macchina che utilizza l’energia elettrica per eseguire le istruzioni di un *programma*. Un programma è una sequenza di istruzioni che stabilisce quali operazioni eseguire. La parola *programmabile* indica che il computer può svolgere compiti diversi utilizzando programmi diversi. Un’*applicazione*, o *app*, è un programma che usiamo per svolgere un’attività, come scrivere o fare una chiamata.

I *dati* sono gli elementi su cui il computer lavora, come numeri, testi, immagini e suoni. *Elaborare i dati* significa eseguire operazioni su di essi per ottenere un risultato.

Il computer riceve dati in ingresso (*input*), li elabora secondo le istruzioni del programma e produce risultati in uscita (*output*). Per esempio, quando usiamo la Calcolatrice, inseriamo due numeri e scegliamo un’operazione: il programma esegue il calcolo e mostra il risultato sullo schermo.

#schema("/assets/svg/computer-dati-programma-risultati.svg")

La stessa macchina può quindi svolgere funzioni diverse, senza cambiare i suoi componenti fisici. Per esempio, il computer:

- diventa una *calcolatrice* quando usiamo il programma Calcolatrice per fare i conti.
- diventa una *macchina da scrivere* quando usiamo un programma per scrivere un documento.
- diventa un *telefono* quando usiamo un’applicazione per fare una chiamata.

== Le principali tipologie di computer

I computer si distinguono per le dimensioni, la forma e le attività per cui sono progettati. Vediamo alcuni tipi di computer che incontriamo nella vita quotidiana.

#tipo([Computer desktop], "desktop.jpg")[
  I *computer desktop*, chiamati anche *computer fissi*, sono progettati per essere usati su una scrivania. Di solito hanno uno schermo separato, detto *monitor*, e si usano con una tastiera e un mouse. La tastiera permette di scrivere; il mouse permette di indicare e selezionare gli elementi sullo schermo.
]

#tipo([Computer portatili], "portatile.jpg")[
  I *computer portatili*, chiamati anche *notebook* o *laptop*, riuniscono schermo, tastiera e componenti interni in un unico dispositivo facile da trasportare. La *batteria ricaricabile* permette di usarli per un certo tempo senza collegarli a una presa elettrica.
]

#tipo([Smartphone], "smartphone.jpg")[
  Gli *smartphone* sono telefoni cellulari che possono eseguire *applicazioni*, dette anche *app*: programmi per svolgere attività come scrivere messaggi, scattare fotografie o consultare siti Internet. Si usano attraverso uno *schermo touchscreen*, cioè uno schermo che riconosce il tocco delle dita.
]

#tipo([Tablet], "tablet.jpg")[
  I *tablet* sono computer portatili che si usano principalmente attraverso uno schermo touchscreen, in genere più grande di quello di uno smartphone. Consentono di leggere, guardare video, scrivere e utilizzare applicazioni. A molti modelli si può collegare una tastiera.
]

#tipo([Console], "console.jpg")[
  Le *console* sono computer progettati soprattutto per i *videogiochi*. Alcune si collegano a un televisore, altre hanno uno schermo integrato. Il giocatore usa un *controller*, un dispositivo con pulsanti e leve che permette di inviare comandi al gioco.
]

#tipo([Server], "server.jpg")[
  I *server* sono computer che forniscono dati e servizi ad altri dispositivi collegati in *rete*. Una rete è un insieme di dispositivi collegati tra loro per scambiarsi dati. Per esempio, quando apriamo un sito Internet, un server invia al nostro dispositivo i dati necessari per mostrare la pagina.
]

#tipo([Dispositivi wearable], "smartwatch.jpg")[
  I *dispositivi wearable*, cioè *indossabili*, sono dispositivi elettronici che si portano sul corpo, come gli *smartwatch*, gli orologi intelligenti. Possono contenere *sensori*: componenti che rilevano grandezze fisiche, come il movimento o il battito cardiaco, e forniscono dati da elaborare.
]

#tipo([Sistemi embedded], "embedded.jpg")[
  I *sistemi embedded* sono computer *incorporati* in un altro dispositivo, cioè inseriti al suo interno per controllarne il funzionamento. Per esempio, un sistema embedded può gestire le fasi di lavaggio di una lavatrice.
]

#da-ricordare[Forme diverse, lo stesso principio][
  Un computer può essere fisso, portatile, indossabile o incorporato in un altro dispositivo. Cambiano la forma e lo scopo, ma tutti elaborano dati seguendo le istruzioni dei programmi.
]

== I sistemi embedded

Un *sistema embedded* è un particolare computer inserito in un dispositivo o in un macchinario per controllarne una o più funzioni. Il termine inglese _embedded_ significa *«incorporato»*.

Un computer da scrivania può essere usato per attività molto diverse, come scrivere, giocare e navigare online. Un sistema embedded è invece progettato per *compiti specifici*: nella lavatrice, per esempio, controlla le fasi del lavaggio.

#foto("robot.jpg", altezza: 52mm, didascalia: [Robot industriali nelle catene di montaggio: un esempio di sistemi progettati per funzioni specifiche.])

#esempio-teoria(titolo: [Esempi nell’uso quotidiano])[
  - *Elettrodomestici:* lavatrici, forni a microonde e frigoriferi.
  - *Automobili:* controllo del motore, degli airbag e del sistema *ABS*, che aiuta a evitare il bloccaggio delle ruote durante la frenata.
  - *Dispositivi medici:* il *pacemaker*, un apparecchio che aiuta il cuore a mantenere un ritmo regolare.
  - *Robotica:* robot industriali nelle catene di montaggio.
]

// Fonti: NHLBI, https://www.nhlbi.nih.gov/health/pacemakers/how-it-works
// e https://www.nhlbi.nih.gov/health/pacemakers/expect; Boston Scientific,
// https://www.bostonscientific.com/en-US/patients-caregivers/device-support/pacemaker/how-pacemakers-work.html
#block(width: 100%, breakable: false, fill: none, stroke: 0.8pt + rgb("#963B36"), inset: 10pt)[
  #grid(columns: (0.85fr, 1.35fr), column-gutter: 8mm,
    foto("pacemaker.jpg", altezza: 58mm, didascalia: [Il pacemaker è collegato al cuore e ne rileva l’attività elettrica.]),
    [
      #block(sticky: true, below: 6pt)[*Un piccolo computer che aiuta il cuore*]

      Il *pacemaker* è un piccolo computer che aiuta il cuore a battere con regolarità. Il modello illustrato viene impiantato *sotto la pelle, nella parte alta del torace*, ed è collegato al cuore da sottili fili.

Funziona grazie a una *batteria* e rimane attivo *giorno e notte*. Questo piccolo computer monitora il battito del cuore e, quando rileva che il cuore batte troppo lentamente, interviene inviando piccoli impulsi elettrici che lo stimolano a battere.

      #v(8pt)

      Anche qui ritroviamo i tre passaggi del *funzionamento di un computer*:

      - *Riceve dati:* rileva i segnali elettrici del cuore.
      - *Li elabora:* il programma controlla il tempo trascorso tra i battiti.
      - *Produce un risultato:* quando serve, il dispositivo invia un piccolo impulso elettrico che stimola il cuore a battere.

    ],
  )
]

== I server

Un *server* è un particolare computer che mette dati e servizi a disposizione di altri dispositivi attraverso una rete, come Internet. Per rendere disponibili questi servizi in ogni momento, normalmente rimane acceso *24 ore al giorno, 7 giorni su 7*.

Il server *riceve una richiesta e fornisce una risposta*. Per esempio, quando apriamo un *sito Internet*, il nostro dispositivo richiede i dati necessari per visualizzarlo. Il server li invia e il programma che usiamo per navigare, chiamato *browser*, li mostra sullo schermo.

Quando salviamo un file nel *cloud*, lo inviamo attraverso Internet a un server, per esempio di Google Drive. Questo server si trova in un luogo fisico del mondo, anche molto lontano da noi: conserva il file e lo rende accessibile tramite Internet. Per questo, *senza una connessione Internet non possiamo contattare il server* per aprire o aggiornare il file online.

#foto("server-ibm.jpg", altezza: 55mm, didascalia: [Sistemi server: computer che mettono dati e servizi a disposizione di altri computer.])

#esempio-teoria(titolo: [Esempi nell’uso quotidiano])[
  *Video e musica in streaming.* Lo *streaming* permette di guardare un video o ascoltare musica mentre i dati arrivano attraverso Internet. Il server invia progressivamente i dati, senza che sia necessario scaricare tutto il contenuto prima di iniziare la riproduzione.

*Giochi online.* Nei giochi *multiplayer*, cioè con più giocatori, i server scambiano con i dispositivi dei partecipanti i dati della partita, come posizioni, azioni e punteggi.

*Archiviazione nel cloud.* Servizi come Google Drive e iCloud conservano i file sui propri server. Possiamo accedere ai file da dispositivi diversi usando il nostro *account*, cioè il profilo personale con cui siamo registrati nel servizio. Per accedere usiamo, per esempio, un nome utente e una password.

*Siti web e posta elettronica.* I *web server* forniscono i dati delle pagine dei siti Internet. I *server di posta* ricevono e inoltrano i messaggi di posta elettronica, chiamati anche *email*.
]

#pagebreak()

= Le due parti fondamentali di un computer

Per usare un computer servono sia i suoi componenti fisici sia i programmi. I componenti fisici prendono il nome di *hardware*; i programmi prendono il nome di *software*. Le due parti lavorano insieme: per scrivere un documento, per esempio, usiamo una tastiera e uno schermo, ma anche un programma per scrivere.

== Hardware: i componenti fisici

L’*hardware*, indicato anche con la sigla *HW*, è l’insieme dei *componenti fisici* del computer. Comprende sia le parti interne sia i dispositivi collegati, come tastiera e monitor. La *scheda madre*, per esempio, è la scheda elettronica principale: collega tra loro diversi componenti interni.

Chi usa un computer si chiama *utente*. I dispositivi hardware permettono all’utente di *dialogare con il computer e utilizzarlo*, per esempio attraverso la tastiera o uno schermo touch. Permettono anche di *vedere i risultati sullo schermo* o di ascoltarli attraverso gli altoparlanti.

#grid(columns: (1fr, 1fr), column-gutter: 8mm,
  foto("/assets/immagini/4-hardware/scheda-madre.jpg", altezza: 30mm, didascalia: [Una scheda madre.]),
  foto("smartphone-interno.jpg", altezza: 30mm, didascalia: [I componenti fisici all’interno di uno smartphone.]),
)

== Software: i programmi

Il *software*, indicato anche con la sigla *SW*, è l’insieme dei *programmi* che il computer può eseguire. Un programma contiene le istruzioni per svolgere un compito: per esempio, sommare due numeri o mostrare una fotografia. Le istruzioni stabiliscono anche come rispondere ai comandi dell’utente. Dal software dipendono le schermate, i pulsanti e i *menu*, cioè gli elenchi di comandi tra cui possiamo scegliere.

I programmi vengono conservati nella memoria del dispositivo. Quando li usiamo, i componenti hardware ne eseguono le istruzioni.

#esempio-teoria[
  Il *sistema operativo* è il software che organizza il funzionamento del dispositivo: gestisce, per esempio, l’uso della memoria, dei file e dei dispositivi collegati. Permette inoltre di avviare gli altri programmi. *Windows* e *Android* sono sistemi operativi. Le *applicazioni*, o *app*, sono programmi per attività specifiche, come scrivere un documento, giocare o accedere ai file di Google Drive.
]

#grid(columns: (1.7fr, 1fr, 0.9fr), column-gutter: 8mm,
  foto("windows.jpg", altezza: 14mm, didascalia: [Windows.]),
  foto("android.jpg", altezza: 14mm, didascalia: [Android.]),
  foto("drive.jpg", altezza: 14mm, didascalia: [Google Drive.]),
)

#da-ricordare[Hardware e software lavorano insieme][
  L’hardware è la parte fisica del computer. Il software fornisce le istruzioni che l’hardware esegue: per svolgere un’attività servono entrambi.
]

#pagebreak()

// Approfondimenti sull’hardware: esclusi Von Neumann e l’attività dei pancake.
#[
#let foto(nome, altezza: 30mm, didascalia: none) = block(width: 100%, breakable: false)[
  #align(center, image(
    "/assets/immagini/4-hardware/" + nome + ".jpg",
    width: 100%, height: altezza, fit: "contain",
  ))
  #if didascalia != none [
    #block(width: 100%, above: 4pt)[
      #set par(justify: false)
      #align(center, text(size: 9pt, fill: grigio, didascalia))
    ]
  ]
]
#let galleria(..figure) = {
  let immagini = figure.pos()
  grid(
    columns: (1fr,) * immagini.len(),
    column-gutter: 5mm,
    ..immagini,
  )
}

#show heading.where(level: 2): set heading(numbering: "1.1")

= Hardware

== Case e scheda madre

=== Il case

#grid(columns: (1.65fr, 1fr), column-gutter: 7mm,
  [
    Il *case* è il contenitore che racchiude i componenti interni di un computer fisso. Li tiene al loro posto e contribuisce a proteggerli da urti e polvere. Alcune aperture fanno passare l’aria per raffreddarli. Altre permettono di raggiungere le *porte*, cioè i punti a cui colleghiamo cavi e dispositivi esterni.

    Nei portatili e negli smartphone il contenitore viene spesso chiamato *scocca*. Anche in questi dispositivi protegge i componenti interni e aiuta a disperdere il calore, cioè ad allontanarlo verso l’esterno.
  ],
  foto("case", altezza: 65mm, didascalia: [Il case di un computer fisso.]),
)

=== La scheda madre

La *scheda madre* è la scheda elettronica principale del computer. Su di essa sono montati o collegati i componenti che devono lavorare insieme. Tra questi ci sono il *processore*, o *CPU*, che esegue le istruzioni, e la *RAM*, la memoria che contiene i dati e i programmi in uso.

Sulla scheda si trovano sottili percorsi di rame, chiamati *piste*, attraverso cui passano segnali elettrici. I collegamenti che trasportano dati e altri segnali tra i componenti prendono il nome di *bus*. Anche uno smartphone ha una scheda principale, più piccola e di forma diversa rispetto a quella di un computer fisso.

#galleria(
  foto("scheda-madre", altezza: 58mm, didascalia: [Una scheda madre per computer fisso.]),
  foto("scheda-smartphone", altezza: 58mm, didascalia: [La scheda di uno smartphone, estratta dalla scocca.]),
)

== Le periferiche

=== Periferiche di input

Una *periferica* è un dispositivo che permette al computer di ricevere dati dall’esterno o di comunicare i risultati. Può essere separata dal computer oppure incorporata al suo interno, come la tastiera di un portatile.

Le periferiche di *input*, cioè di *ingresso*, inviano dati e comandi al computer. Con la tastiera inseriamo lettere e numeri; il microfono rileva i suoni; lo *scanner* trasforma un documento su carta in un’immagine digitale. Il controller permette di dare comandi a un videogioco.

#galleria(
  foto("tastiera", didascalia: [Tastiera]),
  foto("scanner", didascalia: [Scanner]),
  foto("microfono", didascalia: [Microfono]),
  foto("controller", didascalia: [Controller]),
)

=== Periferiche di output

Le periferiche di *output*, cioè di uscita, rendono disponibili i risultati dell’elaborazione. Il monitor mostra immagini e testi, la stampante li riporta su carta, le cuffie e gli altoparlanti riproducono i suoni.

#galleria(
  foto("monitor", didascalia: [Monitor]),
  foto("stampante", didascalia: [Stampante]),
  foto("cuffie", didascalia: [Cuffie]),
  foto("altoparlanti", didascalia: [Altoparlanti]),
)

=== Periferiche di input e output

Alcune periferiche svolgono entrambe le funzioni: possono sia inviare dati al computer sia riceverli dal computer.

#esempio-teoria(titolo: [Esempi di input e output])[
  Il *touchscreen* mostra immagini (output) e rileva il tocco delle dita (input). Quando leggiamo un file da una *chiavetta USB*, i dati entrano nel computer; quando salviamo un file sulla chiavetta, i dati escono dal computer. Un *router*, il dispositivo che collega reti diverse, invia e riceve dati: lo usiamo, per esempio, per collegare la rete di casa a Internet.
]

#galleria(
  foto("touchscreen", didascalia: [Touchscreen]),
  foto("chiavetta", didascalia: [Chiavetta USB]),
  foto("router", didascalia: [Router]),
)

== Porte e altri componenti

=== Interfacce e porte esterne

Le *porte* sono i punti di collegamento presenti sul computer. Hanno forme diverse perché accolgono connettori diversi, come quelli di una chiavetta o di un cavo per il monitor.

Per scambiarsi dati, due dispositivi devono anche seguire regole comuni: per esempio, devono riconoscere come inizia e come termina un messaggio. Queste regole si chiamano *protocolli*. Il termine *interfaccia* indica il modo in cui due dispositivi si collegano e comunicano.

#foto("porte", altezza: 48mm, didascalia: [Forme e nomi dei connettori. La figura mostra anche porte usate su computer meno recenti.])

#table(
  columns: (1fr, 2.6fr),
  table.header([Porta], [Uso]),
  [USB (tipo A e tipo C)], [Collegare, per esempio, tastiere, mouse e chiavette. Su molti dispositivi serve anche a ricaricare la batteria.],
  [HDMI], [Trasmettere immagini e suoni a monitor, televisori e proiettori.],
  [Ethernet], [Collegare il computer a una rete attraverso un cavo.],
  [Jack audio], [Collegare dispositivi audio, come cuffie, altoparlanti o microfoni.],
  [Slot SD], [Inserire una scheda di memoria SD per leggerne o salvarvi i dati.],
)

All’esterno troviamo anche il pulsante di accensione e piccole spie luminose, chiamate *LED*, che segnalano, per esempio, se il computer è acceso o se la batteria si sta ricaricando.

=== Altri componenti

*GPU e scheda grafica.* La *GPU* è un processore specializzato nei calcoli necessari per produrre immagini, come quelle di un videogioco. Può trovarsi nello stesso *chip* della CPU, cioè nello stesso piccolo componente elettronico, oppure su una scheda separata, chiamata *scheda grafica dedicata*.

*Alimentazione.* L’*alimentatore* riceve energia dalla presa elettrica e la fornisce ai componenti nel modo adatto al loro funzionamento. Nei portatili la batteria conserva energia e permette di usare il computer anche senza la presa.

*Raffreddamento.* I componenti producono calore mentre lavorano. Le *ventole* fanno circolare l’aria; i *dissipatori*, parti metalliche a contatto con i componenti, aiutano ad allontanare il calore. Alcuni computer usano anche un liquido che circola in tubi. Il raffreddamento evita che la temperatura diventi troppo alta.

*Schede aggiuntive.* Sono schede che aggiungono funzioni al computer. Si inseriscono negli *slot*, appositi punti di collegamento sulla scheda madre. Una scheda di rete, per esempio, può permettere di collegarsi senza fili tramite *Wi-Fi* oppure con un cavo Ethernet.

== La CPU

La *CPU* (_Central Processing Unit_, cioè *unità centrale di elaborazione*), chiamata anche *processore*, è il componente che esegue le istruzioni dei programmi. Viene spesso descritta come il *«cervello» del computer*, perché svolge le operazioni necessarie al suo funzionamento. Segue le istruzioni dei programmi: non pensa come una persona.

=== Che cosa significa eseguire operazioni?

#grid(columns: (1.85fr, 1fr), column-gutter: 6mm,
  [
    I programmi suddividono le attività in tante operazioni semplici che la CPU può eseguire, per esempio:

    - *Fare calcoli*, come sommare due numeri.
    - *Confrontare dati*, per stabilire, ad esempio, quale numero è più grande.
    - *Leggere e spostare dati*, recuperandoli dalla memoria o registrando il risultato di un’operazione.
  ],
  foto("processore", altezza: 40mm, didascalia: [Un processore visto sopra e sotto.]),
)

=== Frequenza di clock

La *frequenza di clock* è un valore che indica la *velocità di lavoro della CPU*. Si misura in *gigahertz*, abbreviato *GHz*.

A parità di altre caratteristiche, un valore *più alto* permette alla CPU di eseguire le operazioni più velocemente; un valore *più basso* indica una minore velocità di lavoro.

=== I core

#grid(columns: (1.2fr, 1fr), column-gutter: 6mm,
  [
    Un *core* è un’unità di lavoro della CPU. Con *più core*, la CPU può svolgere *più operazioni contemporaneamente*: è come avere più lavoratori invece di uno solo.

    Una CPU *dual-core* ha *2 core*, una *quad-core* ne ha *4* e una *octa-core* ne ha *8*. I diversi core possono lavorare nello stesso momento, permettendo alla CPU di svolgere *due o più operazioni contemporaneamente*.
  ],
  foto("apple-a15", altezza: 39mm, didascalia: [Un esempio di processore con sei core.]),
)

== Memoria primaria (o centrale)

=== La memoria centrale

Le *memorie* sono i componenti che conservano dati e istruzioni. La *RAM* è la principale memoria usata dal computer mentre lavora. Il nome deriva da _Random Access Memory_. Nella RAM si trovano i programmi in esecuzione e i dati che stanno utilizzando.

È come un *piano di lavoro*: contiene i materiali che servono in quel momento, pronti da usare. Fa parte della *memoria centrale*, da cui il processore legge dati e istruzioni.

=== La RAM in uso

#grid(columns: (1.6fr, 1fr), column-gutter: 6mm,
  [
    La RAM è una memoria *volatile*: per conservare i dati ha bisogno di energia elettrica. Quando il computer viene spento, i dati presenti soltanto nella RAM si perdono. Per conservare un documento, dobbiamo quindi *salvarlo nella memoria secondaria*.
  ],
  foto("ram", altezza: 40mm, didascalia: [Un modulo di memoria RAM.]),
)

== Memoria secondaria

La *memoria secondaria*, chiamata anche *memoria di archiviazione*, conserva file e programmi anche quando il computer è spento. Ne fanno parte gli *SSD* e gli *HDD*. È come un *magazzino*: conserva i materiali da cui preleviamo ciò che serve per lavorare.

=== La memoria secondaria

#grid(columns: (1.15fr, 1fr), column-gutter: 7mm,
  [
    Un *HDD* (_Hard Disk Drive_), detto anche *disco rigido*, conserva i dati su dischi che ruotano. Piccoli componenti chiamati *testine* leggono e registrano i dati sulla superficie magnetica dei dischi. Il movimento di queste parti richiede tempo e può produrre rumore. Gli HDD offrono generalmente molto spazio a costo contenuto, ma possono danneggiarsi se subiscono forti urti.

    Un *SSD* (_Solid State Drive_), o *unità a stato solido*, conserva i dati in componenti elettronici e non ha parti meccaniche in movimento. Per questo è silenzioso e, in genere, recupera i dati più velocemente di un HDD. Sia gli SSD sia gli HDD mantengono i dati a computer spento. Anche smartphone e tablet usano memorie elettroniche per conservare i file.
  ],
  foto("hdd", altezza: 58mm, didascalia: [All’interno di un HDD, la testina si sposta sopra il disco magnetico.]),
)

#esempio-teoria[
  Mentre scrivi con Word, il computer usa la RAM per il programma e il testo su cui lavori. Quando *salvi*, registra il documento nella memoria secondaria: potrai ritrovarlo anche dopo aver spento il computer.
]

== Altre memorie

=== La cache

#grid(columns: (1.35fr, 1fr), column-gutter: 7mm,
  [
    La *cache* è una memoria molto veloce, generalmente contenuta nella CPU. Conserva copie di dati e istruzioni che il processore usa spesso o che potrebbe richiedere a breve. Ha una capacità molto più piccola di quella della RAM, spesso misurata in kilobyte (*KB*) o megabyte (*MB*).

    Quando trova un dato nella cache, la CPU può usarlo rapidamente. Se non lo trova, deve recuperarlo dalla RAM. È come tenere a portata di mano un appunto che consultiamo spesso, per evitare di andare a cercarlo ogni volta.
  ],
  foto("cache", altezza: 49mm, didascalia: [Nello schema, i livelli di cache L1 e L2 sono più vicini alla CPU rispetto alla RAM.]),
)

=== La ROM e l’avvio

La *ROM* (_Read Only Memory_, cioè *memoria di sola lettura*) serve a conservare le *istruzioni di base* del computer, come quelle necessarie per avviarlo quando premiamo il pulsante di accensione.

Queste istruzioni sono già presenti nel dispositivo e *normalmente non le modifichiamo* quando usiamo il computer. La ROM mantiene il suo contenuto *anche a computer spento*: così le istruzioni sono disponibili alla successiva accensione.

== Capacità e velocità delle memorie

La *capacità* indica la quantità di dati che una memoria può contenere. Si misura in *byte* e nei suoi multipli, come megabyte (*MB*), gigabyte (*GB*) e terabyte (*TB*). Una memoria da 512 GB può contenere più dati di una da 256 GB.

La *velocità di trasferimento* indica quanti dati si possono leggere o scrivere in un secondo. *Leggere* significa recuperare dati dalla memoria; *scrivere* significa registrarvi dati. La velocità si misura, per esempio, in *MB/s* o *GB/s*: megabyte o gigabyte al secondo. Può essere diversa in lettura (_read_) e in scrittura (_write_).

La tabella distingue capacità e velocità: una memoria capiente non è necessariamente anche veloce. I valori sono esempi indicativi, non limiti validi per tutti i dispositivi.

#table(
  columns: (1.45fr, 1fr, 1fr),
  table.header([Memoria], [Velocità indicativa], [Capacità di esempio]),
  [RAM], [20–30 GB/s], [2–64 GB],
  [SSD], [1–7 GB/s], [128 GB–2 TB],
  [HDD], [100–200 MB/s], [500 GB–10 TB],
)

]
]

#[
#import "/styles/didattica.typ": *
#import "/styles/template.typ": grigio
#set heading(numbering: none)
#set par(justify: false)
#pagebreak()

#let domanda(numero, body, righe: 4) = block(width: 100%, breakable: false, above: 10pt, below: 10pt)[
  *#numero.* #body
  #risposta(righe: righe)
]

#titolo-sezione[Esercizi: introduzione ai computer]

= 1. Completa il testo: i diversi computer

Inserisci le parole al posto giusto. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* controller · portatili · wearable · desktop · embedded · touchscreen · batteria · server
]

I computer #vuoto(30mm) sono progettati per essere usati su una scrivania. I computer #vuoto(30mm), invece, sono facili da trasportare e possono funzionare grazie a una #vuoto(28mm) ricaricabile.

Smartphone e tablet si possono comandare toccando uno schermo #vuoto(35mm). Per giocare con una console si usa spesso un #vuoto(32mm).

I dispositivi #vuoto(30mm) possono essere indossati. I sistemi #vuoto(30mm) sono incorporati in altri dispositivi per svolgere compiti specifici. I #vuoto(25mm) forniscono dati e servizi ad altri dispositivi attraverso una rete.

= 2. Completa il testo: parti fisiche e programmi

Inserisci le parole al posto giusto. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* programmi · scheda madre · Android · hardware · istruzioni · software
]

L’insieme delle parti fisiche di un computer si chiama #vuoto(30mm). Ne fanno parte la tastiera, il monitor e la #vuoto(35mm).

L’insieme dei #vuoto(30mm) si chiama invece #vuoto(30mm). Un programma contiene le #vuoto(30mm) che il computer esegue. Windows e #vuoto(25mm) sono esempi di sistemi operativi.

#pagebreak()

= 3. Completa la mappa

Scrivi le parole nei riquadri corretti. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* software · server · hardware · wearable · embedded · portatile
]

#diagramma("/assets/svg/mappa-esercizi-introduzione-computer.svg")

Scegli uno dei tipi di computer indicati nella mappa. Scrivi un esempio concreto e spiega per quale attività viene usato.
#risposta(righe: 3)

#pagebreak()

= 4. Vero o falso? Motiva

Per ogni frase, indica se è vera o falsa. Spiega il motivo della tua scelta e riscrivi correttamente le frasi false.

#affermazione(1)[Solo i computer fissi e i portatili sono veri computer.]
#affermazione(2)[Un sistema embedded è progettato per svolgere compiti specifici nel dispositivo in cui è incorporato.]
#affermazione(3)[Il controller di una console è un programma e quindi fa parte del software.]
#affermazione(4)[I server sono usati anche per fornire pagine web e gestire la posta elettronica.]
#affermazione(5)[Salvare un file nel cloud significa conservarlo soltanto nella memoria del proprio dispositivo.]
#affermazione(6)[Hardware e software collaborano per svolgere le attività del computer.]

#pagebreak()

= 5. Rispondi e ragiona

Rispondi con frasi complete. Usa gli esempi della teoria quando ti sono utili.

#domanda(1)[Perché uno smartphone può essere considerato un computer? Indica almeno due attività che permette di svolgere.]
#domanda(2)[Che differenza c’è tra un computer portatile e un sistema embedded dentro una lavatrice? Considera lo scopo per cui vengono usati.]
#domanda(3)[Quando apri una pagina web, che cosa chiedi a un server? Che cosa riceve il tuo dispositivo?]
#domanda(4)[Considera uno smartphone. Indica due elementi hardware e due esempi di software e spiega la differenza tra i due gruppi.]

#pagebreak()

#titolo-sezione[Esercizi: l’hardware]

= 6. Completa il testo: il lavoro del computer

Inserisci le parole al posto giusto. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* output · core · CPU · clock · bus · input · istruzioni · scheda madre
]

Il computer riceve dati e comandi attraverso i dispositivi di #vuoto(25mm). La #vuoto(20mm) elabora i dati eseguendo le #vuoto(30mm) dei programmi. I risultati vengono comunicati attraverso i dispositivi di #vuoto(25mm).

I componenti principali sono ospitati o collegati dalla #vuoto(36mm). I #vuoto(20mm) sono i collegamenti attraverso cui i componenti comunicano.

La frequenza di #vuoto(25mm) si misura in GHz e indica la velocità di lavoro del processore. All’interno della CPU, ciascun #vuoto(22mm) è un’unità capace di eseguire istruzioni.

= 7. Completa il testo: le memorie

Inserisci le parole al posto giusto. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* capacità · ROM · RAM · cache · SSD · volatile · HDD · secondaria
]

La #vuoto(20mm) contiene dati e istruzioni usati durante il lavoro. È una memoria #vuoto(28mm): il suo contenuto si perde quando viene tolta l’alimentazione.

Per conservare un documento occorre salvarlo nella memoria #vuoto(32mm). Gli #vuoto(20mm) usano dischi magnetici rotanti, mentre gli #vuoto(20mm) usano memorie elettroniche senza parti mobili.

La #vuoto(22mm) è una piccola memoria molto veloce vicina alla CPU. La #vuoto(27mm) indica quanti dati può contenere una memoria. La memoria #vuoto(25mm) conserva istruzioni di base, come quelle necessarie all’avvio, anche a computer spento.

#pagebreak()

= 8. Completa la mappa

Scrivi le parole nei riquadri corretti. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* output · RAM · CPU · cache · input · SSD
]

#diagramma("/assets/svg/mappa-esercizi-hardware.svg")

Scrivi un esempio per ciascuna delle due categorie di periferiche.

*Input:* #vuoto(45mm) #h(8mm) *Output:* #vuoto(45mm)

Quale memoria contiene temporaneamente il testo di un documento mentre lo stai scrivendo? Dove lo salvi per ritrovarlo dopo lo spegnimento?
#risposta(righe: 3)

#pagebreak()

= 9. Vero o falso? Motiva

Spunta una casella per ogni frase. Spiega la tua scelta e correggi le frasi false.

#affermazione(1)[La CPU esegue le istruzioni dei programmi ed elabora i dati.]
#affermazione(2)[La RAM conserva il suo contenuto anche quando viene tolta l’alimentazione.]
#affermazione(3)[Un touchscreen è una periferica sia di input sia di output.]
#affermazione(4)[Gli SSD contengono dischi magnetici rotanti e testine meccaniche.]
#affermazione(5)[A parità di altre caratteristiche, una frequenza di clock più bassa indica una CPU più veloce.]
#affermazione(6)[La cache conserva copie di dati e istruzioni che potrebbero servire di nuovo alla CPU.]

#pagebreak()

= 10. Rispondi e ragiona

Rispondi con frasi complete. Usa gli esempi della teoria quando ti sono utili.

#domanda(1)[Scrivi una parola con la tastiera e la vedi sul monitor. Quali sono l’input, l’elaborazione e l’output?]
#domanda(2)[Che differenza c’è tra RAM e memoria secondaria? Usa il confronto con il piano di lavoro e il magazzino.]
#domanda(3)[Un computer ha un SSD da 512 GB con una velocità di lettura di 2 GB/s. Che cosa indicano i due valori? Quale descrive la capacità e quale la velocità?]
#domanda(4)[Che cosa sono i core di una CPU? Perché avere più core può essere utile quando il computer deve svolgere più attività?]
]
