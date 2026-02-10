---
title: "FAQ"
description: "Questions courantes sur noScribe, la confidentialité et les exigences système."
translationKey: "faq"
weight: 40
draft: false
---

# FAQ

### Puis-je être sûr que noScribe n’envoie pas d’audio ni de transcriptions vers l’extérieur ?

Oui. noScribe a été conçu dès le départ comme une application de bureau purement locale. C’était la motivation centrale pour le créer. Si vous voulez le tester, désactivez temporairement votre connexion réseau (coupez le Wi‑Fi, débranchez le câble LAN). noScribe fonctionnera exactement comme avant.

### noScribe est‑il une solution de transcription conforme au RGPD ?

Oui, autant que je puisse en juger. Notez toutefois que je ne suis pas juriste. Mais le traitement local de données sensibles est considéré comme la référence en matière de confidentialité – à condition de bien protéger votre ordinateur contre les accès non autorisés.

### Ai‑je besoin d’un ordinateur particulièrement puissant pour la transcription locale ?

Non, pas nécessairement. Les performances ont un impact important sur la durée de transcription. Mais si besoin, vous pouvez simplement mettre plusieurs travaux en file d’attente le soir et laisser la transcription tourner pendant la nuit.

### Qu’en est‑il des ordinateurs plus anciens ?

Le plus gros problème est que les anciens systèmes d’exploitation ne sont plus compatibles : noScribe fonctionne encore sous Windows 10, mais Windows 7/8 ne sont plus pris en charge. Sur Mac, il faut au moins macOS 14 (Sonoma). De plus, les anciens Mac avec processeurs Intel (avant le M1) ne sont plus pris en charge dans les dernières versions de noScribe. Cela est lié aux bibliothèques logicielles dont nous avons besoin.

### Quel est le niveau de prise en charge de Linux ?

Malheureusement cela dépend fortement de la distribution et du fait que des personnes compétentes aient testé noScribe sur cette distribution et corrigé les problèmes. Si vous rencontrez des soucis, il vaut la peine de consulter les [« Issues » sur GitHub](https://github.com/kaixxx/noScribe/issues), où vous trouverez souvent des discussions avec de bons conseils.

### Ai‑je besoin d’un enregistreur spécial ou d’un micro particulier pour enregistrer une interview ?

Non. Si l’enregistrement sert uniquement à la transcription, vous n’avez pas besoin de matériel haut de gamme. Un smartphone suffit souvent, ou un enregistreur numérique robuste de milieu de gamme. Bien plus important que l’appareil, ce sont de bonnes conditions d’enregistrement : fermez les fenêtres, gardez le micro près de la personne interviewée et réduisez le bruit de fond.

### Quels formats de fichiers sont pris en charge ?

noScribe utilise le logiciel libre **FFmpeg** pour l’extraction audio, qui prend en charge presque tous les formats vidéo et audio jamais inventés dans l’histoire des ordinateurs. Plus d’informations ici (« decoders » sont pertinents) : https://ffmpeg.org/ffmpeg-codecs.html

### Comment traiter ensuite les transcriptions terminées ?

Utilisez le noScribe Editor pour relire et corriger à partir de l’audio. Ajoutez les expressions non verbales (rires, etc.) si nécessaire. Vous pouvez ouvrir le fichier HTML final directement dans MS Word ou LibreOffice, ou l’importer dans des logiciels d’analyse qualitative comme [MAXQDA](https://www.maxqda.com) ou [QualCoder](https://qualcoder-org.github.io/). Le noScribe Editor peut aussi enregistrer du texte brut (.txt) ou des sous‑titres WebVTT (.vtt) (Fichier > Enregistrer sous). Pour des transcriptions GAT2, je recommande d’exporter en WebVTT puis de continuer le traitement dans [EXMARaLDA](https://exmaralda.org/).

### Puis‑je utiliser noScribe commercialement ?

Oui, aucun problème. Il n’y a aucune restriction sur l’usage des transcriptions que vous créez. Un [don](https://ko-fi.com/noscribe) serait apprécié, mais n’est pas obligatoire. Si vous souhaitez modifier le logiciel lui‑même, vous devez respecter les termes de la licence GPL‑3.0 : https://github.com/kaixxx/noScribe/blob/main/LICENSE.txt.

### Où puis‑je obtenir de l’aide si je rencontre des problèmes ?

Les [« Issues » sur GitHub](https://github.com/kaixxx/noScribe/issues) sont le meilleur point de départ, moi et d’autres utilisateurs pouvons y aider. Dans les cas particulièrement urgents, vous pouvez aussi m’écrire directement (kai.droege{at}hslu.ch).
