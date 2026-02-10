---
title: "Geavanceerde opties"
description: "CLI, configuratie, aangepaste modellen en bijdragen aan de ontwikkeling."
translationKey: "advanced-options"
weight: 30
---

# Geavanceerde opties

### Scripting

Sinds versie 0.7 heeft noScribe een command-line interface en kan het in je eigen scripts worden geïntegreerd. `noScribe.exe --help` toont de beschikbare opties. Met `--no-gui` wordt het hoofdvenster verborgen en draait noScribe volledig in command-line modus.

### Configuratie

Na de eerste start staat het bestand `config.yml` in het gebruikersprofiel:
  - Windows: `C:\Users\<username>\AppData\Local\noScribe\noScribe\config.yml`
  - macOS: `~/Library/Application Support/noscribe/config.yml`
  - Linux: `~/.config/noScribe/config.yml`

Daar kun je de UI-taal en andere opties aanpassen. Let op: bewerk dit bestand alleen wanneer noScribe niet draait, anders worden je wijzigingen overschreven.

### Logs

In dezelfde profielmap staat een map `log` met gedetailleerde informatie over elke transcriptie - handig voor troubleshooting.

## Speciale transcriptiemodellen gebruiken {#use-special-transcription-models}

noScribe wordt geleverd met twee transcriptiemodellen (precise/fast), beide gebaseerd op *Whisper V3 Turbo*. Je kunt ook andere Whisper-modellen gebruiken die beter zijn afgestemd op specifieke talen.

**Installatie:**

1. Open in noScribe onder *Model* de lijst en kies *Add AI models*. Dit opent de map `whisper_models` in de noScribe-configuratiemap (paden hierboven).
2. Maak een *aparte submap* voor elk model. De naam van deze map wordt de modelnaam die in noScribe wordt weergegeven.
3. Plaats alle bestanden van het model in die map (meestal: `config.json`, `model.bin`, `preprocessor_config.json`, `tokenizer.json`, `vocabulary.json`).
4. Het nieuwe model zou nu als extra keuze moeten verschijnen onder *Models* in noScribe.

**Opmerkingen:**

- Alleen modellen in *Faster-Whisper* of *CTranslate2* formaat worden ondersteund. Modellen in het originele OpenAI Whisper-formaat kunnen worden [geconverteerd.](https://github.com/SYSTRAN/faster-whisper?tab=readme-ov-file#model-conversion)
- Sommige downloads bevatten `ctranslate2_`-prefixen - verwijder die (bijv. `ctranslate2_vocabulary.json` -> `vocabulary.json`).

**Modellen:**

- De **officiele Faster-Whisper repository** (15 modellen): https://huggingface.co/Systran Dit bevat ook het Whisper-v2 model, dat tot versie 0.5 van noScribe standaard was en door sommigen nog steeds wordt geprefereerd, hoewel het aanzienlijk langzamer is. De Engelstalige modellen (eindigend op ".en") zijn ook interessant omdat ze merkbaar sneller draaien.
- **Een Frans-getunede versie van Whisper V3**: https://huggingface.co/bofenghuang/whisper-large-v3-french/tree/main/ctranslate2 (Als de gedownloade bestanden de prefix "ctranslate2_" hebben, verwijder die dan.)
- **Een Duits geoptimaliseerde versie van Whisper V3** (mijn ervaring: slechts kleine verbeteringen in transcriptiekwaliteit, maar minder precisie in pauzedetectie en in het herkennen van overlappende spraak): https://huggingface.co/aseifert/faster-whisper-large-v3-turbo-german/tree/main Je hebt ook het bestand `tokenizer.json` uit de originele Whisper V3 repository nodig: https://huggingface.co/Systran/faster-whisper-large-v3/tree/main

Je kunt meer modellen vinden op [huggingface](https://huggingface.co/). Zoek op "faster-whisper" en de gewenste taal (of gewoon "whisper" om modellen te vinden die geconverteerd kunnen worden).

Ik gebruik deze versie van Whisper V3 Turbo als het "precise" model: https://huggingface.co/mobiuslabsgmbh/faster-whisper-large-v3-turbo

**Als je een goed nieuw model vindt, deel het dan in deze discussie: https://github.com/kaixxx/noScribe/discussions/132**.

## Bijdragen aan de ontwikkeling

- noScribe is gebaseerd op Python 3.13.
- De AI-modellen (Whisper) zijn te groot voor GitHub. Ze moeten apart worden gedownload als je noScribe vanuit de broncode wilt draaien. Zie de opmerkingen in de map `models`.
- Tests, bugrapporten en pull requests zijn welkom. Ik probeer snel te reageren. Zo niet, herinner me er gerust vriendelijk aan. Begrijp alsjeblieft dat ik niet elk idee kan accepteren.

### Vertalingen

De UI is vertaald in veel talen. Sommige vertalingen zijn echter automatisch gemaakt en kunnen fouten bevatten. Ik waardeer correcties.

De taalbestanden staan in de map `trans`. Wijzigingen moeten YAML-conventies volgen. Het wisselen van de UI-taal gebeurt via de `locale`-instelling in `config.yml`.
