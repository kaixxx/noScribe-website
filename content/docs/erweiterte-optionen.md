---
title: "Erweiterte Optionen"
description: "CLI, Konfiguration, eigene Modelle sowie Entwicklung und Beiträge."
weight: 30
---

# Erweiterte Optionen

### Skripting

Seit Version 0.7 hat noScribe auch ein Kommandozeileninterface und kann so in eigene Skripte eingebunden werden. `noScribe.exe --help` zeigt die verfügbaren Optionen. Mit der Option `--no-gui` wird das Hauptfenster unterdrückt und noScribe läuft vollständig im Kommandozeilenmodus.

### Konfiguration 

Nach dem ersten Start liegt die Datei `config.yml` im Benutzer:innenprofil:
  - Windows: `C:\Users\<username>\AppData\Local\noScribe\noScribe\config.yml`
  - macOS: `~/Library/Application Support/noscribe/config.yml`
  - Linux: `~/.config/noScribe/config.yml`

Dort lassen sich u.a. die Sprache der Oberfläche und weitere Optionen anpassen. Achtung: Diese Datei nur bearbeiten, wenn noScribe nicht geöffnet ist. Sonst werden die Änderungen wieder überschrieben.

### Logs 

Im gleichen Profilverzeichnis existiert ein Ordner `log` mit detaillierten Informationen zu jedem Transkript - gut für die Fehlersuche.

## Spezielle Transkriptionsmodelle nutzen

NoScribe kommt mit zwei Transkriptionsmodellen (precise/fast), die beide auf *Whisper V3 Turbo* basieren. Es können aber auch andere Whisper-Modelle genutzt werden, die bspw. besser auf bestimmte Sprachen abgestimmt sind. 

**Installation:**

1. In noScribe unter *Modell* die Liste aufklappen und *KI-Modelle hinzufügen* auswählen. Es öffnet sich der Ordner `whisper_models` im noScribe Konfigurationsordner (Pfade siehe oben).
2. Pro Modell einen *eigenen Unterordner* anlegen. Der Name dieses Unterordners ist dann später auch der Modellname, der in noScribe angezeigt wird.
3. Alle zu diesem Modell gehörenden Dateien in diesen Ordner legen (typisch: `config.json`, `model.bin`, `preprocessor_config.json`, `tokenizer.json`, `vocabulary.json`).
4. Jetzt sollte das neue Modell als zusätzliche Auswahl in noScribe unter *Modelle* erscheinen. 

**Hinweise:**

- Es werden nur Modelle im *Faster‑Whisper* bzw. *CTranslate2*-Format unterstützt. Modelle im originalen Whisper-Format von OpenAI können [konvertiert werden.](https://github.com/SYSTRAN/faster-whisper?tab=readme-ov-file#model-conversion)
- Manche Downloads enthalten `ctranslate2_`‑Präfixe – diese entfernen (z. B. `ctranslate2_vocabulary.json` → `vocabulary.json`).

**Modelle:** 

- Das **offizielle Faster-Whisper-Repository** (15 Modelle): https://huggingface.co/Systran Hier gibt es auch das Whisper-v2-Modell, das bis zur Version 0.5 von noScribe Standard war und immer noch von einigen bevorzugt wird, auch wenn es deutlich langsamer ist. Die rein englischen Modelle (mit der Endung „.en“) sind ebenfalls interessant, da sie deutlich schneller laufen.
- **Eine für Französisch angepasste Version von Whisper V3**: https://huggingface.co/bofenghuang/whisper-large-v3-french/tree/main/ctranslate2 (Wenn die heruntergeladenen Dateien das Präfix „ctranslate2_“ haben, dieses bitte entfernen.)
- **Eine für Deutsch optimierte Version von Whisper V3** (meine Erfahrung: nur geringfügige Verbesserungen bei der Transkriptionsqualität, aber weniger Präzision bei der Pausenerkennung und der Identifizierung von überlappenden Sprachsequenzen): https://huggingface.co/aseifert/faster-whisper-large-v3-turbo-german/tree/main Sie benötigen außerdem die Datei `tokenizer.json` aus dem ursprünglichen Whisper V3-Repository: https://huggingface.co/Systran/faster-whisper-large-v3/tree/main

Weitere Modelle findet man auf [huggingface](https://huggingface.co/). Suchen Sie nach „faster-whisper“ und der gewünschten Sprache (oder nur nach „whisper“, um Modelle zu finden, die konvertiert werden können). 

Ich verwende diese Version von Whisper V3 Turbo als „präzises“ Modell: https://huggingface.co/mobiuslabsgmbh/faster-whisper-large-v3-turbo

**Wenn Sie ein gutes neues Modell gefunden haben, teilen Sie es bitte in dieser Diskussion: https://github.com/kaixxx/noScribe/discussions/132**.


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
