---
title: "Download e installazione"
description: "Link di download e istruzioni di installazione per Windows, macOS e Linux."
translationKey: "download-installation"
weight: 10
---

# Download e installazione

**Versione corrente:** 0.7

Tutti i file di installazione sono ospitati su SWITCHdrive.ch, una piattaforma sicura di condivisione dati per le università svizzere.
Il codice sorgente è disponibile su [GitHub](https://github.com/kaixxx/noScribe), anche per il [noScribe Editor](https://github.com/kaixxx/noScribeEditor).

{{< button href="#windows" >}}Installazione Windows{{< /button >}}
{{< button href="#macos" >}}Installazione macOS{{< /button >}}
{{< button href="#linux" >}}Installazione Linux{{< /button >}}

## Windows

### Download

Sono disponibili due versioni. La maggior parte degli utenti dovrebbe scegliere la versione standard. Se hai una scheda grafica NVIDIA (RTX 20XX o più recente) con almeno 6 GB di VRAM, puoi beneficiare dell'accelerazione CUDA, che può ridurre drasticamente i tempi di trascrizione.

- **Versione standard (senza GPU NVIDIA):**
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?dir=/noScribe%20vers.%200.7/Windows/normal
- **Versione CUDA (GPU NVIDIA, almeno 6 GB di VRAM):**
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?dir=/noScribe%20vers.%200.7/Windows/cuda

  **Requisiti CUDA:** driver NVIDIA versione 570.65 o superiore, più il toolkit CUDA:
  https://developer.nvidia.com/cuda-downloads?target_os=Windows

### Installazione

1. Avvia l'installer (può richiedere alcuni minuti).
2. Se Windows avvisa di un "editore sconosciuto", scegli "Ulteriori informazioni > Esegui comunque". Purtroppo questo avviso è difficile da evitare per software gratuito.
3. Se vuoi installare noScribe in modalità silenziosa su più macchine: avvia il setup con `/S`.

### Problemi noti (Windows)

- Le schede RTX/GTX-1xxx spesso non sono più supportate da CUDA: in questo caso usa la versione standard.
- Se vedi l'errore "Transcription worker exited unexpectedly (code 3221226505)", può aiutare forzare l'uso della CPU:
  1. Chiudi noScribe.
  2. Apri il file `C:\Users\<USERNAME>\AppData\Local\noScribe\noScribe\config.yml`.
  3. Imposta `force_whisper_cpu` su `'True'` (mantieni le virgolette).
  4. Riavvia noScribe.

## macOS

### Apple Silicon (M1-M4)

- noScribe richiede almeno macOS 14 (Sonoma).
- Download:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?dir=/noScribe%20vers.%200.7/macOS/Apple%20Silicon
- Apri il DMG e trascina **noScribe** e **noScribeEdit** nella cartella Applicazioni.
- È necessario Rosetta 2 (per ffmpeg). Se non è già installato:
  - Apri Terminale (`/Applications/Utilities/Terminal.app`)
  - Esegui `softwareupdate --install-rosetta` (o `--agree-to-license`)
- Avvia le app dalla cartella Applicazioni.

### Mac Intel

- La versione 0.7 non è attualmente disponibile per Mac Intel.
- La versione 0.6 (Intel) è disponibile qui:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?dir=/noScribe%20vers.%200.6/macOS/x86_64%20(Intel)
- Versioni precedenti:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j

Purtroppo non possiamo firmare correttamente i pacchetti per Mac Intel, quindi vedrai un avviso che indica che noScribe e noScribeEdit provengono da sviluppatori non identificati. Devi autorizzare manualmente l'esecuzione di entrambi i programmi se Gatekeeper è attivo. Segui questi passaggi:
- Fai doppio clic sul file DMG scaricato.
- Trascina noScribe e noScribeEdit nel link della cartella Applicazioni (etichetta "drag both here to install").
- Avvia noScribe facendo doppio clic sull'app nella cartella Applicazioni. Vedrai un errore che indica che noScribe proviene da uno sviluppatore non identificato. Fai lo stesso per il noScribe Editor.
- Vai su Impostazioni -> Privacy e sicurezza -> scorri verso il basso fino a vedere un messaggio che indica che noScribe è stato bloccato e fai clic su "Apri comunque". Fai lo stesso per il noScribe Editor.
- Da quel momento, entrambe le app dovrebbero avviarsi senza problemi.

## Linux

### Versione eseguibile

- Download (CUDA o CPU):
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?dir=/noScribe%20vers.%200.7/Linux
- Se la 0.7 non funziona, usa la versione 0.6.2:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?dir=/noScribe%20vers.%200.6/Linux

Installazione:

1. Estrai l'archivio:
   `tar -xzvf noScribe_0.7.0_cpu_linux_amd64.tar.gz`
   oppure
   `tar -xzvf noScribe_0.7.0_cuda_linux_amd64.tar.gz`
2. Entra nella cartella e avvia:
   `./noScribe`
3. Opzionale: regola `noScribe.desktop` e `noScribeEdit.desktop` (percorso in `Exec=`/`Icon=`).

### Installazione manuale dal codice sorgente

Discussione e dettagli:
https://github.com/kaixxx/noScribe/discussions/83

Panoramica rapida:

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

# Assicurati che Git LFS (Large File Support) sia installato. E necessario per scaricare i modelli da Hugging Face.
# Debian/Ubuntu:
sudo apt install git-lfs
# Fedora:
# sudo dnf install git-lfs
# Arch:
# sudo pacman -S git-lfs
# openSUSE:
# sudo zypper install git-lfs
git lfs install

# Models
rm -rf models/fast
rm -rf models/precise
git clone https://huggingface.co/mukowaty/faster-whisper-int8 models/fast
git clone https://huggingface.co/mobiuslabsgmbh/faster-whisper-large-v3-turbo models/precise

# Start
python3 ./noScribe.py
```

## Versioni precedenti

https://drive.switch.ch/index.php/s/EIVup04qkSHb54j
