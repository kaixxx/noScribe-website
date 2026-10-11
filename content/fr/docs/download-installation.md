---
title: "Téléchargement et installation"
description: "Liens de téléchargement et instructions d’installation pour Windows, macOS et Linux."
translationKey: "download-installation"
weight: 10
---

# Téléchargement et installation

**Version actuelle :** 0.8

Tous les fichiers d’installation sont hébergés sur SWITCHdrive.ch, une plateforme sécurisée de partage de données pour les universités suisses.
Le code source est disponible sur [GitHub](https://github.com/kaixxx/noScribe), ainsi que celui du [noScribe Editor](https://github.com/kaixxx/noScribeEditor).

{{< button href="#windows" >}}Installation Windows{{< /button >}}
{{< button href="#macos" >}}Installation macOS{{< /button >}}
{{< button href="#linux" >}}Installation Linux{{< /button >}}

## Windows {#windows}

### Téléchargement

Deux versions sont disponibles. La plupart des utilisateurs devraient choisir la version standard. Si vous avez une carte graphique NVIDIA (RTX 20XX ou plus récente) avec au moins 6 Go de VRAM, vous pouvez profiter de l’accélération CUDA, qui peut réduire drastiquement le temps de transcription.

- **Version standard (sans GPU NVIDIA) :**
  https://drive.switch.ch/index.php/s/KLcsdKDygXaQdXp
- **Version CUDA (GPU NVIDIA, au moins 6 Go de VRAM) :**
  https://drive.switch.ch/index.php/s/sEd9ks6yCqQ3xEr

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

### Apple Silicon (série M)

- noScribe nécessite au minimum macOS 14 (Sonoma).
- Téléchargement :
  https://drive.switch.ch/index.php/s/otF4MedAW6ymY4R
- Ouvrez le DMG et faites glisser **noScribe** et **noScribeEdit** dans le dossier Applications.
- Lancez les apps depuis le dossier Applications.

### Mac Intel

- En raison d’incompatibilités dans les paquets dont dépend noScribe, les versions les plus récentes ne sont plus disponibles pour les Mac Intel.
- La dernière version disposant d’une compilation officielle pour Intel est la version 0.6 : https://drive.switch.ch/index.php/s/YWE6RQJPbJ9QNHF
- Anciennes versions :
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j

Comme nous ne pouvons pas signer les paquets pour les Mac Intel, vous verrez un avertissement indiquant que noScribe et noScribeEdit proviennent de développeurs non identifiés. Vous devez autoriser manuellement l’exécution des deux programmes si Gatekeeper est activé. Suivez ces étapes :

- Double-cliquez sur le fichier DMG téléchargé.
- Faites glisser noScribe et noScribeEdit vers le lien de votre dossier Applications (libellé « drag both here to install »).
- Lancez noScribe en double-cliquant sur l’app dans votre dossier Applications. Vous verrez un message indiquant que noScribe provient d’un développeur non identifié. Faites de même pour le noScribe Editor.
- Allez dans Réglages -> Confidentialité et sécurité -> faites défiler jusqu’au message indiquant que noScribe a été bloqué, puis cliquez sur « Ouvrir quand même ». Faites de même pour le noScribe Editor.
- À partir de maintenant, les deux programmes devraient démarrer sans problème.

## Linux {#linux}

### Version exécutable

- Les binaires Linux ne sont pas encore disponibles pour la version 0.8. Utilisez la version 0.7 ou suivez les instructions d’installation manuelle ci-dessous.
- Téléchargement de la version 0.7 (CUDA ou CPU) :
  https://drive.switch.ch/index.php/s/GCmryRkjpeX8Yxp
- Si la 0.7 ne fonctionne pas, utilisez la version 0.6.2 :
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j

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

Les commandes suivantes sont destinées à Debian/Ubuntu et nécessitent Python 3.11 ou 3.12.

```bash
# Arrêter à la moindre erreur
set -e

# Dépendances système
sudo apt update
sudo apt install git python3 python3-venv python3-pip python3-tk

# Vérifier qu'il s'agit de Python 3.11 ou 3.12
python3 --version

# Code source
git clone https://github.com/kaixxx/noScribe.git
cd noScribe

# Remplacer le dossier provisoire de l’éditeur dans ce dépôt fraîchement cloné
rm -rf noScribeEdit/
git clone https://github.com/kaixxx/noScribeEditor.git noScribeEdit

# Environnement Python
python3 -m venv noscribe
source noscribe/bin/activate
python -m pip install --upgrade pip

# Résoudre ensemble les dépendances des deux applications
python -m pip install \
    -r environments/requirements_linux.txt \
    -r noScribeEdit/environments/requirements.txt \
    huggingface_hub
python -m pip check

# Télécharger le modèle rapide
hf download mukowaty/faster-whisper-int8 \
    --include "faster-whisper-large-v3-turbo-int8/*" \
    --local-dir model-downloads

mkdir -p models/fast
cp -a model-downloads/faster-whisper-large-v3-turbo-int8/. models/fast/

# Modèle précis
hf download dropbox-dash/faster-whisper-large-v3-turbo \
    --local-dir models/precise

# Vérifier que les poids des deux modèles sont présents
test -s models/fast/model.bin
test -s models/precise/model.bin

# Démarrer depuis la racine du dépôt
python -m noScribe
```

## Anciennes versions

https://drive.switch.ch/index.php/s/EIVup04qkSHb54j
