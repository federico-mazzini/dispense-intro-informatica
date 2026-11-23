#import "/styles/percorso-computer.typ": *
#show: percorso.with(titolo: "Introduzione ai computer", numero: "04", accento: rgb("#963B36"), sfondo: rgb("#FBF1EF"))

#[
#import "/styles/percorso-computer.typ": *
#import "/styles/template.typ": grigio
#import "/styles/didattica.typ": esempio-teoria, da-ricordare

// Immagini originali delle slide; proporzioni conservate, senza ritaglio.
#let foto(nome, altezza: 32mm, didascalia: none) = block(breakable: false, width: 100%)[
  #align(center)[#image("/assets/immagini/4-introduzione-computer/" + nome, width: 100%, height: altezza, fit: "contain")]
  #if didascalia != none [
    #block(above: 4pt)[#align(center)[#text(size: 9pt, fill: grigio)[#didascalia]]]
  ]
]
#let tipo(titolo, nome, body) = block(width: 100%, breakable: false, above: 12pt, below: 12pt)[
  #grid(columns: (35mm, 1fr), column-gutter: 6mm,
    foto(nome, altezza: 32mm),
    [#block(sticky: true, below: 5pt)[#text(weight: "bold")[#titolo]] #body],
  )
]

= I computer oggi

Quando pensiamo a un *computer*, immaginiamo spesso un dispositivo fisso sulla scrivania oppure un portatile. In realtà, i computer possono avere forme e dimensioni molto diverse.

Anche *smartphone, tablet e console* sono computer: ricevono dati, li elaborano seguendo le istruzioni dei programmi e producono risultati. Alcuni computer si possono indossare; altri sono inseriti dentro elettrodomestici, automobili e macchinari.

== Computer desktop e portatili

#tipo([Computer desktop], "desktop.jpg")[
  I *computer desktop*, o *computer fissi*, sono progettati per essere usati su una scrivania. Di solito si collegano a un monitor, a una tastiera e a un mouse. Le loro prestazioni dipendono dai componenti e dal lavoro da svolgere.
]

#tipo([Computer portatili], "portatile.jpg")[
  I *computer portatili*, chiamati anche *notebook* o *laptop*, riuniscono schermo, tastiera e componenti in un unico dispositivo facile da trasportare. La *batteria ricaricabile* permette di usarli anche senza collegarli a una presa elettrica.
]

== Smartphone e tablet

#tipo([Smartphone], "smartphone.jpg")[
  Gli *smartphone* sono telefoni cellulari che permettono anche di eseguire applicazioni. Attraverso lo *schermo touchscreen*, sensibile al tocco, possiamo navigare su Internet, scrivere messaggi e usare la posta elettronica.
]

#tipo([Tablet], "tablet.jpg")[
  I *tablet* hanno uno schermo touchscreen più grande di quello di uno smartphone. Permettono di leggere, guardare video, scrivere e usare applicazioni. Possono sostituire un portatile per alcune attività, a seconda dei programmi e degli accessori disponibili.
]

#pagebreak()

= Altre tipologie di computer

#tipo([Console], "console.jpg")[
  Le *console* sono computer progettati soprattutto per i *videogiochi*. Alcune si collegano a un televisore, altre hanno uno schermo integrato. Il giocatore usa un *controller* per inviare i comandi al gioco.
]

#tipo([Server], "server.jpg")[
  I *server* sono computer che forniscono *dati e servizi* ad altri dispositivi attraverso una rete. Quando visitiamo un sito web o guardiamo un film in streaming, il nostro dispositivo riceve i dati da uno o più server.
]

#tipo([Dispositivi wearable], "smartwatch.jpg")[
  I *dispositivi wearable*, cioè *indossabili*, comprendono smartwatch, auricolari intelligenti e smartglasses. A seconda del dispositivo, i sensori possono misurare il battito cardiaco, raccogliere dati sul sonno o rilevare il rumore dell’ambiente.
]

#tipo([Sistemi embedded], "embedded.jpg")[
  I *sistemi embedded* sono computer *incorporati* in un dispositivo o in un macchinario. Svolgono funzioni precise, come controllare il lavaggio in una lavatrice o la cottura in un forno a microonde.
]

#da-ricordare[Forme diverse, lo stesso principio][
  Un computer può essere fisso, portatile, indossabile o incorporato in un altro dispositivo. Cambiano la forma e lo scopo, ma tutti elaborano dati seguendo le istruzioni dei programmi.
]

#pagebreak()

= I sistemi embedded

