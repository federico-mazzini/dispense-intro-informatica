# Istruzioni per il repository

## Struttura e documentazione

- Mantieni `README.md` con i soli link ai PDF: una riga per argomento, con dispensa e slide. Le note operative vanno in questo file.
- Ogni cartella numerata di `src/` contiene due sorgenti: `Dispense - Titolo.typ` per la dispensa completa di teoria ed esercizi e `Slide - Titolo.typ` per la presentazione. Non separare nuovamente teoria, esercizi e main.
- L’argomento 01 raccoglie file e cartelle, invio e condivisione, con teoria, esercizi, slide e domande del test. Invio e condivisione non devono essere ricreati come argomento separato. Il materiale «Come funziona un computer» è stato eliminato senza trasferirne i contenuti; non reinserirlo automaticamente. La numerazione corrente è consecutiva: 01 File e cartelle, 02 Bit, byte e dimensioni dei file, 03 Introduzione ai computer, 04 Hardware, 05 Il software.
- Conserva le eventuali traduzioni nelle sottocartelle dedicate, come `src/2-bit-byte-dimensioni/ar/`.
- Gli stili condivisi sono in `styles/`, i diagrammi in `assets/svg/`, le fotografie in `assets/immagini/`. Le domande disponibili sono distribuite per argomento nei file `Test - Titolo.txt` delle cartelle numerate di `src/` (attualmente 1 e 2). Mantieni solo domande e alternative, con numerazione progressiva per argomento, senza gruppi, soluzioni o indicazioni della risposta esatta; non creare un archivio duplicato in `qst/`.
- I nomi dei sorgenti non contengono numeri. I PDF conservano il formato `NN - Titolo.pdf`: il numero si ricava dalla cartella numerata, senza aggiungere i prefissi Dispense o Slide. Mantieni questa corrispondenza anche nella configurazione Tinymist.
- Non versionare `dist/`, `tmp/` o `backup/`. Mantieni stabili i nomi dei PDF e i link pubblici.

## Compilazione e verifica

- Usa Typst 0.15.1. Compila dalla radice con `--root .`: le risorse usano percorsi dalla radice Typst.
- Libertinus Serif è incluso in Typst. Gli SVG usano Arial su macOS e Liberation Sans su Linux; su Ubuntu installa `fonts-liberation`.
- Dopo modifiche al contenuto o all’impaginazione, compila e controlla visivamente le pagine interessate, soprattutto tabelle, diagrammi e spazi delle risposte. Per riorganizzazioni dei sorgenti che devono preservare i PDF, confronta il numero di pagine e il rendering prima e dopo.

## File in scripts

Mantieni solo gli script con una funzione distinta. Non aggiungere scorciatoie per singoli argomenti: usa `build-one.sh` con il nome della cartella.

| File | A cosa serve | Uso |
| --- | --- | --- |
| `scripts/build-all.sh` | Compila tutte le dispense richiamando `build-one.sh`; è usato dalle Actions. Scrive in `dist/dispense/`. | `bash scripts/build-all.sh` |
| `scripts/build-one.sh` | Compila la dispensa di un argomento e ricava dalla cartella il numero del PDF, preservandone il nome pubblico. È usato anche da `build-all.sh`. | `bash scripts/build-one.sh 1-file-cartelle` |
| `scripts/build-slides.sh` | Compila tutte le presentazioni in `dist/slide/`, preservando numeri e nomi dei PDF; è usato dalle Actions. | `bash scripts/build-slides.sh` |
| `scripts/build-index.py` | Genera `dist/index.html` con i link alle dispense e alle slide compilate. È l’indice pubblicato su GitHub Pages. | `python3 scripts/build-index.py` |
| `scripts/package-sources.py` | Crea uno ZIP autonomo per argomento con dispensa, slide, eventuali test, stili, risorse e script necessari. Lo salva in `tmp/sorgenti/`. | `python3 scripts/package-sources.py 1-file-cartelle` |
| `scripts/setup-vscode.sh` | Registra dispense e slide in `tinymist.lock` per l’esportazione al salvataggio, usando gli stessi nomi PDF della compilazione normale. Serve dopo rinomine o su un nuovo ambiente VS Code. | `bash scripts/setup-vscode.sh` |

## Pubblicazione

- Il repository remoto è `federico-mazzini/dispense-intro-informatica`, ramo principale `main`.
- Il workflow `.github/workflows/genera-pdf.yml`, **Compila e pubblica PDF**, compila e pubblica sui push a `main` se il messaggio dell’ultimo commit contiene `[pdf]`. È disponibile anche l’avvio manuale da Actions.
- Per aggiornare i PDF pubblici, inserisci `[pdf]` nel commit del push. Per sole modifiche alla documentazione non serve una nuova compilazione dei PDF.
- GitHub Pages usa **Settings → Pages → Build and deployment → GitHub Actions**.
- Base pubblica: https://federico-mazzini.github.io/dispense-intro-informatica/. Le dispense sono in `dispense/`, le presentazioni in `slide/`, con gli stessi nomi dei PDF locali.
- Il workflow conserva anche l’artifact `dispense-informatica-pdf` per 90 giorni e non crea commit automatici.
- Dopo una pubblicazione verifica l’esito dell’Action e l’accessibilità dei link ai PDF.

## VS Code

- `.vscode/settings.json` abilita l’esportazione PDF al salvataggio con Tinymist.
- `bash scripts/setup-vscode.sh` registra le cinque dispense e le cinque presentazioni in `tinymist.lock`. Usalo dopo rinomine dei documenti o se l’associazione si perde; poi esegui **Developer: Reload Window**.
- Per la compilazione continua puoi usare `typst watch --root . "src/1-file-cartelle/Dispense - File e cartelle.typ" "dist/dispense/01 - File e cartelle.pdf"`.

## Contenuti e riferimenti

- Le dispense hanno formato A4 e colori distinti, con font e componenti grafici condivisi. Le presentazioni sono in formato 16:9 e riprendono la grafica del repository `federico-mazzini/icdl`; il modello comune è `styles/slides.typ`.
- Le presentazioni 03, 04 e 05 includono 22 pagine di ICDL – Computer e dispositivi con testi, grafica e numeri originali. Riferimento: https://github.com/federico-mazzini/icdl/blob/2415280d86bff968343166670cba272a323717c0/src/1_computer_dispositivi.typ.
- La dispensa su bit e byte deriva dall’archivio `dispensa_bit_byte_libro_classico_revisionata_sorgenti.zip`; quella su file e cartelle, invio e condivisione riprende pagine didattiche Notion.
- Mantieni la convenzione scolastica delle conversioni basate su 1024 nella dispensa su bit e byte e gli elenchi di parole degli esercizi mescolati.
