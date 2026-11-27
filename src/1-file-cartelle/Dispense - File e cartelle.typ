#import "/styles/template.typ": dispensa, verde, grigio
#import "/styles/didattica.typ": richiamo, diagramma
#show: dispensa.with(
  titolo: "File e cartelle",
  sottotitolo: "Riconoscere e organizzare i file; inviare copie e condividere materiali.",
  numerazione: "1.",
  accento: verde,
  sfondo: rgb("#F0F7F2"),
)

#[
#import "/styles/template.typ": dispensa, verde, grigio
#import "/styles/didattica.typ": richiamo, diagramma, da-ricordare, esempio-teoria

= Che cos’è un file?

Un *file* è un insieme di informazioni salvate su un computer e identificate da un nome.

Si può immaginare un file come un *contenitore digitale*: al suo interno possono esserci informazioni di diverso tipo, come testi, immagini, suoni o video.

#esempio-teoria(titolo: [Esempi di file])[
  - Un *documento di testo*, come una relazione di informatica.
- Un’*immagine*, come una fotografia scattata con lo smartphone o scaricata da Internet.
- Un *file audio*, come una canzone o una registrazione vocale.
- Un *video*.
]

= Nome ed estensione di un file

Il nome completo di un file comprende due parti, separate da un punto: *il nome scelto per riconoscerlo* e *l’estensione, che ne indica il formato*.

#block(width: 100%, breakable: false, fill: rgb("#F0F7F2"), inset: 12pt)[
  #set par(justify: false)
  #align(center)[#text(size: 15pt)[Relazione di storia#text(fill: verde, weight: "bold")[.pdf]]]
  #v(5pt)
  *Relazione di storia* descrive il contenuto; *.pdf* è l’estensione.
]

== A cosa serve l’estensione?

L’*estensione* è la parte finale del nome di un file, dopo il punto: aiuta a riconoscere il formato. Il *formato di un file* permette a noi di capire di cosa si tratta e al computer di individuare il programma giusto con cui aprirlo.

#table(
  columns: (1.35fr, 0.7fr, 1.3fr),
  table.header([File], [Estensione], [Formato]),
  [Appunti.txt], [.txt], [Testo semplice],
  [Relazione.docx], [.docx], [Documento Word],
  [Dispensa.pdf], [.pdf], [Documento PDF],
  [Vacanze.jpg], [.jpg], [Immagine],
  [Canzone.mp3], [.mp3], [Audio],
  [Video.mp4], [.mp4], [Video],
)

#esempio-teoria[
  Un file chiamato torta.jpg fa capire a una persona che si tratta di un'immagine (e che probabilmente sarà l'immagine di una torta) e al computer che per aprire quel file dovrà utilizzare il programma che legge le immagini.
]

== Estensioni più comuni

#table(
  columns: (1.15fr, 1.6fr),
  table.header([Categoria], [Estensioni più comuni]),
  [Documenti di testo], [.txt, .docx, .pdf],
  [Fogli di calcolo], [.xlsx],
  [Presentazioni], [.pptx],
  [Immagini], [.jpg, .jpeg, .png, .gif],
  [Audio], [.mp3, .wav],
  [Video], [.mp4, .mov],
  [Archivi compressi], [.zip, .rar],
)

= Cartelle e sottocartelle

Una *cartella*, chiamata anche _directory_, è un contenitore che permette di raggruppare file e mantenerli ordinati. Usare cartelle con nomi chiari aiuta a trovare più facilmente ciò che serve.

#esempio-teoria[
  Si può creare una cartella per l'anno scolastico e raccogliere al suo interno i materiali delle diverse materie.
]

Una cartella può contenere *sia file sia altre cartelle*: una cartella contenuta in un’altra viene chiamata *sottocartella*.
Continuando l'esempio fatto in precedenza, è possibile creare una cartella per ogni materia, in modo da organizzare meglio i contenuti.

L'insieme di cartelle e sottocartelle forma una *struttura gerarchica* chiamata *albero*.


#diagramma("/assets/svg/albero-file-cartelle.svg")

#text(size: 9pt, fill: grigio)[Le icone distinguono cartelle e file. Il ramo verde conduce al file Appunti.txt; gli altri rami mostrano materiali di altre materie.]

#pagebreak()

= Il percorso di un file

