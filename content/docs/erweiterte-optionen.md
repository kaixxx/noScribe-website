---
title: "Erweiterte Optionen"
description: "CLI, Konfiguration, eigene Modelle sowie Entwicklung und Beiträge."
weight: 30
---

# Erweiterte Optionen

## Advanced Options

- **CLI‑Modus:** `noScribe.exe --help` zeigt Optionen; `--no-gui` ist für Skripting geeignet.
- **Konfiguration:** Nach dem ersten Start liegt `config.yml` im Benutzerprofil:
  - Windows: `C:\Users\<username>\AppData\Local\noScribe\noScribe\config.yml`
  - macOS: `~/Library/Application Support/noscribe/config.yml`
  - Linux: `~/.config/noScribe/config.yml`
  Dort lassen sich u. a. UI‑Sprache und Modellparameter anpassen.
- **Logs:** Im gleichen Profilverzeichnis existiert ein Ordner `log` mit detaillierten Transkript‑Logs.

## Eigene Modelle (Whisper)

Kurzfassung der Schritte:

1. In noScribe **Model > Add AI model...** öffnen.
2. Pro Modell einen **eigenen Unterordner** anlegen (Ordnername = Modellname im UI).
3. **Nur Faster‑Whisper/CTranslate2‑Modelle** werden unterstützt.
4. Dateien in den Ordner legen (typisch: `config.json`, `model.bin`, `preprocessor_config.json`, `tokenizer.json`, `vocabulary.json`).

Pfade:

- **Windows:** `C:\Users\<username>\AppData\Local\noScribe\noScribe\whisper_models\`
- **macOS:** `~/Library/Application Support/noscribe/whisper_models/`
- **Linux:** TODO: Pfad ergänzen.

Hinweise:

- Manche Downloads enthalten `ctranslate2_`‑Präfixe – diese entfernen (z. B. `ctranslate2_vocabulary.json` → `vocabulary.json`).
- Für das deutsche Modell wird zusätzlich `tokenizer.json` aus dem Whisper‑v3‑Repository benötigt.

Quelle:
https://github.com/kaixxx/noScribe/wiki/Add-custom-Whisper-models-for-transcription

## Development and Contribution

- noScribe basiert auf Python 3.12.
- Modell‑Dateien sind zu groß für GitHub; Hinweise liegen im `models`‑Ordner.
- Tests, Bugreports und Pull Requests sind willkommen (sofern zeitlich möglich).

### Übersetzungen

- Die UI ist in viele Sprachen übersetzt.
- Einige Übersetzungen sind maschinell erstellt und können Fehler enthalten.
- Sprachdateien befinden sich im Ordner `trans`.
- Änderungen sollten die YAML‑Konventionen beachten.
- UI‑Sprache über die Einstellung `locale` in `config.yml`.
