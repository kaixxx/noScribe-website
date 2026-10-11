---
title: "Download und Installation"
description: "Downloadlinks und Installationsanleitungen für Windows, macOS und Linux."
translationKey: "download-installation"
weight: 10
---

# Download und Installation

**Aktuelle Version:** 0.8

Alle Installationsdateien liegen auf SWITCHdrive.ch, einer sicheren Datasharing-Plattform für Schweizer Hochschulen. 
Der Quellcode ist auf [GitHub](https://github.com/kaixxx/noScribe) verfügbar, auch für den [noScribe Editor](https://github.com/kaixxx/noScribeEditor).

{{< button href="#windows" >}}Installation Windows{{< /button >}}
{{< button href="#macos" >}}Installation macOS{{< /button >}}
{{< button href="#linux" >}}Installation Linux{{< /button >}}

## Windows

### Download

Es stehen zwei Versionen zur Auswahl: Meist ist die Standardversion die richtige Wahl. Wer jedoch eine NVIDIA-Grafikkarte (ab RTX 20XX) mit mindestens 6 GB VRAM besitzt, kann von der CUDA-Beschleunigung profitieren, die die Transkriptionszeit drastisch reduzieren kann.  

- **Standardversion (ohne NVIDIA‑GPU):**
  https://drive.switch.ch/index.php/s/KLcsdKDygXaQdXp
- **CUDA‑Version (NVIDIA‑GPU, mind. 6 GB VRAM):**
  https://drive.switch.ch/index.php/s/sEd9ks6yCqQ3xEr

  **Voraussetzungen für CUDA:** NVIDIA‑Treiber ab Version 570.65 sowie das CUDA‑Toolkit:
  https://developer.nvidia.com/cuda-downloads?target_os=Windows

### Installation

1. Installationsdatei starten (kann einige Minuten dauern).
2. Wenn Windows vor einem "unbekannten Herausgeber" warnt, „Mehr Informationen > Trotzdem ausführen“ wählen. Diese Warnung lässt sich für freie Software leider nicht so einfach umgehen. 
3. Wer noScribe auf mehreren Rechnern automatisch und still installieren möchte: Setup mit `/S` starten.

### Bekannte Probleme (Windows)

- RTX/GTX‑1xxx‑Karten werden von CUDA oft nicht mehr unterstützt – nutzen Sie in diesem Fall die Standardversion.
- Bei der Fehlermeldung „Transcription worker exited unexpectedly (code 3221226505)“ kann es helfen, eine CPU‑Nutzung zu erzwingen:
  1. noScribe beenden.
  2. Datei `C:\Users\<USERNAME>\AppData\Local\noScribe\noScribe\config.yml` öffnen.
  3. `force_whisper_cpu` auf `'True'` setzen (Anführungsstriche nicht vergessen).
  4. noScribe neu starten.

## macOS

### Apple Silicon (M-Serie)

- noScribe benötigt mindestens macOS 14 (Sonoma).
- Download:
  https://drive.switch.ch/index.php/s/otF4MedAW6ymY4R
- DMG öffnen und **noScribe** sowie **noScribeEdit** in den Programme‑Ordner ziehen.
- Apps im Programme‑Ordner starten.

### Intel Macs

- Aufgrund von Inkompatibilitäten in den Paketen, von denen noScribe abhängt, sind die neuesten Versionen nicht mehr für Intel-Macs verfügbar.
- Die letzte Version mit einem offiziellen Intel-Build ist 0.6: https://drive.switch.ch/index.php/s/YWE6RQJPbJ9QNHF
- Ältere Versionen:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j

Da wir die Pakete für Intel-Macs nicht signieren können, erhalten Sie eine Warnung, dass noScribe und noScribeEdit von nicht registrierten Entwicklern stammen. Sie müssen die Ausführung beider Programme manuell zulassen, wenn Gatekeeper aktiv ist. Befolgen Sie dazu diese Schritte:

- Doppelklicken Sie auf die heruntergeladene DMG-Datei.
- Ziehen Sie noScribe und noScribeEdit in den Link Ihres Anwendungsordners (mit der Bezeichnung „drag both here to install“).
- Starten Sie noScribe, indem Sie auf die App in Ihrem Anwendungsordner doppelklicken. Sie erhalten eine Fehlermeldung, dass noScribe von einem nicht registrierten Entwickler stammt. Verfahren Sie ebenso mit dem noScribe Editor.
- Gehen Sie zu Einstellungen -> Datenschutz und Sicherheit -> Scrollen Sie nach unten, bis Sie eine Meldung sehen, dass noScribe am Starten gehindert wurde, und klicken Sie auf „Trotzdem öffnen“. Verfahren Sie erneut ebenso mit dem noScribe Editor.
- Von nun an sollten beide Programme ohne Probleme starten.

## Linux

### Ausführbare Version

- Für Version 0.8 sind noch keine Linux-Binärdateien verfügbar. Verwenden Sie Version 0.7 oder folgen Sie der Anleitung zur manuellen Installation weiter unten.
- Download 0.7 (CUDA oder CPU):
  https://drive.switch.ch/index.php/s/GCmryRkjpeX8Yxp
- Falls 0.7 nicht läuft, Version 0.6.2:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j

Installation:

1. Archiv entpacken:
   `tar -xzvf noScribe_0.7.0_cpu_linux_amd64.tar.gz`
   oder
   `tar -xzvf noScribe_0.7.0_cuda_linux_amd64.tar.gz`
2. In den Ordner wechseln und starten:
   `./noScribe`
3. Optional: `noScribe.desktop` und `noScribeEdit.desktop` anpassen (Pfad in `Exec=`/`Icon=`).

### Manuelle Installation aus dem Quellcode

Diskussion und Details:
https://github.com/kaixxx/noScribe/discussions/83

Kurzüberblick:

Die folgenden Befehle sind für Debian/Ubuntu gedacht und setzen Python 3.11 oder 3.12 voraus.

```bash
# Bei jedem Fehler abbrechen
set -e

# Systemabhängigkeiten
sudo apt update
sudo apt install git python3 python3-venv python3-pip python3-tk

# Prüfen, dass Python 3.11 oder 3.12 verwendet wird
python3 --version

# Quellcode
git clone https://github.com/kaixxx/noScribe.git
cd noScribe

# Den Editor-Platzhalter im frisch geklonten Repository ersetzen
rm -rf noScribeEdit/
git clone https://github.com/kaixxx/noScribeEditor.git noScribeEdit

# Python-Umgebung
python3 -m venv noscribe
source noscribe/bin/activate
python -m pip install --upgrade pip

# Die Abhängigkeiten beider Anwendungen gemeinsam auflösen
python -m pip install \
    -r environments/requirements_linux.txt \
    -r noScribeEdit/environments/requirements.txt \
    huggingface_hub
python -m pip check

# Das schnelle Modell herunterladen
hf download mukowaty/faster-whisper-int8 \
    --include "faster-whisper-large-v3-turbo-int8/*" \
    --local-dir model-downloads

mkdir -p models/fast
cp -a model-downloads/faster-whisper-large-v3-turbo-int8/. models/fast/

# Präzises Modell
hf download dropbox-dash/faster-whisper-large-v3-turbo \
    --local-dir models/precise

# Prüfen, dass die Gewichte beider Modelle vorhanden sind
test -s models/fast/model.bin
test -s models/precise/model.bin

# Aus dem Stammverzeichnis des Repositorys starten
python -m noScribe
```

## Alte Versionen

https://drive.switch.ch/index.php/s/EIVup04qkSHb54j
