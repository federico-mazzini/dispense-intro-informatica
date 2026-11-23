#import "/styles/template.typ": dispensa, verde, grigio
#import "/styles/didattica.typ": richiamo, diagramma
#show: dispensa.with(
  titolo: "File e cartelle",
  sottotitolo: "Riconoscere i file, organizzare le cartelle e leggere i percorsi.",
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

= 5. Vero o falso? Motiva

Spunta una casella e spiega la tua scelta.

#affermazione(1)[Una cartella può contenere sia file sia altre cartelle.]
#affermazione(2)[L’estensione e il percorso di un file indicano la stessa cosa.]
#affermazione(3)[Un PDF è sempre impossibile da modificare.]
#affermazione(4)[Uno ZIP conserva anche l’organizzazione delle sottocartelle.]

= 6. Scegli la risposta

Per ogni domanda scegli una sola risposta.

*1. Quale elemento indica la posizione di un file?*

#scelta[Il percorso] #h(5mm) #scelta[L’estensione] #h(5mm) #scelta[Il formato PDF]

#v(7pt)
*2. Estraendo uno ZIP, che cosa ottieni?*

#scelta[File e cartelle separati] \
#scelta[Un PDF di tutti i documenti] \
#scelta[Una cartella che aggiorna automaticamente lo ZIP]

#v(7pt)
*3. Quale affermazione sul cloud è corretta?*

#scelta[I file non si trovano su alcun computer] \
#scelta[I file sono conservati su server raggiungibili tramite Internet] \
#scelta[I file non possono essere organizzati in cartelle]

#pagebreak()

= 7. Leggi l’albero delle cartelle

Osserva l’albero: rispondi usando i nomi esatti dei materiali.

#diagramma("/assets/svg/albero-file-cartelle.svg")

#quesito(1, righe: 1)[Quali sono le tre sottocartelle di `Classe 1A`?]
#quesito(2, righe: 1)[In quale cartella si trova `Tema.docx`? Quali file contiene `Informatica`?]
#quesito(3, righe: 1)[Quanti file sono rappresentati in tutto? Conta solo i file, escludendo le cartelle.]

= 8. Completa e leggi i percorsi

Supponi che `Documenti` sia una cartella creata nell’unità `C:` di un computer Windows.

*1.* Completa il percorso che porta al foglio di calcolo dell’albero.

`C:\Documenti\Classe 1A\`#vuoto(31mm)`\Esercizi.xlsx`

*2.* Scrivi il percorso completo di `Lettura.pdf`.
#risposta(righe: 1)

*3.* Considera `C:\Documenti\Classe 1A\Informatica\Dispensa.pdf`. Qual è il file? Qual è la cartella che lo contiene direttamente?
#risposta(righe: 1)

#pagebreak()

= 9. Trova e correggi gli errori

In ciascuna frase c’è un errore. Riscrivila correttamente.

#quesito(1)[«Nel nome `Appunti.txt`, l’estensione è Appunti.»]
#quesito(2)[«Esportando una relazione in PDF, l’originale modificabile viene eliminato.»]
#quesito(3)[«Se aggiungo un file alla cartella estratta, anche il vecchio ZIP si aggiorna.»]

= 10. Progetta un archivio ordinato

Nella cartella `Classe 1A` trovi questi file tutti mescolati:

#richiamo[
  `Tema.docx` · `Appunti informatica.txt` · `Esercizi matematica.xlsx` · `Lettura italiano.pdf` · `Dispensa informatica.pdf` · `Problemi matematica.pdf`
]

Disegna un albero con tre sottocartelle (*Italiano*, *Informatica*, *Matematica*) e colloca ogni file nella materia adatta. Usa nomi completi ed estensioni.

#block(width: 100%, height: 55mm, stroke: 0.5pt + rgb("#bbbbbb"), inset: 10pt)[
  #text(fill: grigio, size: 9pt)[Classe 1A]
]

#pagebreak()

= 11. Ragiona sui PDF

#quesito(1)[Devi consegnare una relazione definitiva, destinata alla lettura e alla stampa su dispositivi diversi. Quale formato scegli e perché?]
#quesito(2)[Hai esportato `Ricerca.pdf` da un documento modificabile. Dopo correggi una frase nell’originale. La copia PDF già esportata contiene la correzione? Che cosa fai per ottenere un PDF aggiornato?]
#quesito(3)[Un compagno dice: «Il PDF contiene solo immagini e non può avere collegamenti o moduli». Spiega perché non è corretto.]

= 12. Metti in ordine e risolvi

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

= 13. Spiega perché: i file ZIP

Rispondi alle cinque domande, motivando le tue scelte.

#quesito(1, righe: 3)[Perché uno ZIP è comodo quando devo inviare una cartella con 20 file?]
#quesito(2, righe: 3)[Che differenza c’è tra *estrarre* uno ZIP e *creare* uno ZIP?]
#quesito(3, righe: 3)[Se aggiungo un’immagine nella cartella estratta, cambia anche il vecchio ZIP?]
#quesito(4, righe: 3)[Quando è meglio usare una *cartella Drive condivisa* anziché inviare uno ZIP? Pensa a materiali che cambiano ogni giorno.]
#quesito(5, righe: 3)[Devo inviare una cartella molto grande: basta creare uno ZIP per poterla allegare a qualsiasi email?]

#pagebreak()

= 14. Sperimenta in laboratorio

Usa materiali di prova creati da te per svolgere le attività.

== A. Organizza e osserva

Crea la cartella `Laboratorio file` con le sottocartelle `Italiano` e `Informatica`. Inserisci un documento in ciascuna sottocartella. Leggi i nomi completi, incluse le estensioni, e individua i percorsi.

#table(
  columns: (0.9fr, 0.65fr, 0.9fr, 1.8fr), inset: (x: 7pt, y: 14pt),
  table.header([Nome del file], [Estensione], [Cartella che lo contiene], [Percorso completo]),
  [], [], [], [],
  [], [], [], [],
)

== B. Esporta, comprimi ed estrai

+ Esporta uno dei documenti in *PDF*. Apri il PDF e confrontalo con l’originale: l’aspetto è lo stesso? L’originale è ancora disponibile?
+ Crea `Laboratorio file.zip` dalla cartella di lavoro.
+ Estrai lo ZIP in una cartella diversa da quella originale. Controlla che siano presenti entrambe le sottocartelle e tutti i file.
+ Nella cartella estratta crea `Nuovo appunto.txt`. Riapri lo ZIP originale e controlla se contiene anche questo nuovo file.

*Che cosa hai osservato sul PDF e sullo ZIP?*
#risposta(righe: 3)

== C. Crea una breve guida

Scrivi un documento intitolato *Come organizzo e preparo i miei materiali*. Inserisci un albero delle cartelle create, un esempio di percorso completo e una spiegazione delle differenze tra *cartella*, *PDF* e *ZIP*. Esporta la guida in PDF.

#richiamo[
  *CONTROLLO FINALE* \
  Nomi chiari · estensioni corrette · cartelle ordinate · PDF leggibile · ZIP completo di tutte le sottocartelle.
]
]
