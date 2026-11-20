#import "/styles/slides.typ": *

#show: presentazione.with("Inviare e condividere file")
#apertura("Inviare e condividere file", "Allegati, link e permessi")

#slide("Inviare un file", "Il destinatario riceve una copia")[
  Quando alleghi un file a un’email, il destinatario riceve *una copia* di quella versione. Può scaricarla e conservarla.

  Se modifichi il tuo file dopo l’invio, il destinatario continua ad avere la versione che gli hai spedito.

  #esempio[
    Esporti gli appunti in PDF e li alleghi a un’email. Il docente riceve la versione che hai esportato.
  ]
]

#slide("Condividere un file", "Più persone accedono allo stesso materiale")[
  Con un servizio cloud come *Google Drive* puoi dare accesso a un file o a una cartella. Chi ha accesso può ritrovare la versione aggiornata usando lo stesso *link*.

  #esempio[
    Condividi un documento con il docente. Se correggi un errore, il docente può aprire la versione aggiornata dallo stesso link.
  ]
]

#slide("Link e permessi", "Chi può leggere e chi può modificare")[
  #table(
    columns: (1fr, 2fr),
    table.header([*Permesso*], [*Che cosa permette di fare*]),
    [Visualizzatore], [Aprire e leggere il materiale.],
    [Editor], [Modificare il materiale condiviso, se il tipo di file lo permette.],
  )

  Prima di mandare il *link*, verifica che il destinatario abbia accesso e che il permesso sia adatto al compito. Un link a un file con accesso limitato funziona per le persone autorizzate.
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

#slide("Prova a scegliere", "Allegato, archivio o condivisione?")[
  + Devi consegnare una relazione definitiva in PDF. Come la fai arrivare al docente?
  + Due compagni devono scrivere nello stesso documento. Quale permesso concedi?
  + Devi inviare una copia di una cartella piena di immagini. Come la prepari? Che cosa controlli prima di allegarla?
]
