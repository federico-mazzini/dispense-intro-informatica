#import "/styles/slides.typ": *

#show: presentazione.with("Bit, byte e dimensioni dei file")
#apertura("Bit, byte e dimensioni dei file", "Dati, unità di misura e conversioni")

#slide("Dati e informazioni", "Il contesto dà significato ai dati")[
  Un *dato* è un valore, un simbolo o un fatto registrato. Otteniamo un’*informazione* quando interpretiamo un dato e capiamo che cosa ci dice.

  #tavola("/assets/svg/dato_informazione.svg", altezza: 233pt)
]

#slide("Il file", "Dati conservati in forma digitale")[
  Un file raccoglie dati. Un testo, una foto e un brano musicale contengono dati di tipo diverso.

  Il computer rappresenta tutti questi contenuti con *sequenze di bit*. Il formato indica come interpretare i dati del file.

  #tavola("/assets/svg/tipi_file.svg", altezza: 154pt)
]

#slide("Il bit", "Due valori possibili")[
  Il *bit* (_binary digit_) è una cifra del *sistema binario*. Può valere *0* oppure *1*.

  I circuiti rappresentano questi valori attraverso due stati fisici distinguibili, per esempio due livelli di tensione.

  #tavola("/assets/svg/bit.svg", altezza: 160pt)
]

#slide("Il byte", "Un gruppo di 8 bit")[
  *1 byte (B) = 8 bit.* Ogni bit può assumere due valori. Con otto bit si ottengono *256 combinazioni* diverse.

  #tavola("/assets/svg/byte.svg", altezza: 185pt)

  La *b* minuscola indica i bit, la *B* maiuscola i byte. Per esempio, *8 Mb = 1 MB* se si usa la stessa convenzione per entrambi.
]

#slide("La dimensione di un file", "Quanti byte occupa?")[
  La *dimensione*, chiamata anche _peso_, indica la quantità di dati contenuta in un file. La misuriamo in *byte* o nei suoi multipli.

  #table(
    columns: (1fr, 1fr),
    table.header([*Tipo di file*], [*Dimensione di esempio*]),
    [Breve testo], [500 B],
    [Documento], [85.000 B],
    [Fotografia], [3.000.000 B],
    [Video breve], [45.000.000 B],
  )

  Il valore effettivo dipende dal contenuto e da come viene salvato.
]

#slide("I multipli del byte", "Le equivalenze della dispensa")[
  #table(
    columns: (1fr, 1fr),
    table.header([*Unità*], [*Corrispondenza*]),
    [KB (kilobyte)], [1 KB = 1024 B],
    [MB (megabyte)], [1 MB = 1024 KB],
    [GB (gigabyte)], [1 GB = 1024 MB],
    [TB (terabyte)], [1 TB = 1024 GB],
  )

  Negli esercizi seguiamo la *convenzione scolastica in base 1024*. In altri contesti si usa la base 1000. La dispensa riporta anche i multipli oltre il TB.
]

#slide("Le conversioni", "Moltiplicare o dividere per 1024")[
  #tavola("/assets/svg/equivalenze.svg", altezza: 188pt)

  Per passare a un’unità *più grande* si divide per 1024. Per passare a un’unità *più piccola* si moltiplica per 1024. Si ripete l’operazione a ogni passaggio.
]

#slide("Esempi di conversione", "Uno o più passaggi")[
  - *Da GB a MB.* 2 GB = 2 × 1024 MB = *2048 MB*.
  - *Da KB a MB.* 3072 KB = (3072 ÷ 1024) MB = *3 MB*.
  - *Da GB a KB.* 1 GB = 1024 MB. Servono due passaggi: 1024 MB = (1024 × 1024) KB = *1.048.576 KB*.

  #esempio[
    Quanti KB occupa un file da 5 MB? Quale operazione usi?
  ]
]

#slide("Lo spazio di archiviazione", "Capacità, spazio occupato e spazio libero")[
  La *capacità* indica quanti dati il dispositivo può conservare. File, applicazioni e sistema operativo occupano una parte di quello spazio.

  #tavola("/assets/svg/archiviazione.svg", altezza: 166pt)

  *512 GB − 320 GB = 192 GB disponibili.*
]

#slide("Prova a ragionare", "Lo spazio basta?")[
  + Un computer ha una capacità di 256 GB. Se 180 GB sono occupati, quanto spazio rimane?
  + Una chiavetta USB ha 8 GB disponibili. Puoi salvarci tre video da 3 GB ciascuno? Motiva la risposta.
  + Un file occupa 5120 KB. Quanti MB occupa usando la convenzione della dispensa?
]
