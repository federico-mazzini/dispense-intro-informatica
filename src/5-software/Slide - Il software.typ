#import "/styles/slides.typ": *
#import "/styles/slides-icdl.typ": pagina-icdl, riga, lezione-icdl

#show: presentazione.with("Il software")
#let foto(nome, didascalia, altezza: 155pt) = figura(
  "/assets/immagini/5-software/" + nome + ".jpg", didascalia, altezza: altezza,
)

#apertura("Il software", "Programmi, sistema operativo e applicazioni")

// Pagina 33 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(33)[
  #riga(150.468, 402.599, 20, ampiezza: 663.002)[#text(weight: "bold", "Il comportamento di un computer è definito dalle istruzioni che la ")]
  #riga(150.468, 429.099, 20, ampiezza: 527.64)[#text(weight: "bold", "macchina segue, non da come è costruita fisicamente.")]
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 174.804)[#text(weight: "bold", "Software")]
  #riga(483.213, 115.768, 27, centro: true, ampiezza: 441.126)[#text(weight: "bold", "Il comportamento di un computer ")]
  #riga(480, 359.565, 40, tinta: rosso, centro: true, ampiezza: 668.12)[#text(weight: "bold", "I computer sono macchine universali")]
  #riga(85.759, 180.449, 17.5, ampiezza: 716.864)[#text("•")#text(" ")#text("Tutto ciò che in un computer è non fisico e non tangibile prende il nome di software.  ")]
  #riga(85.759, 216.449, 17.5, ampiezza: 756.099)[#text("•")#text(" ")#text("Il software da al computer un comportamento e uno scopo ed è costituito dai programmi. ")]
  #riga(85.759, 252.449, 17.5, ampiezza: 776.837)[#text("•")#text(" ")#text("In ogni computer, vi è una netta ")#text(weight: "bold", "separazione")#text(" tra la macchina fisica, l’")#text(weight: "bold", "hardware")#text(", dal ")]
  #riga(101.801, 275.949, 17.5, ampiezza: 463.452)[#text("programma che la macchina sta eseguendo, il ")#text(weight: "bold", "software.")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// Pagina 34 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(34, grafica: "/assets/icdl/software-04.svg")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 174.804)[#text(weight: "bold", "Software")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 150.498)[#text(weight: "bold", "Programma")]
  #riga(51.745, 180.48, 17.5, ampiezza: 868.105)[#text("Un programma è un ")#text(weight: "bold", "insieme di istruzioni")#text(", ")#text(weight: "bold", "leggibili")#text(" da un computer, per ")#text(weight: "bold", "risolvere")#text(" in maniera ")#text(weight: "bold", "automatica")#text(" ")]
  #riga(51.745, 203.98, 17.5, ampiezza: 161.7)[#text("un certo problema. ")]
  #riga(51.745, 250.98, 17.5, ampiezza: 872.585)[#text("I programmi sono scritti in un certo ")#text(weight: "bold", "linguaggio di programmazione")#text(", specificatamente pensato per essere ")]
  #riga(51.745, 274.48, 17.5, ampiezza: 210.665)[#text("capito da una macchina.  ")]
  #riga(51.745, 310.48, 17.5, ampiezza: 716.17)[#text(weight: "bold", "Programmare")#text(" significa scrivere il codice di un programma, chiamato ")#text(weight: "bold", "codice sorgente")#text(".")]
  #riga(137.056, 482.881, 20.5, ampiezza: 146.866)[#text(weight: "bold", "50 ")#text(size: 16.5pt, "milioni di righe")]
  #riga(721.049, 482.881, 20.5, ampiezza: 127.981)[#text(weight: "bold", "500 ")#text(size: 16.5pt, " mila righe")]
  #riga(76.45, 373.067, 17.5, ampiezza: 126.262)[#text(weight: "bold", "Linee di codice")]
  #riga(432.603, 482.881, 20.5, ampiezza: 146.149)[#text(weight: "bold", "36 ")#text(size: 16.5pt, "milioni di righe")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

#slide("Il codice sorgente", "Programmi di dimensioni diverse")[
  Un programma può contenere poche righe di codice oppure milioni. Le cifre mostrate nella slide precedente sono stime. Il conteggio dipende dalla versione del programma e da quali parti si includono.

  #esempio[
    Un semplice programma può calcolare il totale di due numeri. Un sistema operativo deve anche gestire file, memoria, periferiche e applicazioni.
  ]
]

