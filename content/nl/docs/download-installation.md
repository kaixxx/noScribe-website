---
title: "Download en installatie"
description: "Downloadlinks en installatie-instructies voor Windows, macOS en Linux."
translationKey: "download-installation"
weight: 10
---

# Download en installatie

**Huidige versie:** 0.8

Alle installatiebestanden worden gehost op SWITCHdrive.ch, een veilig platform voor gegevensdeling van Zwitserse universiteiten.
De broncode is beschikbaar op [GitHub](https://github.com/kaixxx/noScribe), ook voor de [noScribe Editor](https://github.com/kaixxx/noScribeEditor).

{{< button href="#windows" >}}Windows-installatie{{< /button >}}
{{< button href="#macos" >}}macOS-installatie{{< /button >}}
{{< button href="#linux" >}}Linux-installatie{{< /button >}}

## Windows

### Download

Er zijn twee versies beschikbaar. De meeste gebruikers zouden de standaardversie moeten kiezen. Als je een NVIDIA-grafische kaart (RTX 20XX of nieuwer) hebt met minimaal 6 GB VRAM, kun je profiteren van CUDA-versnelling, wat de transcriptietijd sterk kan verkorten.

- **Standaardversie (zonder NVIDIA-GPU):**
  https://drive.switch.ch/index.php/s/KLcsdKDygXaQdXp
- **CUDA-versie (NVIDIA-GPU, minimaal 6 GB VRAM):**
  https://drive.switch.ch/index.php/s/sEd9ks6yCqQ3xEr

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

### Apple Silicon (M-serie)

- noScribe heeft minimaal macOS 14 (Sonoma) nodig.
- Download:
  https://drive.switch.ch/index.php/s/otF4MedAW6ymY4R
- Open de DMG en sleep **noScribe** en **noScribeEdit** naar de map Programma's.
- Start de apps vanuit de map Programma's.

### Intel Macs

- Door incompatibiliteiten in de pakketten waarvan noScribe afhankelijk is, zijn de nieuwste versies niet meer beschikbaar voor Intel Macs.
- De laatste versie met een officiële Intel-build is 0.6: https://drive.switch.ch/index.php/s/YWE6RQJPbJ9QNHF
- Oudere versies:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j

Omdat we de pakketten voor Intel Macs niet kunnen ondertekenen, zie je een waarschuwing dat noScribe en noScribeEdit afkomstig zijn van niet-geïdentificeerde ontwikkelaars. Je moet handmatig toestemming geven om beide programma's te starten als Gatekeeper is ingeschakeld. Volg deze stappen:

- Dubbelklik op het gedownloade DMG-bestand.
- Sleep noScribe en noScribeEdit naar de link van je map Programma's (gelabeld "drag both here to install").
- Start noScribe door dubbel te klikken op de app in je map Programma's. Je krijgt een foutmelding dat noScribe afkomstig is van een niet-geïdentificeerde ontwikkelaar. Doe hetzelfde voor de noScribe Editor.
- Ga naar Instellingen -> Privacy en beveiliging -> scroll omlaag tot je een melding ziet dat noScribe is geblokkeerd, en klik op "Toch openen". Doe hetzelfde voor de noScribe Editor.
- Daarna zouden beide programma's zonder problemen moeten starten.

## Linux

### Uitvoerbare versie

- Er zijn nog geen Linux-binaries beschikbaar voor versie 0.8. Gebruik versie 0.7 of volg de instructies voor handmatige installatie hieronder.
- Download 0.7 (CUDA of CPU):
  https://drive.switch.ch/index.php/s/GCmryRkjpeX8Yxp
- Als 0.7 niet werkt, gebruik versie 0.6.2:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j

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

De volgende opdrachten zijn bedoeld voor Debian/Ubuntu en vereisen Python 3.11 of 3.12.

```bash
# Stop bij elke fout
set -e

# Systeemafhankelijkheden
sudo apt update
sudo apt install git python3 python3-venv python3-pip python3-tk

# Controleer of dit Python 3.11 of 3.12 is
python3 --version

# Broncode
git clone https://github.com/kaixxx/noScribe.git
cd noScribe

# Vervang de tijdelijke editormap in deze zojuist gekloonde repository
rm -rf noScribeEdit/
git clone https://github.com/kaixxx/noScribeEditor.git noScribeEdit

# Python-omgeving
python3 -m venv noscribe
source noscribe/bin/activate
python -m pip install --upgrade pip

# Los de afhankelijkheden van beide toepassingen samen op
python -m pip install \
    -r environments/requirements_linux.txt \
    -r noScribeEdit/environments/requirements.txt \
    huggingface_hub
python -m pip check

# Download het snelle model
hf download mukowaty/faster-whisper-int8 \
    --include "faster-whisper-large-v3-turbo-int8/*" \
    --local-dir model-downloads

mkdir -p models/fast
cp -a model-downloads/faster-whisper-large-v3-turbo-int8/. models/fast/

# Nauwkeurig model
hf download dropbox-dash/faster-whisper-large-v3-turbo \
    --local-dir models/precise

# Controleer of de gewichten van beide modellen aanwezig zijn
test -s models/fast/model.bin
test -s models/precise/model.bin

# Start vanuit de hoofdmap van de repository
python -m noScribe
```

## Oude versies

https://drive.switch.ch/index.php/s/EIVup04qkSHb54j