Come abbiamo visto, le cartelle sono organizzate *su livelli*: ciascuna può contenerne altre, che a loro volta possono contenere ulteriori cartelle e file.

Il *percorso* di un file, chiamato anche _path_, indica la sua posizione. È come un *indirizzo*: specifica dove trovare il file, indicando le cartelle che lo contengono.

== Un esempio concreto

Il percorso del file evidenziato alla pagina precedente è il seguente:

#esempio-teoria[
  #text(size: 10pt)[`C:\Documenti\Classe 1A\Informatica\Appunti.txt`]
]

#diagramma("/assets/svg/percorso-file-cartelle.svg")

- *C:* indica l’unità di archiviazione (la memoria).
- *Documenti*, *Classe 1A* e *Informatica* sono le cartelle da attraversare, in quest’ordine.
- *Appunti.txt* è il file da aprire, all’interno di Informatica.

#richiamo[
  Il simbolo `\` separa i diversi elementi del percorso. Per trovare il file bisogna seguire tutta la sequenza delle cartelle.
]

= Dove vengono salvati file e cartelle?

- *Sul computer:* i file vengono conservati nella memoria del computer utilizzato.
- *Nel cloud:* i file vengono conservati su altri computer, chiamati *server*, che possono trovarsi in diverse parti del mondo. Per raggiungerli ci si collega tramite *Internet*.

Entrambe le soluzioni hanno *vantaggi e svantaggi*. Per scegliere dove salvare un file, dobbiamo pensare a come lo useremo: ci serve su un solo computer oppure vogliamo ritrovarlo anche su altri dispositivi?

#table(
  columns: (0.8fr, 1.4fr, 1.4fr),
  table.header([Aspetto], [Sul computer], [Nel cloud]),
  [*Dove si trova*], [Nella memoria del tuo computer.], [Sui server di servizi come Drive o OneDrive.],
  [*Internet*], [*Non serve*], [*Serve* per salvare e aggiornare i file online. Alcuni si possono usare anche senza connessione.],
  [*Altri dispositivi*], [Devi portare una copia del file.], [Ritrovi il file entrando nel tuo account.],
  [*Condivisione*], [E' necessario inviare una copia, per esempio via email.], [Basta condividere il file. Se viene modificato, viene anche aggiornato automaticamente.],
  [*Possibili problemi*], [Se perdi il computer o si rompe, puoi perdere i file], [Senza Internet o accesso all’account, non è possibile utilizzare i file.],
)

#esempio-teoria[
  Se scrivi una relazione e la salvi solo sul computer di casa, a scuola dovrai portarne una copia. Se la salvi nel cloud, potrai aprirla dal computer della scuola collegandoti a Internet e accedendo al tuo account.
]

#da-ricordare[Stessa organizzazione, posto diverso][
  Sia sul computer sia nel cloud, i file possono essere organizzati in cartelle e sottocartelle. Cambia il luogo in cui vengono conservati, non il modo di organizzarli.

  Per esempio, una cartella Classe 1A, con le sottocartelle Italiano e Informatica, può essere creata sia sul proprio computer sia in un servizio cloud come Google Drive.
]

#pagebreak()

= I file PDF

*PDF* significa _Portable Document Format_. È un formato per *condividere documenti* mantenendo generalmente stabile l’impaginazione su computer, tablet e telefoni.

== Le caratteristiche principali

#table(
  columns: (1fr, 2fr),
  table.header([Caratteristica], [Che cosa significa]),
  [*Aspetto stabile*], [Testo e immagini restano nella stessa posizione sui diversi dispositivi.],
  [*Meno pratico da modificare*], [È pensato soprattutto per la lettura, anche se può essere modificato con strumenti specifici.],
  [*Contenuti diversi*], [Può includere testi, fotografie, tabelle, collegamenti e moduli.],
  [*Pronto da stampare*], [È adatto a distribuire una versione già impaginata di un documento.],
)

== Quando si usa?

- Per inviare documenti destinati alla *lettura o alla stampa*.
- Per consegnare documenti *definitivi*, per cui siamo sicuri non ci saranno più modifiche.

== Dal documento al PDF

#diagramma("/assets/svg/esportazione-pdf.svg")


I programmi per scrivere documenti, come Word, Documenti Google e LibreOffice, permettono di creare una *copia in PDF*. I passaggi possono cambiare da un programma all’altro: non serve impararli tutti a memoria. Di solito basta cercare nel menu *File* una voce come *Esporta*, *Scarica* o *Salva con nome*.

#esempio-teoria[
  In *Documenti Google* si sceglie *File → Scarica → Documento PDF (.pdf)*. Si ottiene una copia in PDF, mentre il documento originale resta disponibile e modificabile.
]

#da-ricordare[Il PDF mantiene l’aspetto del documento][
  PDF non significa «impossibile da modificare», né «automaticamente sicuro». Serve a distribuire una copia del documento dall’aspetto visivo stabile.
]

#pagebreak()

= I file ZIP

Uno *ZIP* è un file con estensione `.zip` che raccoglie altri file e cartelle in *un unico file*, mantenendo l’organizzazione delle sottocartelle. Si chiama anche *archivio ZIP*.

== Perché usiamo i file ZIP?

- Per *inviare più file insieme*, per esempio i documenti e le immagini di una ricerca.
- Per *risparmiare spazio*: la compressione può ridurre la dimensione dei file, ma il risultato dipende dal loro contenuto.

== Creare uno ZIP: dalla cartella a un unico file

#esempio-teoria[
  Immagina di avere una cartella *Scuola* con le sottocartelle *Italiano* e *Informatica*. Vuoi inviare tutti i materiali come un solo allegato: puoi creare il file *Scuola.zip*.
]

Lo ZIP contiene una *copia dei file e delle sottocartelle*. La cartella originale rimane al suo posto e puoi continuare a usarla.

Creare uno ZIP viene spesso indicato con il comando *Comprimi*. Il nome del comando può cambiare in base al programma utilizzato.

#diagramma("/assets/svg/compressione-zip.svg")

== Estrarre uno ZIP: ritrovare i file e le cartelle

*Estrarre uno ZIP* significa copiare i file e le cartelle che contiene in una cartella del computer. Per lavorare sui documenti ricevuti, prima estrai il contenuto e poi apri i file estratti.

#esempio-teoria[
  Da *Scuola.zip* ottieni la cartella *Scuola*, con le sottocartelle *Italiano* e *Informatica* e i loro file. Anche lo ZIP originale rimane disponibile.
]

#diagramma("/assets/svg/estrazione-zip.svg")

#da-ricordare[Lo ZIP è una copia dei materiali][
  Le modifiche alla cartella originale o ai file estratti non aggiornano automaticamente lo ZIP già creato. Per inviare i materiali aggiornati, crea un nuovo ZIP.

  Se vuoi che altre persone vedano le modifiche nel tempo, puoi invece condividere una cartella su Drive.
]

Prima di inviare uno ZIP via email, controlla che la sua dimensione non superi il limite degli allegati.

#pagebreak()

// Invio e condivisione dei file.
= Inviare e condividere un file

== Inviare: consegnare una copia

Quando alleghi un file a un’email, il destinatario riceve *una copia* del file in quel momento.

- Può scaricarla e conservarla.
- Se in seguito modifichi il tuo file, *la copia già inviata non cambia*.
- Puoi inviare, ad esempio, un *PDF* da leggere oppure un file modificabile, come `.docx`, se chi lo riceve deve lavorare sulla propria copia.

#esempio-teoria[
  Scrivi gli appunti su Documenti Google → li esporti in *PDF* → alleghi il PDF all’email. Chi lo riceve vede quella versione degli appunti.
]

== Come si invia un file?

Possiamo far arrivare una copia del file a un’altra persona in diversi modi.

- *Email:* scriviamo un messaggio, indichiamo il destinatario e aggiungiamo il file come *allegato*. Prima di inviare, controlliamo di aver scelto il file corretto.
- *Messaggistica:* apriamo la chat del destinatario e usiamo il comando per *allegare un file*, scegliendolo dal dispositivo. Poi inviamo il messaggio con l’allegato.
- *Trasferimento diretto con USB:* colleghiamo una *chiavetta USB* al computer e vi copiamo il file. Chi riceve la chiavetta può collegarla al proprio computer e copiare il file nella sua memoria. Non serve Internet.

Per email e messaggistica, controlliamo che la *dimensione del file* rientri nei limiti del servizio utilizzato.

#pagebreak()

== Condividere: dare accesso allo stesso materiale

Con Google Drive o altri servizi cloud si può *condividere un file o una cartella* con altre persone, senza mandarne una nuova copia ogni volta.

- Chi ha accesso può vedere *la versione aggiornata* del materiale.
- Decidi *con chi* condividere e *quali permessi* concedere.

Un *link* è un collegamento che permette di raggiungere un file o una cartella. Puoi copiarlo e inviarlo, per esempio, in un’email.

#table(
  columns: (1fr, 2.5fr),
  table.header([Permesso], [Cosa permette di fare]),
  [*Visualizzatore*], [Leggere il materiale, senza modificarlo direttamente.],
  [*Editor*], [Modificare il materiale, se il tipo di file lo permette.],
)

#esempio-teoria[
  Scrivi gli appunti su Documenti Google → premi *Condividi* → dai al docente il permesso di *Visualizzatore*. Se aggiorni gli appunti, il docente può leggere la versione aggiornata dallo stesso link.
]

#da-ricordare[Il link da solo non basta][
  Chi riceve il link deve avere il permesso di aprire il materiale. Prima di inviarlo, controlla di aver dato l’accesso alla persona giusta e scelto se può solo leggere o anche modificare.
]

#pagebreak()

= Scegliere se inviare o condividere

Prima di inviare o condividere un file, è utile farsi queste domande.

#[
#show heading.where(level: 2): set block(
  stroke: (left: 2pt + verde),
  inset: (left: 9pt, y: 4pt),
)

== Il destinatario deve solo leggere o anche modificare?

- Se deve *leggere un documento mantenendo l’impaginazione*, spesso conviene il *PDF*.
- Se deve *modificare lo stesso documento insieme a te*, conviene la *condivisione* con permesso di *Editor*.
- Se deve lavorare su *una propria copia*, puoi inviargli un file modificabile.

Il *PDF è un formato di file*, mentre l’allegato e il link sono modi per farlo arrivare agli altri. Puoi quindi inviare un PDF come allegato oppure caricarlo su Drive e condividerlo con un link.

== Il file è definitivo o potrebbe ancora cambiare?

- *Versione da consegnare:* se vuoi che chi riceve conservi quella versione del file, puoi *inviare una copia*.
- *Materiale che cambia:* se vuoi che chi riceve veda anche le modifiche successive, puoi *condividere il file*.

== Quanti file sono? Quanto pesano?

- *Un file piccolo:* si può scegliere tra invio e condivisione in base allo scopo.
- *Una cartella con molti file:* puoi condividere la cartella su Drive oppure creare *un unico file ZIP* e inviarlo.
- *Un file molto grande:* spesso è più pratico condividerlo con un link Drive, perché le email hanno limiti per gli allegati.
]

#pagebreak()

= Inviare e condividere una cartella

Una cartella non si allega direttamente a un’email come un singolo documento. Si hanno due possibilità.

== A. Voglio inviare una copia di tutto il contenuto

Cartella → *creo uno ZIP* → allego il file `.zip` all’email.

Lo ZIP è *un file unico* che conserva i file e la struttura delle sottocartelle. Chi lo riceve può *estrarlo* per tornare a lavorare sui singoli documenti.

== B. Voglio dare accesso alla cartella e ai suoi aggiornamenti

Cartella su Drive → *Condividi* → scelgo le persone e i permessi → invio il link.

#richiamo[
  *Attenzione allo ZIP* \
  Lo ZIP raccoglie più file e cartelle in un solo file, che puoi poi allegare o condividere. Prima di allegarlo, controlla che la sua dimensione non superi il limite dell’email.
]

= Riepilogo: quale soluzione uso?

#table(
  columns: (1.45fr, 1.05fr, 1.5fr),
  table.header([Situazione], [Scelta consigliata], [Perché?]),
  [Un PDF piccolo da consegnare una volta], [*Allegato email*], [Il destinatario riceve una copia precisa.],
  [Un documento da aggiornare insieme], [*Condivisione Drive*], [Le persone con il permesso di Editor lavorano sullo stesso documento.],
  [Una cartella da spedire come copia], [*ZIP + invio*], [Più file diventano un solo archivio.],
  [Una cartella con contenuti che cambiano nel tempo], [*Cartella Drive condivisa*], [Non devo creare uno ZIP a ogni aggiornamento.],
  [Un file troppo grande per l’invio], [*Link Drive*], [Evito il limite di dimensione degli allegati.],
)

#da-ricordare[Scegliere in base allo scopo][
  Invia un allegato per consegnare una copia. Condividi il materiale per dare accesso allo stesso file o alla stessa cartella, anche dopo le modifiche.
]
]

#pagebreak()
#[
#import "/styles/didattica.typ": *
#import "/styles/template.typ": blu, grigio
#set heading(numbering: none)
#set par(justify: false)

#let quesito(numero, body, righe: 2) = block(width: 100%, breakable: false, above: 10pt, below: 10pt)[
  *#numero.* #body
  #risposta(righe: righe)
]
#let scelta(body) = [#box(width: 3mm, height: 3mm, stroke: 0.5pt + grigio) #body]

#titolo-sezione[Esercizi: file e cartelle]
#text(fill: grigio)[Completa, collega, ragiona e metti in pratica.]

= 1. Completa il testo

Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* estrazione · cartella · file · ZIP · sottocartella · estensione · PDF · percorso
]

Un #vuoto(26mm) è un contenitore digitale identificato da un nome. La parte finale del nome, dopo il punto, si chiama #vuoto(34mm).

Una #vuoto(30mm) raggruppa i materiali; se è contenuta in un’altra cartella si chiama #vuoto(35mm).

Il #vuoto(30mm) indica dove si trova un file. Per distribuire un documento mantenendone l’impaginazione si può usare il formato #vuoto(18mm).

Un archivio #vuoto(18mm) raccoglie file e cartelle in un solo file. L’operazione che permette di ricavarne nuovamente i singoli materiali si chiama #vuoto(33mm).

= 2. Completa la mappa

Inserisci nei riquadri: *percorso · sottocartelle · estensione · cartella*.

#diagramma("/assets/svg/mappa-esercizi-file-cartelle.svg")

#pagebreak()

= 3. Scomponi i nomi dei file

Separa il nome scelto per descrivere il contenuto dall’estensione. Scrivi l’estensione completa di punto, poi indica il tipo di contenuto.

#table(
  columns: (1.25fr, 1.1fr, 0.7fr, 1fr), inset: (x: 7pt, y: 12pt),
  table.header([Nome completo], [Nome senza estensione], [Estensione], [Tipo di contenuto]),
  [Ricerca.pdf], [], [], [],
  [Tema.docx], [], [], [],
  [Gita.jpg], [], [], [],
  [Intervista.mp3], [], [], [],
  [Classe1A.zip], [], [], [],
)

= 4. Associa e classifica

Per ogni attività scegli un’estensione adatta tra quelle proposte. Ogni estensione va usata una volta sola.

*ESTENSIONI:* .xlsx · .png · .txt · .pptx · .zip · .mp4

#table(
  columns: (2.6fr, 1fr), inset: (x: 7pt, y: 11pt),
  table.header([Materiale da salvare], [Estensione]),
  [Un breve appunto di solo testo], [],
  [Un foglio di calcolo con le spese della gita], [],
  [Una presentazione sulla propria classe], [],
  [Un’immagine del logo della scuola], [],
  [Un video del laboratorio], [],
  [Un archivio con tutti i materiali di un progetto], [],
)

#quesito(1)[Una cartella si chiama `Informatica`. Dal solo nome puoi stabilire quali tipi di file contiene? Spiega.]

#pagebreak()

= 5. Leggi l’albero delle cartelle

Osserva l’albero: rispondi usando i nomi esatti dei materiali.

#diagramma("/assets/svg/albero-file-cartelle.svg")

#quesito(1, righe: 1)[Quali sono le tre sottocartelle di `Classe 1A`?]
#quesito(2, righe: 1)[In quale cartella si trova `Tema.docx`? Quali file contiene `Informatica`?]
#quesito(3, righe: 1)[Quanti file sono rappresentati in tutto? Conta solo i file, escludendo le cartelle.]

#pagebreak()

= 6. Progetta un archivio ordinato

Nella cartella `Classe 1A` trovi questi file tutti mescolati:

#richiamo[
  `Tema.docx` · `Appunti informatica.txt` · `Esercizi matematica.xlsx` · `Lettura italiano.pdf` · `Dispensa informatica.pdf` · `Problemi matematica.pdf`
]

Disegna un albero con tre sottocartelle (*Italiano*, *Informatica*, *Matematica*) e colloca ogni file nella materia adatta. Usa nomi completi ed estensioni.

#block(width: 100%, height: 55mm, stroke: 0.5pt + rgb("#bbbbbb"), inset: 10pt)[
  #text(fill: grigio, size: 9pt)[Classe 1A]
]

#pagebreak()

= 7. Metti in ordine e risolvi

*1. Creare e inviare uno ZIP.* Numera le azioni da 1 a 4, partendo dai materiali ancora da organizzare.

#table(
  columns: (0.45fr, 3fr),
  table.header([Ordine], [Azione]),
  [], [Allego `Progetto.zip` all’email.],
  [], [Raccolgo i materiali nella cartella `Progetto`.],
  [], [Controllo che lo ZIP contenga i materiali corretti e che rientri nel limite degli allegati.],
  [], [Creo `Progetto.zip` dalla cartella.],
)

*2. Il limite dell’email.* Una cartella occupa 40 MB; lo ZIP ottenuto occupa 32 MB. L’email accetta un allegato al massimo di 25 MB. Lo ZIP si può allegare? Di quanti MB supera il limite? Proponi una soluzione per rendere disponibili tutti i materiali.
#risposta(righe: 2)

#pagebreak()

// Esercizi su invio e condivisione, con numerazione progressiva.
#titolo-sezione[Esercizi: inviare e condividere]

= 8. Completa il testo

Usa ogni parola una sola volta.

#richiamo[
  *PAROLE:* Editor · Visualizzatore · copia · ZIP · aggiornata
]

Con un allegato email invio una #vuoto(30mm) del file. Con la condivisione chi ha accesso può vedere la versione #vuoto(32mm) del materiale.

Il permesso di #vuoto(35mm) permette di leggere senza modificare direttamente; quello di #vuoto(25mm) permette di modificare, se il tipo di file lo consente.

Per raccogliere una cartella con le sue sottocartelle in un unico file da inviare posso creare uno #vuoto(22mm).

= 9. Vero o falso? Motiva

Spunta una casella e spiega la tua scelta.

#affermazione(1)[Se correggo il documento originale, si aggiorna anche l’allegato già ricevuto dal docente.]
#affermazione(2)[Posso inviare per email il link a una cartella condivisa.]
#affermazione(3)[Creare uno ZIP garantisce che il file rientri nel limite di qualsiasi email.]

#pagebreak()

= 10. Associa situazione e soluzione

Scegli tra le quattro soluzioni proposte. Usa ciascuna una sola volta.

*A.* Allegato PDF · *B.* Condivisione con permesso di Editor \
*C.* Condivisione con permesso di Visualizzatore · *D.* ZIP allegato all’email

#table(
  columns: (3fr, 0.65fr), inset: (x: 7pt, y: 10pt),
  table.header([Situazione], [Lettera]),
  [Il docente deve leggere una relazione definitiva mantenendo l’impaginazione. Il PDF è piccolo.], [],
  [Un compagno deve correggere lo stesso documento insieme a me.], [],
  [Il docente deve vedere gli aggiornamenti dei miei appunti, senza modificarli.], [],
  [Devo spedire una copia di una cartella mantenendo le sottocartelle. L’archivio rientra nel limite degli allegati.], [],
)

= 11. Riordina le operazioni

Numera da 1 a 4 le azioni per condividere un documento modificabile con un compagno.

#table(
  columns: (0.45fr, 3fr),
  table.header([Ordine], [Azione]),
  [], [Invio al compagno il link al documento condiviso.],
  [], [Indico il compagno con cui condividere il documento.],
  [], [Apro le opzioni di condivisione del documento.],
  [], [Imposto il permesso di Editor e confermo la condivisione.],
)

= 12. Risolvi il caso

La cartella di un progetto di classe cambia ogni giorno. Un compagno deve aggiornare i materiali insieme a te; il docente deve poterli leggere senza modificarli. Lo ZIP della cartella occupa 60 MB, mentre l’email accetta allegati al massimo di 25 MB.

Proponi una soluzione che permetta a entrambi di accedere agli aggiornamenti. Indica i permessi per il compagno e per il docente e spiega perché inviare quello ZIP come allegato non risolve il problema.

#risposta(righe: 4)
]
