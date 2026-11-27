#import "/styles/percorso-computer.typ": *
#show: percorso.with(titolo: "Il software", numero: "05", accento: rgb("#704397"), sfondo: rgb("#F5F0FA"))

#[
#import "/styles/percorso-computer.typ": richiamo
#import "/styles/template.typ": grigio
#import "/styles/didattica.typ": esempio-teoria, da-ricordare

#set par(spacing: 0.8em)

#let foto(nome, larghezza: 100%, altezza: 24mm, didascalia: none) = block(width: 100%, breakable: false)[
  #align(center, image(
    "/assets/immagini/5-software/" + nome + ".jpg",
    width: larghezza, height: altezza, fit: "contain",
  ))
  #if didascalia != none [
    #block(width: 100%, above: 4pt)[
      #set par(justify: false)
      #align(center, text(size: 9pt, fill: grigio, didascalia))
    ]
  ]
]

= Il comportamento di un computer

Il *software* è l’insieme dei programmi che permettono al computer di funzionare e svolgere attività. L’*hardware* è la macchina fisica; il software contiene le istruzioni che le dicono che cosa fare.

#da-ricordare[Lo stesso computer, programmi diversi][
  Un computer è una macchina universale: può svolgere attività diverse seguendo programmi diversi. Lo stesso dispositivo può servire per scrivere un testo, ascoltare musica o giocare.
]

== Il programma

Un *programma* è un insieme di istruzioni che il computer esegue per svolgere un compito.

*Programmare* significa scrivere queste istruzioni usando un *linguaggio di programmazione*. Il testo scritto dal programmatore si chiama *codice sorgente*.

Un programma può contenere poche righe di codice oppure milioni. Le stime riportate nelle slide danno un’idea di questa differenza: non sono conteggi precisi e dipendono dalla versione e dalle parti considerate.

#table(
  columns: (1fr, 1fr, 1fr),
  table.header([Windows 10], [GTA V], [Minecraft]),
  [Circa 50 milioni di righe], [Circa 36 milioni di righe], [Circa 500 mila righe],
)

== Software di base e software applicativo

Il *software di base* permette al computer di avviarsi e funzionare. Comprende il *firmware*, come BIOS o UEFI, che interviene all’accensione, e il *sistema operativo*, che gestisce le risorse e permette di usare le applicazioni. Windows, Linux e Android sono esempi di sistemi operativi.

#grid(columns: (1.6fr, 1fr, 1fr), column-gutter: 7mm,
  foto("windows", altezza: 15mm),
  foto("linux", altezza: 15mm),
  foto("android", altezza: 15mm),
)

Il *software applicativo* comprende i programmi che usiamo per svolgere attività specifiche: scrivere testi, inviare email, ascoltare musica o giocare. Esistono anche applicazioni per compiti specializzati, come le missioni spaziali.

#pagebreak()

= Il sistema operativo

Il *sistema operativo*, spesso abbreviato in *SO*, coordina il funzionamento del computer. Gestisce processore, memoria e dispositivi e mette queste risorse a disposizione delle applicazioni.

Un’applicazione non deve occuparsi da sola di ogni componente: può chiedere al sistema operativo di aprire un file, usare la rete o riprodurre un suono.

== Funzioni principali

#table(
  columns: (1fr, 2.5fr),
  table.header([Funzione], [Come interviene il sistema operativo]),
  [*Esegue le applicazioni*], [Avvia e gestisce i programmi in esecuzione, chiamati *processi*. Il *multitasking* permette di usare più programmi nello stesso periodo di tempo.],
  [*Fa dialogare applicazioni e hardware*], [Offre alle applicazioni servizi per usare il computer. Le richieste rivolte al sistema operativo si chiamano *chiamate di sistema* (_system call_).],
  [*Gestisce la memoria e i file*], [Assegna la RAM ai programmi e organizza il salvataggio e il recupero dei file nella memoria secondaria.],
  [*Controlla gli accessi*], [Riconosce gli *utenti* e usa i *permessi* per stabilire quali file e risorse possono usare o modificare.],
  [*Gestisce la rete*], [Permette al computer di scambiare dati con altri dispositivi. Il browser usa queste funzioni per navigare su Internet.],
)

== Il file system

Il *file system* è il sistema con cui il computer organizza e ritrova i dati nella memoria secondaria. Ci permette di lavorare con *file e cartelle*, senza dover conoscere il punto fisico in cui sono registrati i dati.

Questa rappresentazione si chiama *astrazione*: semplifica una realtà più complessa. Le cartelle formano un *albero* e il *percorso* indica dove trovare un file o una cartella.

#foto("albero-file", altezza: 74mm, didascalia: [Un albero di file e cartelle. Il percorso di `Grades` parte dall’unità `D:` e attraversa tre cartelle.])

#align(center, text(size: 10pt)[`D:\My Documents\TEACHING\105\Grades`])

#pagebreak()

= Il software applicativo

Il *software applicativo* permette all’utente di svolgere un’attività concreta. Ogni applicazione ha uno scopo: Telegram serve per scambiare messaggi, Gmail per la posta elettronica, Spotify per ascoltare musica e Minecraft per giocare.

