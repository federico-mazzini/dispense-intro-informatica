#import "/styles/slides.typ": *

#show: presentazione.with("Come funziona un computer")
#apertura("Come funziona un computer", "Dall’accensione all’apertura di un file")

#slide("Dall’accensione al desktop", "Le fasi dell’avvio")[
  #tavola("/assets/svg/hardware-software/avvio.svg", altezza: 185pt)

  L’alimentatore o la batteria fornisce energia ai componenti. La *CPU* inizia a eseguire le prime istruzioni. Il computer è pronto per le attività quotidiane dopo l’avvio del *sistema operativo*.
]

#slide("Il firmware", "Le prime istruzioni eseguite dalla CPU")[
  Il *firmware* è un software conservato nel dispositivo, spesso in una memoria flash. Un esempio nei PC moderni è *UEFI*. Nei sistemi più vecchi si parla spesso di *BIOS*.

  Il firmware prepara l’hardware e avvia la ricerca del sistema operativo. Un programma di avvio può poi trasferire il controllo al sistema operativo.

  #esempio[
    Si può vedere una schermata del firmware anche quando il computer non trova un sistema operativo da avviare.
  ]
]

#slide("Il caricamento del sistema operativo", "SSD, RAM e CPU")[
  - Nell’*SSD* o in un altro dispositivo di archiviazione è conservato il sistema operativo.
  - Durante l’avvio si caricano in *RAM* le parti necessarie al lavoro. La copia nell’SSD rimane disponibile.
  - La *CPU* esegue le istruzioni. Il sistema operativo inizia a gestire memoria, periferiche, file, utenti e applicazioni.

  Al termine compare la schermata di accesso oppure il *desktop*. L’interfaccia permette di aprire programmi e usare i file.
]

#slide("Che cosa succede quando apri una foto?", "Dal doppio clic all’immagine sullo schermo")[
  #table(
    columns: (1fr, 2.5fr),
    table.header([*Elemento*], [*Ruolo nell’apertura del file*]),
    [Mouse], [Invia il doppio clic come comando di input.],
    [Sistema operativo e app], [Il sistema operativo avvia o richiama l’app adatta, che apre il file.],
    [SSD e RAM], [I dati della foto vengono letti dall’SSD e usati in RAM.],
    [CPU e GPU], [La CPU esegue le istruzioni. La GPU può contribuire alla visualizzazione.],
    [Monitor], [Mostra l’immagine come risultato di output.],
  )
]

#slide("Il percorso di un comando", "Componenti che si scambiano richieste e dati")[
  #tavola("/assets/svg/hardware-software/viaggio-comando.svg", altezza: 210pt)

  Lo schema riassume i ruoli. Nella pratica molti scambi si ripetono e più operazioni possono avvenire nello stesso momento.
]

#slide("Aprire, salvare e riprodurre in streaming", "Tre modi di usare i dati")[
  - *Aprire una foto* richiede di leggere i dati. La foto può comparire sullo schermo senza essere riscritta nell’SSD.
  - *Salvare una modifica* registra la versione aggiornata su un dispositivo di archiviazione.
  - *Ascoltare in streaming* richiede dati dalla rete mentre il brano viene riprodotto. Il brano completo può restare sul server.
]

#slide("Prova a ricostruire", "Avvio e uso di un programma")[
  + Metti in ordine le quattro fasi: caricamento del sistema operativo, alimentazione, schermata di accesso, esecuzione del firmware.
  + Apri una foto. Che cosa fanno il mouse, la RAM e il monitor?
  + Ruoti la foto e vuoi ritrovarla così domani. Quale operazione devi fare? Perché?
]