// Pagina 35 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(35, grafica: "/assets/icdl/software-05.svg")[
  #riga(527.058, 224.842, 17.325, ampiezza: 385.859)[#text("Tutti i software (programmi) che permettono di ")]
  #riga(527.058, 247.842, 17.325, ampiezza: 275.658)[#text("svolgere attività utili per gli utenti ")]
  #riga(549.058, 283.217, 17.325, ampiezza: 234.887)[#text("•")#text(" ")#text("Scrivere testi, mail, codice ")]
  #riga(549.058, 318.592, 17.325, ampiezza: 230.088)[#text("•")#text(" ")#text("Ascoltare musica, giocare ")]
  #riga(549.058, 353.967, 17.325, ampiezza: 239.703)[#text("•")#text(" ")#text("Andare sulla luna (davvero) ")]
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 174.804)[#text(weight: "bold", "Software")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 504.495)[#text(weight: "bold", "Software di base e software applicativo")]
  #riga(250.596, 182.928, 25, centro: true, ampiezza: 198.675)[#text(weight: "bold", "Software di base")]
  #riga(717.694, 182.928, 25, centro: true, ampiezza: 249.275)[#text(weight: "bold", "Software Applicativo")]
  #riga(68.7, 225.302, 17.5, ampiezza: 368.427)[#text("Tutto il software che serve a far funzionare il ")]
  #riga(68.7, 248.802, 17.5, ampiezza: 85.207)[#text("computer ")]
  #riga(90.7, 284.802, 17.5, ampiezza: 214.142)[#text("•")#text(" ")#text("BIOS/UEFI (accensione) ")]
  #riga(90.7, 320.802, 17.5, ampiezza: 163.794)[#text("•")#text(" ")#text("Sistema operativo")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// Pagina 37 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(37, grafica: "/assets/icdl/software-07.svg")[
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 346.122)[#text(weight: "bold", "Sistema operativo")]
  #riga(480, 115.768, 27, centro: true, ampiezza: 481.005)[#text(weight: "bold", "Funzioni principali e astrazioni fornite")]
  #riga(235.41, 337.059, 15, ampiezza: 159.48)[#text("Esegue le applicazioni ")]
  #riga(313.162, 368.259, 25, tinta: rosso, centro: true, ampiezza: 97.225)[#text(weight: "bold", "Processi")]
  #riga(510.675, 337.059, 15, ampiezza: 259.89)[#text("Fa dialogare applicazioni e hardware ")]
  #riga(638.633, 368.259, 25, tinta: rosso, centro: true, ampiezza: 130.25)[#text(weight: "bold", "System call")]
  #riga(62.777, 433.542, 15, ampiezza: 173.805)[#text("Salvare e recuperare file ")]
  #riga(76.165, 453.542, 15, ampiezza: 147.03)[#text("Gestisce la memoria ")]
  #riga(147.692, 484.742, 25, tinta: rosso, centro: true, ampiezza: 130.275)[#text(weight: "bold", "File System")]
  #riga(705.941, 434.386, 15, ampiezza: 202.335)[#text("Chi può accedere al sistema ")]
  #riga(756.266, 454.386, 15, ampiezza: 101.685)[#text("Cosa può fare ")]
  #riga(805.121, 485.586, 25, tinta: rosso, centro: true, ampiezza: 210.925)[#text(weight: "bold", "Utente / permesso")]
  #riga(416.385, 455.156, 15, ampiezza: 131.205)[#text("Naviga su internet ")]
  #riga(480, 486.357, 25, tinta: rosso, centro: true, ampiezza: 52.8)[#text(weight: "bold", "Rete")]
  #riga(38.801, 164.772, 17.5, ampiezza: 887.03)[#text("Il sistema operativo è il software di base che si frappone tra l’hardware e le applicazioni. Permette di ")]
  #riga(38.801, 188.272, 17.5, ampiezza: 887.035)[#text("eseguire programmi, anche in contemporanea, questa proprietà viene chiamata ")#text(weight: "bold", "multitasking")#text(". Controlla ")]
  #riga(38.801, 211.772, 17.5, ampiezza: 885.845)[#text(weight: "bold", "chi può accedere ")#text("al sistema (utenti autorizzati) e ")#text(weight: "bold", "che cosa si può fare")#text(" (permessi). Permette di ")#text(weight: "bold", "utilizzare la ")]
  #riga(38.801, 235.272, 17.5, ampiezza: 887.035)[#text(weight: "bold", "memoria secondaria")#text(", tramite un sistema di file e cartelle (file system). Permette di ")#text(weight: "bold", "comunicare")#text(" con il resto ")]
  #riga(38.801, 258.772, 17.5, ampiezza: 240.31)[#text("del mondo attraverso la rete. ")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

// Pagina 38 del PDF ICDL “Computer e dispositivi”.
#lezione-icdl(38, "Sistema operativo", "Alcuni esempi")[
Il *sistema operativo* gestisce le risorse del dispositivo e fornisce gli strumenti per eseguire le applicazioni.

- Nei *computer desktop e portatili* troviamo sistemi come Windows, macOS e le distribuzioni GNU/Linux, ad esempio Ubuntu.
- Negli *smartphone e tablet* troviamo sistemi come Android, iOS e iPadOS.

Un’applicazione deve essere compatibile con il sistema operativo e con il dispositivo su cui viene eseguita. Per questo un programma per Windows non si installa automaticamente su un telefono Android.
]

