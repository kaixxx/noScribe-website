---
title: "Téléchargement et installation"
description: "Liens de téléchargement et instructions d’installation pour Windows, macOS et Linux."
translationKey: "download-installation"
weight: 10
---

# Téléchargement et installation

**Version actuelle :** 0.7

Tous les fichiers d’installation sont hébergés sur SWITCHdrive.ch, une plateforme sécurisée de partage de données pour les universités suisses.
Le code source est disponible sur [GitHub](https://github.com/kaixxx/noScribe), ainsi que celui du [noScribe Editor](https://github.com/kaixxx/noScribeEditor).

{{< button href="#windows" >}}Installation Windows{{< /button >}}
{{< button href="#macos" >}}Installation macOS{{< /button >}}
{{< button href="#linux" >}}Installation Linux{{< /button >}}

## Windows {#windows}

### Téléchargement

Deux versions sont disponibles. La plupart des utilisateurs devraient choisir la version standard. Si vous avez une carte graphique NVIDIA (RTX 20XX ou plus récente) avec au moins 6 Go de VRAM, vous pouvez profiter de l’accélération CUDA, qui peut réduire drastiquement le temps de transcription.

- **Version standard (sans GPU NVIDIA) :**
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.7%2FWindows%2Fnormal
- **Version CUDA (GPU NVIDIA, au moins 6 Go de VRAM) :**
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.7%2FWindows%2Fcuda

  **Exigences CUDA :** pilote NVIDIA version 570.65 ou plus récent, plus le kit de développement CUDA :
  https://developer.nvidia.com/cuda-downloads?target_os=Windows

### Installation

1. Lancez l’installateur (cela peut prendre quelques minutes).
2. Si Windows avertit d’un « éditeur inconnu », choisissez « Plus d’infos > Exécuter quand même ». Malheureusement, cet avertissement est difficile à éviter pour les logiciels gratuits.
3. Si vous voulez installer noScribe en mode silencieux sur plusieurs machines : lancez le programme d’installation avec `/S`.

### Problèmes connus (Windows)

- Les cartes RTX/GTX-1xxx ne sont souvent plus prises en charge par CUDA – utilisez alors la version standard.
- Si vous voyez l’erreur « Transcription worker exited unexpectedly (code 3221226505) », il peut aider de forcer l’utilisation du CPU :
  1. Quittez noScribe.
  2. Ouvrez le fichier `C:\Users\<USERNAME>\AppData\Local\noScribe\noScribe\config.yml`.
  3. Réglez `force_whisper_cpu` sur `'True'` (gardez les guillemets).
  4. Redémarrez noScribe.

## macOS {#macos}

### Apple Silicon (M1-M4, macOS 14+)

- Téléchargement :
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.7%2FmacOS%2FApple%20Silicon
- Ouvrez le DMG et faites glisser **noScribe** et **noScribeEdit** dans le dossier Applications.
- Rosetta 2 est requis (pour ffmpeg). S’il n’est pas déjà installé :
  - Ouvrez le Terminal (`/Applications/Utilities/Terminal.app`)
  - Exécutez `softwareupdate --install-rosetta` (ou `--agree-to-license`)
- Lancez les apps depuis le dossier Applications.

### Mac Intel

- La version 0.7 n’est actuellement pas disponible pour les Mac Intel.
- La version 0.6 (Intel) est disponible ici :
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.6%2FmacOS%2Fx86_64%20(Intel)
- Anciennes versions :
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j

Malheureusement, nous ne pouvons pas signer correctement les paquets pour les Mac Intel, vous verrez donc un avertissement indiquant que noScribe et noScribeEdit proviennent de développeurs non identifiés. Vous devez autoriser manuellement l’exécution des deux programmes si Gatekeeper est activé. Suivez ces étapes :
- Double-cliquez sur le fichier DMG téléchargé.
- Faites glisser noScribe et noScribeEdit vers le lien de votre dossier Applications (libellé « drag both here to install »).
- Lancez noScribe en double-cliquant sur l’app dans votre dossier Applications. Vous verrez un message indiquant que noScribe provient d’un développeur non identifié. Faites de même pour le noScribe Editor.
- Allez dans Réglages -> Confidentialité et sécurité -> faites défiler jusqu’au message indiquant que noScribe a été bloqué, puis cliquez sur « Ouvrir quand même ». Faites de même pour le noScribe Editor.
- À partir de maintenant, les deux programmes devraient démarrer sans problème.

## Linux {#linux}

### Version exécutable

- Téléchargement (CUDA ou CPU) :
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.7%2FLinux
- Si la 0.7 ne fonctionne pas, utilisez la version 0.6.2 :
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j?path=%2FnoScribe%20vers.%200.6%2FLinux

Installation :

1. Décompressez l’archive :
   `tar -xzvf noScribe_0.7.0_cpu_linux_amd64.tar.gz`
   ou
   `tar -xzvf noScribe_0.7.0_cuda_linux_amd64.tar.gz`
2. Entrez dans le dossier et lancez :
   `./noScribe`
3. Optionnel : ajustez `noScribe.desktop` et `noScribeEdit.desktop` (chemin dans `Exec=`/`Icon=`).

### Installation manuelle depuis le code source

Discussion et détails :
https://github.com/kaixxx/noScribe/discussions/83

Vue d’ensemble rapide :

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

## Anciennes versions

https://drive.switch.ch/index.php/s/EIVup04qkSHb54j
