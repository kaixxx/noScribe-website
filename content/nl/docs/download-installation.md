---
title: "Download en installatie"
description: "Downloadlinks en installatie-instructies voor Windows, macOS en Linux."
translationKey: "download-installation"
weight: 10
---

# Download en installatie

**Huidige versie:** 0.7

Alle installatiebestanden worden gehost op SWITCHdrive.ch, een veilig platform voor gegevensdeling van Zwitserse universiteiten.
De broncode is beschikbaar op [GitHub](https://github.com/kaixxx/noScribe), ook voor de [noScribe Editor](https://github.com/kaixxx/noScribeEditor).

{{< button href="#windows" >}}Windows-installatie{{< /button >}}
{{< button href="#macos" >}}macOS-installatie{{< /button >}}
{{< button href="#linux" >}}Linux-installatie{{< /button >}}

## Windows

### Download

Er zijn twee versies beschikbaar. De meeste gebruikers zouden de standaardversie moeten kiezen. Als je een NVIDIA-grafische kaart (RTX 20XX of nieuwer) hebt met minimaal 6 GB VRAM, kun je profiteren van CUDA-versnelling, wat de transcriptietijd sterk kan verkorten.

- **Standaardversie (zonder NVIDIA-GPU):**
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.7%2FWindows%2Fnormal
- **CUDA-versie (NVIDIA-GPU, minimaal 6 GB VRAM):**
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.7%2FWindows%2Fcuda

  **CUDA-vereisten:** NVIDIA-driver versie 570.65 of nieuwer, plus de CUDA toolkit:
  https://developer.nvidia.com/cuda-downloads?target_os=Windows

### Installatie

1. Start de installer (kan enkele minuten duren).
2. Als Windows waarschuwt voor een "onbekende uitgever", kies "Meer informatie > Toch uitvoeren". Deze waarschuwing is helaas moeilijk te vermijden voor gratis software.
3. Als je noScribe stil wilt installeren op meerdere machines: start de setup met `/S`.

### Bekende problemen (Windows)

- RTX/GTX-1xxx kaarten worden vaak niet meer ondersteund door CUDA - gebruik in dat geval de standaardversie.
- Als je de foutmelding "Transcription worker exited unexpectedly (code 3221226505)" ziet, kan het helpen om CPU-gebruik af te dwingen:
  1. Sluit noScribe.
  2. Open het bestand `C:\Users\<USERNAME>\AppData\Local\noScribe\noScribe\config.yml`.
  3. Zet `force_whisper_cpu` op `'True'` (laat de aanhalingstekens staan).
  4. Start noScribe opnieuw.

## macOS

### Apple Silicon (M1-M4, macOS 14+)

- Download:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.7%2FmacOS%2FApple%20Silicon
- Open de DMG en sleep **noScribe** en **noScribeEdit** naar de map Programma's.
- Rosetta 2 is vereist (voor ffmpeg). Als het nog niet is geïnstalleerd:
  - Open Terminal (`/Applications/Utilities/Terminal.app`)
  - Voer `softwareupdate --install-rosetta` uit (of `--agree-to-license`)
- Start de apps vanuit de map Programma's.

### Intel Macs

- Versie 0.7 is momenteel niet beschikbaar voor Intel Macs.
- Versie 0.6 (Intel) is hier beschikbaar:
  https://drive.switch.ch/index.php/apps/files/?dir=/noScribe/noScribe%20releases/noScribe%20vers.%200.6/macOS/x86_64%20(Intel)&fileid=8266174681
- Oudere versies:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j

Helaas kunnen we de pakketten voor Intel Macs niet correct ondertekenen, waardoor je een waarschuwing ziet dat noScribe en noScribeEdit afkomstig zijn van niet-geïdentificeerde ontwikkelaars. Je moet handmatig toestemming geven om beide programma's te starten als Gatekeeper is ingeschakeld. Volg deze stappen:
- Dubbelklik op het gedownloade DMG-bestand.
- Sleep noScribe en noScribeEdit naar de link van je map Programma's (gelabeld "drag both here to install").
- Start noScribe door dubbel te klikken op de app in je map Programma's. Je krijgt een foutmelding dat noScribe afkomstig is van een niet-geïdentificeerde ontwikkelaar. Doe hetzelfde voor de noScribe Editor.
- Ga naar Instellingen -> Privacy en beveiliging -> scroll omlaag tot je een melding ziet dat noScribe is geblokkeerd, en klik op "Toch openen". Doe hetzelfde voor de noScribe Editor.
- Daarna zouden beide programma's zonder problemen moeten starten.

## Linux

### Uitvoerbare versie

- Download (CUDA of CPU):
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.7%2FLinux
- Als 0.7 niet werkt, gebruik versie 0.6.2:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.6%2FLinux

Installatie:

1. Pak het archief uit:
   `tar -xzvf noScribe_0.7.0_cpu_linux_amd64.tar.gz`
   of
   `tar -xzvf noScribe_0.7.0_cuda_linux_amd64.tar.gz`
2. Ga naar de map en start:
   `./noScribe`
3. Optioneel: pas `noScribe.desktop` en `noScribeEdit.desktop` aan (pad in `Exec=`/`Icon=`).

### Handmatige installatie vanuit de broncode

Discussie en details:
https://github.com/kaixxx/noScribe/discussions/83

Kort overzicht:

```bash
git clone https://github.com/kaixxx/noScribe.git
cd noScribe

# noScribeEdit
rm -rf noScribeEdit/
git clone https://github.com/kaixxx/noScribeEditor.git noScribeEdit

# Python environment
python3 -m venv venv
source venv/bin/activate

# Dependencies
pip install -r environments/requirements_linux.txt
pip install -r noScribeEdit/environments/requirements.txt

# Models
rm -rf models/fast
rm -rf models/precise
git clone https://huggingface.co/mukowaty/faster-whisper-int8 models/fast
git clone https://huggingface.co/mobiuslabsgmbh/faster-whisper-large-v3-turbo models/precise

# Start
python3 ./noScribe.py
```

## Oude versies

https://drive.switch.ch/index.php/s/EIVup04qkSHb54j
