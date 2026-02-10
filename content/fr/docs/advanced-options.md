---
title: "Options avancées"
description: "CLI, configuration, modèles personnalisés et contributions au développement."
translationKey: "advanced-options"
weight: 30
---

# Options avancées

### Scripting

Depuis la version 0.7, noScribe dispose d’une interface en ligne de commande et peut être intégré à vos propres scripts. `noScribe.exe --help` affiche les options disponibles. Avec `--no-gui`, la fenêtre principale est supprimée et noScribe fonctionne entièrement en mode ligne de commande.

### Configuration

Après le premier démarrage, le fichier `config.yml` se trouve dans le profil utilisateur :
  - Windows : `C:\Users\<username>\AppData\Local\noScribe\noScribe\config.yml`
  - macOS : `~/Library/Application Support/noscribe/config.yml`
  - Linux : `~/.config/noScribe/config.yml`

Vous pouvez y ajuster la langue de l’interface et d’autres options. Remarque : modifiez ce fichier uniquement quand noScribe n’est pas en cours d’exécution, sinon vos changements seront écrasés.

### Journaux

Dans le même dossier de profil, il y a un répertoire `log` avec des informations détaillées sur chaque transcription – utile pour le dépannage.

## Utiliser des modèles de transcription spéciaux {#use-special-transcription-models}

noScribe est livré avec deux modèles de transcription (precise/fast), tous deux basés sur *Whisper V3 Turbo*. Vous pouvez aussi utiliser d’autres modèles Whisper mieux adaptés à certaines langues.

**Installation :**

1. Dans noScribe, sous *Model*, ouvrez la liste et sélectionnez *Add AI models*. Cela ouvre le dossier `whisper_models` dans le répertoire de configuration de noScribe (chemins ci‑dessus).
2. Créez un *sous‑dossier séparé* pour chaque modèle. Le nom de ce dossier sera le nom du modèle affiché dans noScribe.
3. Placez tous les fichiers du modèle dans ce dossier (généralement : `config.json`, `model.bin`, `preprocessor_config.json`, `tokenizer.json`, `vocabulary.json`).
4. Le nouveau modèle devrait maintenant apparaître comme option supplémentaire sous *Models* dans noScribe.

**Remarques :**

- Seuls les modèles au format *Faster‑Whisper* ou *CTranslate2* sont pris en charge. Les modèles au format OpenAI Whisper d’origine peuvent être [convertis.](https://github.com/SYSTRAN/faster-whisper?tab=readme-ov-file#model-conversion)
- Certains téléchargements incluent des préfixes `ctranslate2_` – supprimez‑les (par ex. `ctranslate2_vocabulary.json` -> `vocabulary.json`).

**Modèles :**

- Le **dépôt officiel Faster‑Whisper** (15 modèles) : https://huggingface.co/Systran Cela inclut aussi le modèle Whisper‑v2, qui était le modèle par défaut jusqu’à la version 0.5 de noScribe et que certains préfèrent encore, même s’il est nettement plus lent. Les modèles uniquement anglais (terminant par « .en ») sont aussi intéressants car ils tournent sensiblement plus vite.
- **Une version de Whisper V3 adaptée au français** : https://huggingface.co/bofenghuang/whisper-large-v3-french/tree/main/ctranslate2 (Si les fichiers téléchargés ont le préfixe « ctranslate2_ », veuillez le supprimer.)
- **Une version de Whisper V3 optimisée pour l’allemand** (mon expérience : seulement de légères améliorations de la qualité de transcription, mais moins de précision dans la détection des pauses et des chevauchements de parole) : https://huggingface.co/aseifert/faster-whisper-large-v3-turbo-german/tree/main Vous avez aussi besoin du fichier `tokenizer.json` du dépôt Whisper V3 original : https://huggingface.co/Systran/faster-whisper-large-v3/tree/main

Vous trouverez d’autres modèles sur [huggingface](https://huggingface.co/). Recherchez « faster-whisper » et la langue souhaitée (ou simplement « whisper » pour trouver des modèles convertibles).

J’utilise cette version de Whisper V3 Turbo comme modèle « precise » : https://huggingface.co/mobiuslabsgmbh/faster-whisper-large-v3-turbo

**Si vous trouvez un bon nouveau modèle, merci de le partager dans cette discussion : https://github.com/kaixxx/noScribe/discussions/132**.

## Contribuer au développement

- noScribe est basé sur Python 3.13.
- Les modèles d’IA (Whisper) sont trop volumineux pour GitHub. Ils doivent être téléchargés séparément si vous voulez exécuter noScribe depuis le code source. Voir les notes dans le dossier `models`.
- Les tests, rapports de bugs et pull requests sont les bienvenus. J’essaie de répondre rapidement. Sinon, n’hésitez pas à me relancer poliment. Merci de comprendre que je ne peux pas accepter toutes les idées.

### Traductions

L’interface est traduite dans de nombreuses langues. Cependant, certaines traductions ont été faites automatiquement et peuvent contenir des erreurs. J’apprécie les corrections.

Les fichiers de langue se trouvent dans le dossier `trans`. Les modifications doivent respecter les conventions YAML. Le changement de langue de l’interface se fait via le réglage `locale` dans `config.yml`.
