# Informatica: dispense per la classe prima

Dispense didattiche in Typst, con teoria, schemi ed esercizi. Ogni documento ha un colore distinto; font, impaginazione A4 e componenti grafici sono condivisi.

## PDF aggiornati

I link mostrano l’ultima versione pubblicata con successo da un commit `[pdf]` su `main`.

| Argomento | Dispensa | Slide |
| --- | --- | --- |
| 01 - File e cartelle | [PDF](https://federico-mazzini.github.io/dispense-intro-informatica/01%20-%20File%20e%20cartelle.pdf) | [PDF](https://federico-mazzini.github.io/dispense-intro-informatica/slides/01%20-%20File%20e%20cartelle.pdf) |
| 02 - Inviare e condividere file | [PDF](https://federico-mazzini.github.io/dispense-intro-informatica/02%20-%20Inviare%20e%20condividere%20file.pdf) | [PDF](https://federico-mazzini.github.io/dispense-intro-informatica/slides/02%20-%20Inviare%20e%20condividere%20file.pdf) |
| 03 - Bit, byte e dimensioni dei file | [PDF](https://federico-mazzini.github.io/dispense-intro-informatica/03%20-%20Bit%2C%20byte%20e%20dimensioni%20dei%20file.pdf) | [PDF](https://federico-mazzini.github.io/dispense-intro-informatica/slides/03%20-%20Bit%2C%20byte%20e%20dimensioni%20dei%20file.pdf) |
| 04 - Introduzione ai computer | [PDF](https://federico-mazzini.github.io/dispense-intro-informatica/04%20-%20Introduzione%20ai%20computer.pdf) | [PDF](https://federico-mazzini.github.io/dispense-intro-informatica/slides/04%20-%20Introduzione%20ai%20computer.pdf) |
| 05 - Hardware | [PDF](https://federico-mazzini.github.io/dispense-intro-informatica/05%20-%20Hardware.pdf) | [PDF](https://federico-mazzini.github.io/dispense-intro-informatica/slides/05%20-%20Hardware.pdf) |
| 06 - Il software | [PDF](https://federico-mazzini.github.io/dispense-intro-informatica/06%20-%20Il%20software.pdf) | [PDF](https://federico-mazzini.github.io/dispense-intro-informatica/slides/06%20-%20Il%20software.pdf) |
| 07 - Come funziona un computer | [PDF](https://federico-mazzini.github.io/dispense-intro-informatica/07%20-%20Come%20funziona%20un%20computer.pdf) | [PDF](https://federico-mazzini.github.io/dispense-intro-informatica/slides/07%20-%20Come%20funziona%20un%20computer.pdf) |

[Indice di tutti i PDF](https://federico-mazzini.github.io/dispense-intro-informatica/)

`dist/` è esclusa da Git. I PDF sono disponibili anche nell’artifact **dispense-informatica-pdf** di GitHub Actions.

## Slide per la classe

In ogni cartella numerata di `src/` c’è una presentazione Typst `Slide - NN - Titolo.typ`, con esempi, schemi e attività brevi. Le slide usano il formato 16:9 e riprendono la grafica delle [presentazioni ICDL](https://github.com/federico-mazzini/icdl). Il modello comune è in [`styles/slides.typ`](styles/slides.typ).

I capitoli 04, 05 e 06 includono 22 pagine di [ICDL – Computer e dispositivi](https://github.com/federico-mazzini/icdl/blob/2415280d86bff968343166670cba272a323717c0/src/1_computer_dispositivi.typ), con testi, grafica e numeri di pagina originali. Le altre slide sviluppano esempi, approfondimenti ed esercizi delle dispense. Ogni file Typst contiene tutte le pagine del proprio capitolo.

Per generare i sette PDF in `dist/slides/`, dalla radice del progetto:

```bash
bash scripts/build-slides.sh
```

## Sorgenti

Ogni cartella numerata di `src/` contiene due file Typst:

- `NN - Titolo.typ`: dispensa completa con teoria ed esercizi.
- `Slide - NN - Titolo.typ`: presentazione del medesimo argomento.

I file principali sono:

- `src/1-file-cartelle/01 - File e cartelle.typ`
- `src/2-inviare-condividere-file/02 - Inviare e condividere file.typ`
- `src/3-bit-byte-dimensioni/03 - Bit, byte e dimensioni dei file.typ`
- `src/4-introduzione-computer/04 - Introduzione ai computer.typ`
- `src/5-hardware/05 - Hardware.typ`
- `src/6-software/06 - Il software.typ`
- `src/7-funzionamento-computer/07 - Come funziona un computer.typ`

Gli stili sono in `styles/`, i diagrammi in `assets/svg/` e le fotografie in `assets/immagini/`.

## Compilazione locale

Serve **Typst 0.15.1**. Dalla radice del progetto:

```bash
bash scripts/build-all.sh
```

Per compilare una sola dispensa completa:

```bash
bash scripts/build-one.sh 1-file-cartelle
```

Sono disponibili anche i comandi brevi `build.sh`, `build-file-cartelle.sh`, `build-inviare-condividere.sh` e `build-hardware-software.sh` in `scripts/`. Tutti scrivono solo i PDF completi in `dist/`.

Per creare separatamente uno ZIP dei sorgenti:

```bash
python3 scripts/package-sources.py 1-file-cartelle
```

Gli ZIP sono salvati in `tmp/sorgenti/`, esclusa da Git. Il pacchetto conserva i sorgenti e le risorse necessarie; dalla cartella estratta si può usare `bash scripts/build-one.sh 1-file-cartelle`.

Libertinus Serif è incluso in Typst. Gli SVG usano Arial su macOS e Liberation Sans su Linux; su Ubuntu installare `fonts-liberation`. Le immagini usano percorsi dalla radice Typst: compilare sempre con `--root .`.

## Salvataggio automatico in VS Code

Aprire la cartella radice del progetto e installare **Tinymist Typst**. La configurazione `.vscode/settings.json` esporta il PDF a ogni salvataggio con **Command+S**.

Su un nuovo computer, dopo aver rinominato un file principale o se Tinymist perde l’associazione tra le parti, eseguire:

```bash
bash scripts/setup-vscode.sh
```

Lo script registra in `tinymist.lock` i sette documenti completi e aggiorna la cache delle dipendenze. Poi eseguire **Developer: Reload Window** dalla palette comandi di VS Code.

Si lavora direttamente sul file unico della dispensa: Tinymist lo compila al salvataggio. Il nome del PDF coincide con quello del file principale, per esempio `dist/01 - File e cartelle.pdf`. Se ci sono errori nel sorgente, il PDF si aggiorna dopo averli corretti.

Per seguire le modifiche anche dal terminale:

```bash
typst watch --root . "src/1-file-cartelle/01 - File e cartelle.typ" "dist/01 - File e cartelle.pdf"
```

## Compilazione su GitHub

Il workflow **Compila e pubblica PDF** compila dispense e slide sui push a `main` quando il messaggio dell’ultimo commit contiene `[pdf]`, oppure manualmente da **Actions → Compila e pubblica PDF → Run workflow**.

Pubblica i PDF su GitHub Pages con nomi stabili: le dispense nella radice e le slide in `slides/`. I link sopra vengono aggiornati a ogni pubblicazione riuscita. L’artifact **dispense-informatica-pdf** contiene entrambi i gruppi di PDF ed è conservato per 90 giorni. Il workflow non crea commit automatici.

In **Settings → Pages → Build and deployment**, la sorgente deve essere **GitHub Actions**.

## Contenuti e provenienza

La prima dispensa deriva dai sorgenti forniti nell’archivio `dispensa_bit_byte_libro_classico_revisionata_sorgenti.zip`. Le altre due riprendono le pagine didattiche Notion indicate nei rispettivi documenti di progetto:

- [File e cartelle: contenuti e fonti](README-file-cartelle.md).
- [Inviare e condividere file: contenuti e fonte](README-inviare-condividere.md).

La convenzione scolastica delle equivalenze basate su 1024 è mantenuta nella prima dispensa. Gli elenchi di parole negli esercizi da completare sono mescolati. Prima di consegnare nuove versioni, controllare visivamente i PDF, soprattutto tabelle, diagrammi e spazi delle risposte.
