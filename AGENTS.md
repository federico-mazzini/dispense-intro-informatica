# Istruzioni per il repository

## Struttura e documentazione

- Mantieni `README.md` con i soli link ai PDF: una riga per argomento, con dispensa e slide. Le note operative vanno in questo file.
- Ogni cartella numerata di `src/` contiene due sorgenti: `NN - Titolo.typ` per la dispensa completa di teoria ed esercizi e `Slide - NN - Titolo.typ` per la presentazione. Non separare nuovamente teoria, esercizi e main.
- Conserva le eventuali traduzioni nelle sottocartelle dedicate, come `src/3-bit-byte-dimensioni/ar/`.
- Gli stili condivisi sono in `styles/`, i diagrammi in `assets/svg/`, le fotografie in `assets/immagini/`. I due gruppi di 30 domande, con opzioni e soluzioni, sono in `qst/`.
- Non versionare `dist/`, `tmp/` o `backup/`. Mantieni stabili i nomi dei PDF e i link pubblici.

## Compilazione e verifica

- Usa Typst 0.15.1. Compila dalla radice con `--root .`: le risorse usano percorsi dalla radice Typst.
- `bash scripts/build-all.sh`: genera le sette dispense in `dist/dispense/`.
- `bash scripts/build-slides.sh`: genera le sette presentazioni in `dist/slide/`.
- `python3 scripts/build-index.py`: genera l’indice HTML di download in `dist/index.html`.
- `bash scripts/build-one.sh 1-file-cartelle`: compila una sola dispensa; sostituisci l’argomento secondo necessità.
- `python3 scripts/package-sources.py 1-file-cartelle`: crea uno ZIP autonomo in `tmp/sorgenti/`, con entrambi i sorgenti, stili, risorse e script.
- Libertinus Serif è incluso in Typst. Gli SVG usano Arial su macOS e Liberation Sans su Linux; su Ubuntu installa `fonts-liberation`.
- Dopo modifiche al contenuto o all’impaginazione, compila e controlla visivamente le pagine interessate, soprattutto tabelle, diagrammi e spazi delle risposte. Per riorganizzazioni dei sorgenti che devono preservare i PDF, confronta il numero di pagine e il rendering prima e dopo.

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
- `bash scripts/setup-vscode.sh` registra le sette dispense in `tinymist.lock`. Usalo dopo rinomine dei documenti o se l’associazione si perde; poi esegui **Developer: Reload Window**.
- Per la compilazione continua puoi usare `typst watch --root . "src/1-file-cartelle/01 - File e cartelle.typ" "dist/dispense/01 - File e cartelle.pdf"`.

## Contenuti e riferimenti

- Le dispense hanno formato A4 e colori distinti, con font e componenti grafici condivisi. Le presentazioni sono in formato 16:9 e riprendono la grafica del repository `federico-mazzini/icdl`; il modello comune è `styles/slides.typ`.
- Le presentazioni 04, 05 e 06 includono 22 pagine di ICDL – Computer e dispositivi con testi, grafica e numeri originali. Riferimento: https://github.com/federico-mazzini/icdl/blob/2415280d86bff968343166670cba272a323717c0/src/1_computer_dispositivi.typ.
- La dispensa su bit e byte deriva dall’archivio `dispensa_bit_byte_libro_classico_revisionata_sorgenti.zip`; quelle su file e cartelle e su invio e condivisione riprendono pagine didattiche Notion.
- Mantieni la convenzione scolastica delle conversioni basate su 1024 nella dispensa su bit e byte e gli elenchi di parole degli esercizi mescolati.