Un *sistema embedded* controlla una o più funzioni del dispositivo in cui è inserito. Il termine inglese _embedded_ significa *«incorporato»*.

Un computer da scrivania può essere usato per attività molto diverse, come scrivere, giocare e navigare online. Un sistema embedded è invece progettato per *compiti specifici*: nella lavatrice, per esempio, controlla le fasi del lavaggio.

#foto("robot.jpg", altezza: 52mm, didascalia: [Robot industriali nelle catene di montaggio: un esempio di sistemi progettati per funzioni specifiche.])

#grid(columns: (1.25fr, 1fr), column-gutter: 8mm,
  esempio-teoria(titolo: [Esempi nell’uso quotidiano])[
    - *Elettrodomestici:* lavatrici, forni a microonde e frigoriferi intelligenti.
    - *Automobili:* controllo dei freni (*ABS*), airbag e gestione del motore.
    - *Dispositivi medici:* pacemaker e macchinari per ospedali.
    - *Robotica:* robot industriali nelle catene di montaggio.
  ],
  foto("pacemaker.jpg", altezza: 65mm, didascalia: [Il pacemaker è un esempio di dispositivo medico con un sistema incorporato.]),
)

#pagebreak()

= I server

Un *server* mette dati e servizi a disposizione di altri dispositivi collegati a una rete, come Internet. Il suo compito è *ricevere richieste e fornire risposte*.

Quando apri una pagina web, il tuo dispositivo chiede al server i dati necessari per mostrarla. Per rendere i servizi disponibili in ogni momento, molti server rimangono accesi *24 ore al giorno, 7 giorni su 7*.

#foto("server-ibm.jpg", altezza: 55mm, didascalia: [Sistemi server: computer che mettono dati e servizi a disposizione di altri computer.])

#esempio-teoria(titolo: [Esempi nell’uso quotidiano])[
  *Streaming e social media.* I server conservano video e immagini e inviano al nostro dispositivo i dati necessari per visualizzarli. Non occorre avere già salvato sul dispositivo una copia completa del contenuto.

*Gaming online.* Nei giochi multiplayer, i server coordinano posizioni, punteggi e azioni dei giocatori. In questo modo i partecipanti possono seguire la stessa partita.

*Cloud storage: Google Drive e iCloud.* Salvare un file nel cloud significa conservarlo sui server del servizio, per esempio Google Drive, e ritrovarlo accedendo al proprio account.

*Web ed email.* I *web server* forniscono le pagine dei siti. I *server di posta* gestiscono l’invio e la ricezione delle email.
]

#pagebreak()

= Hardware e software

== Hardware: le componenti fisiche

L’*hardware (HW)* è l’insieme delle *componenti fisiche* del computer: le parti che possiamo toccare. Ne fanno parte sia i componenti interni, come la scheda madre, sia i dispositivi collegati, come tastiera e monitor.

#grid(columns: (1fr, 1fr), column-gutter: 8mm,
  foto("scheda-madre.jpg", altezza: 40mm, didascalia: [Una scheda madre.]),
  foto("smartphone-interno.jpg", altezza: 40mm, didascalia: [Le componenti fisiche all’interno di uno smartphone.]),
)

== Software: i programmi

Il *software (SW)* è l’insieme dei *programmi* che permettono al computer di funzionare e svolgere attività. I programmi sono conservati nella memoria del dispositivo: le loro istruzioni vengono eseguite dai componenti hardware.

#esempio-teoria[
  Windows e Android sono sistemi operativi. Anche le applicazioni con cui scriviamo, giochiamo o usiamo i servizi online, come Google Drive, fanno parte del software.
]

#grid(columns: (1.7fr, 1fr, 0.9fr), column-gutter: 8mm,
  foto("windows.jpg", altezza: 18mm, didascalia: [Windows.]),
  foto("android.jpg", altezza: 18mm, didascalia: [Android.]),
  foto("drive.jpg", altezza: 18mm, didascalia: [Google Drive.]),
)

#da-ricordare[Hardware e software lavorano insieme][
  L’hardware è la parte fisica del computer. Il software fornisce le istruzioni che l’hardware esegue: per svolgere un’attività servono entrambi.
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

Scegli uno dei quattro tipi di computer presenti nella mappa. Fai un esempio concreto e spiega dove o per che cosa viene usato.
#risposta(righe: 3)

#pagebreak()

= 4. Vero o falso? Motiva

Spunta una casella per ogni frase. Spiega la tua scelta e correggi le frasi false.

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
]
