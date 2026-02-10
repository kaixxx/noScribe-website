---
title: "Opzioni avanzate"
description: "CLI, configurazione, modelli personalizzati e contributi allo sviluppo."
translationKey: "advanced-options"
weight: 30
---

# Opzioni avanzate

### Scripting

Dalla versione 0.7, noScribe ha un'interfaccia a riga di comando e può essere integrato nei tuoi script. `noScribe.exe --help` mostra le opzioni disponibili. Con `--no-gui`, la finestra principale è nascosta e noScribe funziona completamente in modalità riga di comando.

### Configurazione

Dopo il primo avvio, il file `config.yml` si trova nel profilo utente:
  - Windows: `C:\Users\<username>\AppData\Local\noScribe\noScribe\config.yml`
  - macOS: `~/Library/Application Support/noscribe/config.yml`
  - Linux: `~/.config/noScribe/config.yml`

Qui puoi regolare la lingua dell'interfaccia e altre opzioni. Nota: modifica questo file solo quando noScribe non è in esecuzione, altrimenti le modifiche verranno sovrascritte.

### Log

Nella stessa cartella del profilo c'è una cartella `log` con informazioni dettagliate su ogni trascrizione, utile per la risoluzione dei problemi.

## Usare modelli di trascrizione speciali {#use-special-transcription-models}

noScribe include due modelli di trascrizione (precise/fast), entrambi basati su *Whisper V3 Turbo*. Puoi anche usare altri modelli Whisper meglio ottimizzati per lingue specifiche.

**Installazione:**

1. In noScribe, sotto *Model*, apri l'elenco e seleziona *Add AI models*. Questo apre la cartella `whisper_models` nella directory di configurazione di noScribe (percorsi sopra).
2. Crea una *sottocartella separata* per ogni modello. Il nome di questa cartella sarà il nome del modello mostrato in noScribe.
3. Inserisci tutti i file del modello in quella cartella (in genere: `config.json`, `model.bin`, `preprocessor_config.json`, `tokenizer.json`, `vocabulary.json`).
4. Il nuovo modello dovrebbe apparire come opzione aggiuntiva in *Models* in noScribe.

**Note:**

- Sono supportati solo modelli in formato *Faster-Whisper* o *CTranslate2*. I modelli nel formato originale OpenAI Whisper possono essere [convertiti.](https://github.com/SYSTRAN/faster-whisper?tab=readme-ov-file#model-conversion)
- Alcuni download includono prefissi `ctranslate2_` - rimuovili (ad esempio, `ctranslate2_vocabulary.json` -> `vocabulary.json`).

**Modelli:**

- Il **repository ufficiale Faster-Whisper** (15 modelli): https://huggingface.co/Systran Questo include anche il modello Whisper-v2, che era il predefinito fino alla versione 0.5 di noScribe ed è ancora preferito da alcuni, anche se è significativamente più lento. I modelli solo in inglese (terminanti in ".en") sono interessanti perché girano sensibilmente più veloce.
- **Una versione di Whisper V3 ottimizzata per il francese**: https://huggingface.co/bofenghuang/whisper-large-v3-french/tree/main/ctranslate2 (Se i file scaricati hanno il prefisso "ctranslate2_", rimuovilo.)
- **Una versione di Whisper V3 ottimizzata per il tedesco** (la mia esperienza: solo piccoli miglioramenti nella qualità della trascrizione, ma minore precisione nella rilevazione delle pause e nell'identificazione dei discorsi sovrapposti): https://huggingface.co/aseifert/faster-whisper-large-v3-turbo-german/tree/main Serve anche il file `tokenizer.json` dal repository originale Whisper V3: https://huggingface.co/Systran/faster-whisper-large-v3/tree/main

Puoi trovare altri modelli su [huggingface](https://huggingface.co/). Cerca "faster-whisper" e la lingua desiderata (o semplicemente "whisper" per trovare modelli convertibili).

Uso questa versione di Whisper V3 Turbo come modello "precise": https://huggingface.co/mobiuslabsgmbh/faster-whisper-large-v3-turbo

**Se trovi un buon nuovo modello, condividilo in questa discussione: https://github.com/kaixxx/noScribe/discussions/132**.

## Contribuire allo sviluppo

- noScribe è basato su Python 3.13.
- I modelli di IA (Whisper) sono troppo grandi per GitHub. Devono essere scaricati separatamente se vuoi eseguire noScribe dal codice sorgente. Vedi le note nella cartella `models`.
- Test, segnalazioni di bug e pull request sono benvenuti. Cerco di rispondere rapidamente. In caso contrario, sentiti libero di ricordarmelo con gentilezza. Per favore, capisci che non posso accettare tutte le idee.

### Traduzioni

L'interfaccia è tradotta in molte lingue. Tuttavia alcune traduzioni sono state create automaticamente e possono contenere errori. Apprezzo le correzioni.

I file di lingua si trovano nella cartella `trans`. Le modifiche devono seguire le convenzioni YAML. Il cambio lingua dell'interfaccia avviene tramite l'impostazione `locale` in `config.yml`.
