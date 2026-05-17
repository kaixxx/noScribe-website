---
title: "Download und Installation"
description: "Downloadlinks und Installationsanleitungen für Windows, macOS und Linux."
translationKey: "download-installation"
weight: 10
---

# Download und Installation

**Aktuelle Version:** 0.7

Alle Installationsdateien liegen auf SWITCHdrive.ch, einer sicheren Datasharing-Plattform für Schweizer Hochschulen. 
Der Quellcode ist auf [GitHub](https://github.com/kaixxx/noScribe) verfügbar, auch für den [noScribe Editor](https://github.com/kaixxx/noScribeEditor).

{{< button href="#windows" >}}Installation Windows{{< /button >}}
{{< button href="#macos" >}}Installation macOS{{< /button >}}
{{< button href="#linux" >}}Installation Linux{{< /button >}}

## Windows

### Download

Es stehen zwei Versionen zur Auswahl: Meist ist die Standardversion die richtige Wahl. Wer jedoch eine NVIDIA-Grafikkarte (ab RTX 20XX) mit mindestens 6 GB VRAM besitzt, kann von der CUDA-Beschleunigung profitieren, die die Transkriptionszeit drastisch reduzieren kann.  

- **Standardversion (ohne NVIDIA‑GPU):**
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.7%2FWindows%2Fnormal
- **CUDA‑Version (NVIDIA‑GPU, mind. 6 GB VRAM):**
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.7%2FWindows%2Fcuda

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

### Apple Silicon (M1–M4, macOS 14+)

- Download:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.7%2FmacOS%2FApple%20Silicon
- DMG öffnen und **noScribe** sowie **noScribeEdit** in den Programme‑Ordner ziehen.
- Rosetta 2 wird benötigt (für ffmpeg). Wenn nicht bereits vorhanden:
  - Terminal öffnen (`/Applications/Utilities/Terminal.app`)
  - `softwareupdate --install-rosetta` (oder `--agree-to-license`) ausführen
- Apps im Programme‑Ordner starten.

### Intel Macs

- Version 0.7 ist für Intel‑Macs derzeit nicht verfügbar.
- Version 0.6 (Intel) ist hier verfügbar:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.6%2FmacOS%2Fx86_64%20(Intel)
- Ältere Versionen:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j

Leider können wir die Pakete für Intel-Macs nicht korrekt signieren, sodass Sie eine Warnung erhalten, dass noScribe und noScribeEdit von nicht registrierten Entwicklern stammen. Sie müssen die Ausführung beider Programme manuell zulassen, wenn Ihr Gatekeeper aktiv ist. Befolgen Sie dazu diese Schritte:
- Doppelklicken Sie auf die heruntergeladene DMG-Datei.
- Ziehen Sie noScribe und noScribeEdit in den Link Ihres Anwendungsordners (mit der Bezeichnung „drag both here to install“).
- Starten Sie noScribe, indem Sie auf die App in Ihrem Anwendungsordner doppelklicken. Sie erhalten eine Fehlermeldung, dass noScribe von einem nicht registrierten Entwickler stammt. Verfahren Sie ebenso mit dem noScribe Editor.
- Gehen Sie zu Einstellungen -> Datenschutz und Sicherheit -> Scrollen Sie nach unten, bis Sie eine Meldung sehen, dass noScribe am Starten gehindert wurde, und klicken Sie auf „Trotzdem öffnen“. Verfahren Sie erneut ebenso mit dem noScribe Editor.
- Von nun an sollten beide Programme ohne Probleme starten.

## Linux

### Ausführbare Version

- Download (CUDA oder CPU):
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.7%2FLinux
- Falls 0.7 nicht läuft, Version 0.6.2:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.6%2FLinux

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

```bash
git clone https://github.com/kaixxx/noScribe.git
cd noScribe

# noScribeEdit
rm -rf noScribeEdit/
git clone https://github.com/kaixxx/noScribeEditor.git noScribeEdit

# Python‑Umgebung
python3 -m venv venv
source venv/bin/activate

# Abhängigkeiten
pip install -r environments/requirements_linux.txt
pip install -r noScribeEdit/environments/requirements.txt

# Stelle sicher, dass Git LFS (Large File Support) installiert ist. Es wird benötigt, um die Modelle von Hugging Face herunterzuladen.
# Debian/Ubuntu:
sudo apt install git-lfs
# Fedora:
# sudo dnf install git-lfs
# Arch:
# sudo pacman -S git-lfs
# openSUSE:
# sudo zypper install git-lfs
git lfs install

# Modelle
rm -rf models/fast
rm -rf models/precise
git clone https://huggingface.co/mukowaty/faster-whisper-int8 models/fast
git clone https://huggingface.co/mobiuslabsgmbh/faster-whisper-large-v3-turbo models/precise

# Start
python3 ./noScribe.py
```

## Alte Versionen

https://drive.switch.ch/index.php/s/EIVup04qkSHb54j
