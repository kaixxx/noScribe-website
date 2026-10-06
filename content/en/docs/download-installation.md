---
title: "Download and Installation"
description: "Download links and installation instructions for Windows, macOS, and Linux."
translationKey: "download-installation"
weight: 10
---

# Download and Installation

**Current version:** 0.8

All installation files are hosted on SWITCHdrive.ch, a secure data-sharing platform for Swiss universities.
The source code is available on [GitHub](https://github.com/kaixxx/noScribe), also for the [noScribe Editor](https://github.com/kaixxx/noScribeEditor).

{{< button href="#windows" >}}Windows Installation{{< /button >}}
{{< button href="#macos" >}}macOS Installation{{< /button >}}
{{< button href="#linux" >}}Linux Installation{{< /button >}}

## Windows

### Download

Two versions are available. Most users should choose the standard version. If you have an NVIDIA graphics card (RTX 20XX or newer) with at least 6 GB VRAM, you can benefit from CUDA acceleration, which can drastically reduce transcription time.

- **Standard version (no NVIDIA-GPU):**
  https://drive.switch.ch/index.php/s/KLcsdKDygXaQdXp
- **CUDA version (NVIDIA-GPU, at least 6 GB VRAM):**
  https://drive.switch.ch/index.php/s/sEd9ks6yCqQ3xEr

  **CUDA requirements:** NVIDIA driver version 570.65 or newer, plus the CUDA toolkit:
  https://developer.nvidia.com/cuda-downloads?target_os=Windows

### Installation

1. Start the installer (may take a few minutes).
2. If Windows warns about an "unknown publisher", choose "More info > Run anyway". Unfortunately, this warning is hard to avoid for free software.
3. If you want to install noScribe silently on multiple machines: start the setup with `/S`.

### Known Issues (Windows)

- RTX/GTX-1xxx cards are often no longer supported by CUDA - in this case use the standard version.
- If you see the error "Transcription worker exited unexpectedly (code 3221226505)", it can help to force CPU usage:
  1. Quit noScribe.
  2. Open the file `C:\Users\<USERNAME>\AppData\Local\noScribe\noScribe\config.yml`.
  3. Set `force_whisper_cpu` to `'True'` (keep the quotes).
  4. Restart noScribe.

## macOS

### Apple Silicon (M-series)

- noScribe needs at least macOS 14 (Sonoma) to run.
- Download: https://drive.switch.ch/index.php/s/otF4MedAW6ymY4R
- Open the DMG and drag **noScribe** and **noScribeEdit** into the Applications folder.
- Start the apps from the Applications folder.

### Intel Macs

- Due to incompatibilities in the packages noScribe depends on, the latest versions are no longer available for Intel Macs.
- The last version with an official Intel build is 0.6: https://drive.switch.ch/index.php/s/YWE6RQJPbJ9QNHF
- Older versions:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j

Because we cannot sign the packages for Intel Macs, you will see a warning that noScribe and noScribeEdit come from unidentified developers. You must manually allow both programs to run if Gatekeeper is enabled. Follow these steps:

- Double-click the downloaded DMG file.
- Drag noScribe and noScribeEdit into the link to your Applications folder (labeled "drag both here to install").
- Start noScribe by double-clicking the app in your Applications folder. You will get an error that noScribe is from an unidentified developer. Do the same for noScribe Editor.
- Go to Settings -> Privacy & Security -> scroll down until you see a message that noScribe was blocked from starting, and click "Open Anyway". Do the same again for the noScribe Editor.
- From now on, both programs should start without issues.

## Linux

### Executable Version

- Linux binaries are not yet available for version 0.8. Use version 0.7 or follow the manual installation instructions below.
- Download 0.7 (CUDA or CPU):
  https://drive.switch.ch/index.php/s/GCmryRkjpeX8Yxp
- If 0.7 does not run, use version 0.6.2:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j

Installation:

1. Extract the archive:
   `tar -xzvf noScribe_0.7.0_cpu_linux_amd64.tar.gz`
   or
   `tar -xzvf noScribe_0.7.0_cuda_linux_amd64.tar.gz`
2. Change into the folder and start:
   `./noScribe`
3. Optional: adjust `noScribe.desktop` and `noScribeEdit.desktop` (path in `Exec=`/`Icon=`).

### Manual Installation from Source Code

Discussion and details:
https://github.com/kaixxx/noScribe/discussions/83

Quick overview:

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

# Make sure Git LFS (Large File Support) is installed. It is required to download the models from Hugging Face.
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

## Old Versions

https://drive.switch.ch/index.php/s/EIVup04qkSHb54j

