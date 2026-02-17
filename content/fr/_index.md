---
title: "noScribe - Site officiel | Transcription d'interviews gratuite avec l'IA"
description: "Site officiel de noScribe, le logiciel open source de transcription (GPL-3.0): local, respectueux de la vie privée, sans cloud."
translationKey: "home"
bookToC: true
---

# noScribe – Transcription d’interviews gratuite avec l’IA

Ceci est le site officiel du logiciel open source noScribe ([GitHub](https://github.com/kaixxx/noScribe)). noScribe est une application de bureau pour transcrire des interviews et d’autres données audio sensibles – respectueuse de la vie privée, sans cloud, avec des modèles d’IA locaux de haute qualité.

{{% hint warning %}}
Avertissement : quelqu’un tente de vendre des services de transcription payants via le domaine noscribe(point)ai. Je n’ai rien à voir avec cela. Le vrai noScribe est gratuit et le restera toujours :)
{{% /hint %}}

## Qu’est-ce que noScribe ?

- **Gratuit et open source** ([GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html))
- **Sans cloud**, tout reste sur votre ordinateur
- **Transcriptions de haute qualité** basées sur [Whisper d’OpenAI](https://github.com/openai/whisper) et [Pyannote de Hervé Bredin](https://github.com/pyannote/pyannote-audio)
- **Reconnaissance des locuteurs** et prise en charge d’environ **60 langues**
- disponible pour **Windows, macOS et Linux**
- **Éditeur pratique** pour relire et corriger les transcriptions

Initialement développé pour la recherche sociale qualitative, noScribe est désormais utilisé partout où des données audio particulièrement sensibles sont traitées – dans le journalisme, la médecine, les entreprises, les administrations et les ONG. noScribe est recommandé par des [universités](https://guides.library.georgetown.edu/c.php?g=1201872&p=10177079), des [plateformes de recherche](https://ai4culture.eu/resources/tools/172), le [magazine informatique allemand c’t](https://www.heise.de/select/ct/2025/2/2433207582191637980), et dans des [publications professionnelles pour journalistes](https://www.journalistin.at/singlenews/uid-968002/nie-wieder-abtippen-profitipps-zum-transkribieren-mit-ki/).

{{< img src="img/noScribe_main_window.png" alt="Fenêtre principale de noScribe" loading="eager" fetchpriority="high" >}}
(La capture d’écran montre une [interview de la sociologue russe exilée Natalia Savelyeva](https://www.youtube.com/watch?v=vOwajAbvPzQ&t=2018s) que j’ai réalisée en mai 2022.)

## Comment utiliser noScribe ?

**Entrée et sortie**

noScribe peut traiter presque tous les formats audio ou vidéo. Par défaut, il crée un fichier HTML qui peut être ouvert directement dans MS Word, avec numéros de ligne et mise en forme. Il peut aussi produire du texte brut ou un fichier de sous‑titres au format WebVTT. WebVTT est principalement destiné à un traitement ultérieur avec [EXMARaLDA](https://exmaralda.org/), un logiciel spécialisé pour des systèmes de transcription complexes.

**Traitement**

Comme la transcription se fait entièrement en local sur votre ordinateur, cela prend du temps : une heure d’interview demande environ 1 à 3 heures de transcription, sur des machines anciennes encore plus. Mais vous pouvez mettre plusieurs tâches en file d’attente, par exemple la nuit. Une carte graphique NVIDIA (CUDA) peut accélérer fortement la transcription. Comme le téléchargement inclut aussi les modèles d’IA, l’installateur est assez volumineux (environ 3 Go).

**Fonctionnalités spéciales**

noScribe inclut plusieurs fonctions spécifiquement pour la recherche sociale qualitative : les pauses ou les chevauchements de parole peuvent être marqués et vous pouvez insérer des horodatages ([00:01:38]). Vous pouvez aussi décider si les mots de remplissage et les hésitations comme « euh » doivent être transcrits ou non.

**Langues et correction**

Le modèle d’IA derrière noScribe prend en charge de nombreuses langues et gère assez bien les dialectes. En général, un bon enregistrement avec le moins de bruit de fond possible fait gagner beaucoup de temps en post‑traitement. Mais une relecture et une correction restent nécessaires. Pour cela, un éditeur dédié est inclus, qui permet d’aligner facilement audio et texte.

{{% hint info %}}
**Plus d’infos :**
- Le [guide d’utilisation]({{< relref "docs/usage.md" >}}) et la [FAQ]({{< relref "docs/faq.md" >}}) de noScribe.
- [Vidéo de test et tutoriel (externe)](https://www.youtube.com/watch?v=d0iwEVdW3qg)
{{% /hint %}}

## Qui est derrière noScribe ?

{{< img src="img/kd.png" alt="Kai Dröge" style="width: 8em; height: auto;" >}}

**Dr. Kai Dröge**</br>Sociologue avec un bagage en informatique, chercheur et enseignant

- Ma page à la [Haute école de Lucerne (Suisse)](https://www.hslu.ch/de-ch/hochschule-luzern/ueber-uns/personensuche/profile/?pid=823)
- et à l’[Institut de recherche sociale, Francfort-sur-le-Main (Allemagne)](https://www.ifs.uni-frankfurt.de/personendetails/kai-droege.html).
- Ma [chaîne YouTube « Qualitativ Forschen »](https://www.youtube.com/QualitativForschen) (principalement en allemand)

De nombreuses autres personnes ont contribué à noScribe. Mes remerciements particuliers vont à Philipp Schneider ([gernophil](https://github.com/gernophil)), qui maintient depuis longtemps les versions macOS, et à Rudolf Siegel ([mutlusun](https://github.com/mutlusun)), qui a apporté de nombreuses améliorations.

## Dons

noScribe est gratuit et le restera toujours. Mais le développement entraîne de vraies dépenses, par exemple pour ce site web, du matériel de test ou une licence développeur Apple. Si vous souhaitez soutenir le projet :

[![ko-fi](/img/kofi.svg)](https://ko-fi.com/noscribe)

## Pourquoi le nom « noScribe » ?

L’[Urban Dictionary](https://www.urbandictionary.com/define.php?term=Scribe) définit un *scribe* comme « une personne dont toute l’existence misérable a été réduite à la boue académique et à la douleur ». J’espère que ce logiciel rendra notre vie académique un peu moins douloureuse et misérable – d’où le nom noScribe :)

## Citation (style APA)

Dröge, K. (2026). *noScribe. AI-powered Audio Transcription* (Version XXX) [Computer software]. https://noscribe.de