#grid(columns: (1fr, 1fr, 1fr, 1.5fr), column-gutter: 7mm,
  foto("telegram", altezza: 19mm, didascalia: [Telegram]),
  foto("gmail", altezza: 19mm, didascalia: [Gmail]),
  foto("spotify", altezza: 19mm, didascalia: [Spotify]),
  foto("minecraft", altezza: 19mm, didascalia: [Minecraft]),
)

== Come usa le risorse del computer

Per svolgere il proprio compito, un’applicazione usa i servizi del *sistema operativo*. Quando salva un documento, deve accedere alla memoria secondaria; quando invia un messaggio, deve usare la rete.

#esempio-teoria[
  In Telegram scrivi un messaggio e premi Invia. L’applicazione gestisce la conversazione e usa i servizi di rete del sistema operativo per trasmettere i dati.
]

== La scelta della piattaforma

Per installare un’applicazione, devi scegliere una versione *compatibile con il sistema operativo* del dispositivo. Lo stesso programma può avere versioni per Windows, macOS e Linux: per questo la pagina di download può offrire più scelte.

#foto("telegram-desktop", larghezza: 91%, altezza: 75mm, didascalia: [La pagina di Telegram Desktop mostra download distinti per Windows, macOS e Linux.])

#esempio-teoria[
  Se il tuo computer usa macOS, scegli la versione di Telegram per macOS. Il programma serve allo stesso scopo sulle diverse piattaforme, ma ogni versione è preparata per funzionare con il relativo sistema operativo.
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

#titolo-sezione[Esercizi: il software]

= 1. Completa il testo: programmi e software

Inserisci le parole al posto giusto. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* sorgente · applicativo · hardware · programmazione · base · programma · operativo
]

Un #vuoto(30mm) è un insieme di istruzioni che il computer esegue per svolgere un compito. Chi lo scrive usa un linguaggio di #vuoto(38mm); il testo scritto si chiama codice #vuoto(28mm).

Le parti fisiche del computer costituiscono l’#vuoto(28mm). Per avviare e far funzionare il computer serve il software di #vuoto(22mm), che comprende il firmware e il sistema #vuoto(30mm).

I programmi con cui scriviamo documenti, ascoltiamo musica o giochiamo fanno parte del software #vuoto(35mm).

= 2. Completa il testo: il sistema operativo

Inserisci le parole al posto giusto. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* permessi · rete · processi · system · RAM · multitasking · percorso
]

Il sistema operativo gestisce i programmi in esecuzione, chiamati #vuoto(30mm). La possibilità di usare più programmi nello stesso periodo di tempo si chiama #vuoto(35mm).

Il sistema operativo assegna la #vuoto(22mm) ai programmi e usa i #vuoto(28mm) per stabilire quali file e risorse ciascun utente può usare o modificare.

Il file #vuoto(25mm) organizza i dati nella memoria secondaria. Un file può essere ritrovato seguendo il suo #vuoto(30mm). Per inviare un messaggio online, un’applicazione usa i servizi di #vuoto(25mm) del sistema operativo.

#pagebreak()

= 3. Completa la mappa

Scrivi le parole nei riquadri corretti. Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* applicativo · file system · operativo · firmware · rete · base
]

#diagramma("/assets/svg/mappa-esercizi-software.svg")

Scegli un’applicazione che conosci. Scrivi che cosa permette di fare e indica un servizio del sistema operativo di cui ha bisogno.
#risposta(righe: 3)

#pagebreak()

= 4. Vero o falso? Motiva

Spunta una casella per ogni frase. Spiega la tua scelta e correggi le frasi false.

#affermazione(1)[Un computer può svolgere compiti diversi eseguendo programmi diversi.]
#affermazione(2)[Il sistema operativo e il software applicativo hanno esattamente lo stesso compito.]
#affermazione(3)[Il file system organizza i dati attraverso file e cartelle.]
#affermazione(4)[I permessi permettono a qualsiasi utente di modificare tutti i file del computer.]
#affermazione(5)[Un’applicazione può chiedere al sistema operativo di usare la rete.]
#affermazione(6)[Qualsiasi versione di un programma si può installare su qualsiasi sistema operativo.]

#pagebreak()

= 5. Rispondi e ragiona

Rispondi con frasi complete. Usa gli esempi della teoria quando ti sono utili.

#domanda(1)[Che differenza c’è tra software di base e software applicativo? Fai un esempio per ciascuno.]
#domanda(2)[Stai ascoltando musica mentre scrivi un documento. Quale capacità del sistema operativo rende possibile usare i due programmi nello stesso periodo di tempo? Spiega.]
#domanda(3)[Scrivi un messaggio in Telegram e premi Invia. Quale parte del lavoro svolge l’applicazione e quale servizio chiede al sistema operativo?]
#domanda(4)[Vuoi installare Telegram su un computer con macOS. La pagina offre versioni per Windows, macOS e Linux. Quale scegli e perché?]
]
