---
title: "Eigene Modelle (Whisper)"
description: "Eigene Whisper-Modelle in noScribe verwenden (Kurzzusammenfassung)."
weight: 25
---

# Eigene Modelle (Whisper)

Diese Seite fasst die Anleitung zum Hinzufügen eigener Whisper-Modelle zusammen. Details und die jeweils neuesten Hinweise finden Sie in der Quelle (Link unten).

## Kurzüberblick

1. Öffnen Sie in noScribe **Model > Add AI model...**. Dadurch wird der Model-Ordner im Benutzerprofil geöffnet.
2. Legen Sie pro Modell einen **eigenen Unterordner** an. Der Ordnername wird im UI als Modellname angezeigt.
3. **Nur Faster-Whisper/CTranslate2-Modelle** funktionieren. Modelle im Original-OpenAI-Format müssen vorher konvertiert werden.
4. Legen Sie die Modelldateien in den Unterordner (typisch: `config.json`, `model.bin`, `preprocessor_config.json`, `tokenizer.json`, `vocabulary.json`). Danach sollte das Modell in noScribe erscheinen.

## Pfade

- **Windows:** `C:\Users\<username>\AppData\Local\noScribe\noScribe\whisper_models\`
- **macOS:** `~/Library/Application Support/noscribe/whisper_models/`
- **Linux:** TODO: Linux-Pfad ergänzen.

## Beispielquellen für Modelle

- Faster-Whisper Modelle (Systran) – enthält u. a. Whisper v2
- Sprachspezifische Modelle (z. B. Französisch oder Deutsch)
- Hinweis: Manche Downloads enthalten Dateinamen mit `ctranslate2_`-Prefix – diese müssen entfernt werden (z. B. `ctranslate2_vocabulary.json` → `vocabulary.json`).
- Für das deutschsprachige Modell wird zusätzlich `tokenizer.json` aus dem originalen Whisper-v3-Repository benötigt.

## Quelle

https://github.com/kaixxx/noScribe/wiki/Add-custom-Whisper-models-for-transcription