#slide("Il sistema operativo al lavoro", "Processi, memoria e richieste delle app")[
  Quando avvii un’applicazione, il sistema operativo gestisce il programma in esecuzione, chiamato *processo*, e gli assegna la RAM necessaria.

  Un’applicazione può chiedere al sistema operativo di aprire un file o di usare la rete. Queste richieste si chiamano *chiamate di sistema* (_system call_).
]

#slide("Il file system", "File, cartelle e percorsi")[
  #due-colonne(
    [
      Il *file system* organizza e ritrova i dati nella memoria secondaria.

      Vediamo i dati come *file e cartelle*, senza dover conoscere la loro posizione fisica sull’unità. Questa semplificazione si chiama *astrazione*.

      Il percorso indica quale ramo dell’albero seguire. Nell’esempio, il percorso della cartella *Grades* parte dall’unità *D:*.
    ],
    foto("albero-file", [Un albero di file e cartelle.], altezza: 244pt),
    rapporto: (1.1fr, 1fr),
  )
]

// Pagina 40 del PDF ICDL “Computer e dispositivi”.
#pagina-icdl(40, grafica: "/assets/icdl/software-10.svg")[
  #riga(38.801, 164.772, 17.5, ampiezza: 566.23)[#text("È il software che serve all’utente finale per fare qualcosa di concreto. ")]
  #riga(38.801, 200.772, 17.5, ampiezza: 893.997)[#text("Viene sempre eseguito dal sistema operativo, non comunica direttamente con l’hardware o la rete. Il S.O. ")]
  #riga(38.801, 224.272, 17.5, ampiezza: 894.005)[#text("fornisce gli strumenti, il software applicativo li usa per realizzare un obiettivo (scrittura di documenti, ")]
  #riga(38.801, 247.772, 17.5, ampiezza: 375.585)[#text("navigazione online, messaggistica, gaming…) ")]
  #riga(38.801, 283.772, 17.5, ampiezza: 894.005)[#text("Un software applicativo è sempre scritto per una certa tipologia di sistema operativo, ecco perchè quando ")]
  #riga(38.801, 307.272, 17.5, ampiezza: 585.988)[#text("scarichiamo un software ci viene sempre chiesto per quale piattaforma!")]
  #riga(480, 82.34, 35, tinta: rosso, centro: true, ampiezza: 394.296)[#text(weight: "bold", "Software applicativo")]
  #riga(480, 115.79, 27, centro: true, ampiezza: 152.199)[#text(weight: "bold", "Panoramica")]
  #riga(29.8, 528.275, 9.68, ampiezza: 156.758)[#text("Polo Tecnico Professionale di Lugo")]
  #riga(831.386, 528.275, 9.68, ampiezza: 98.813)[#text("Prof. Federico Mazzini")]
]

#slide("Un messaggio su Telegram", "Come un’app usa i servizi del sistema operativo")[
  + Scrivi un messaggio e premi *Invia*.
  + Telegram gestisce il testo e la conversazione. Per trasmettere i dati usa i servizi di rete del *sistema operativo*.

  #esempio[
    Quando salvi un documento, l’applicazione usa un altro servizio del sistema operativo per registrare il file nella memoria secondaria.
  ]
]

#slide("La scelta della piattaforma", "La versione adatta al sistema operativo")[
  Prima di installare un’applicazione, controlla il *sistema operativo* del dispositivo. La stessa app può offrire versioni diverse.

  #esempio[
    La pagina di Telegram Desktop mostra download per Windows, macOS e Linux. Se il tuo computer usa macOS, scegli la versione dedicata a quel sistema.
  ]
]

#slide("Prova a ragionare", "Il sistema operativo nel lavoro quotidiano")[
  + Stai scrivendo con un programma mentre ascolti musica con un altro. Quale funzione del sistema operativo ti permette di usarli nello stesso periodo?
  + Salvi la relazione nella cartella di informatica. Quale parte del sistema organizza e ritrova quel file?
  + Una pagina di download offre versioni per Windows, Linux e macOS. Come scegli quella giusta?
]
