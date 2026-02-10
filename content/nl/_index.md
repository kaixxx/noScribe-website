---
title: "noScribe - Gratis interviewtranscriptie met AI"
description: "Officiele projectsite van de open-source transcriptiesoftware noScribe (GPL-3.0) - lokaal, privacyvriendelijk, zonder cloud."
translationKey: "home"
bookToC: true
---

# noScribe - Gratis interviewtranscriptie met AI

Dit is de officiele projectsite van de open-source software noScribe ([GitHub](https://github.com/kaixxx/noScribe)). noScribe is een desktop-app voor het transcriberen van interviews en andere gevoelige audio - privacyvriendelijk, zonder cloud, met hoogwaardige lokale AI-modellen.

{{% hint warning %}}
Waarschuwing: iemand probeert betaalde transcriptiediensten te verkopen via het domein noscribe(punt)ai. Ik heb daar niets mee te maken. De echte noScribe is gratis en blijft dat ook :)
{{% /hint %}}

## Wat is noScribe?

- **Gratis en open source** ([GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html))
- **Geen cloud**, alles blijft op je eigen computer
- **Transcripten van hoge kwaliteit** op basis van [Whisper van OpenAI](https://github.com/openai/whisper) en [Pyannote van Hervé Bredin](https://github.com/pyannote/pyannote-audio)
- **Sprekerherkenning** en ondersteuning van ongeveer **60 talen**
- beschikbaar voor **Windows, macOS en Linux**
- **Gebruiksvriendelijke editor** voor controle en correctie van transcripten

Oorspronkelijk ontwikkeld voor kwalitatief sociaal onderzoek, wordt noScribe nu gebruikt overal waar bijzonder gevoelige audio wordt verwerkt - in de journalistiek, de geneeskunde, bedrijven, overheidsinstanties en NGO's. noScribe wordt aanbevolen door [universiteiten](https://guides.library.georgetown.edu/c.php?g=1201872&p=10177079), [onderzoeksplatforms](https://ai4culture.eu/resources/tools/172), het [Duitse computertijdschrift c't](https://www.heise.de/select/ct/2025/2/2433207582191637980), en in [vakpublicaties voor journalisten](https://www.journalistin.at/singlenews/uid-968002/nie-wieder-abtippen-profitipps-zum-transkribieren-mit-ki/).

{{< img src="img/noScribe_main_window.png" alt="noScribe hoofdvenster" loading="eager" fetchpriority="high" >}}
(De screenshot toont een [interview met de Russische sociologe Natalia Savelyeva in ballingschap](https://www.youtube.com/watch?v=vOwajAbvPzQ&t=2018s) dat ik in mei 2022 heb afgenomen.)

## Hoe gebruik ik noScribe?

**Invoer en uitvoer**

noScribe kan bijna elk audio- of videoformaat verwerken. Standaard maakt het een HTML-bestand dat direct in MS Word kan worden geopend, met regelnummers en opmaak. Het kan ook platte tekst of een ondertitelbestand in WebVTT-formaat produceren. WebVTT is vooral bedoeld voor verdere verwerking met [EXMARaLDA](https://exmaralda.org/), gespecialiseerde software voor complexe transcriptiesystemen.

**Verwerking**

Omdat de transcriptie volledig lokaal op je computer gebeurt, kost het tijd: een uur interview duurt ongeveer 1-3 uur transcriptietijd, op oudere machines nog langer. Je kunt echter meerdere opdrachten in de wachtrij zetten, bijvoorbeeld 's nachts. Een NVIDIA-grafische kaart (CUDA) kan de transcriptie aanzienlijk versnellen. Omdat de download ook de AI-modellen bevat, is het installatiebestand behoorlijk groot (ongeveer 3 GB).

**Speciale functies**

noScribe bevat verschillende functies die specifiek zijn voor kwalitatief sociaal onderzoek: pauzes of overlappende spraak kunnen worden gemarkeerd en je kunt tijdstempels invoegen ([00:01:38]). Je kunt ook bepalen of stopwoorden en haperingen zoals "uh" moeten worden getranscribeerd of niet.

**Talen en correctie**

Het AI-model achter noScribe ondersteunt veel talen en kan ook dialecten redelijk goed aan. Over het algemeen bespaart een goede opname met zo weinig mogelijk achtergrondgeluid veel tijd in de nabewerking. Maar controle en correctie blijven altijd nodig. Daarvoor is een aparte editor inbegrepen waarmee je audio en tekst eenvoudig kunt uitlijnen.

{{% hint info %}}
**Meer info:**
- De noScribe [gebruikershandleiding]({{< relref "docs/usage.md" >}}) en [FAQ]({{< relref "docs/faq.md" >}}).
- [Review- en tutorialvideo (extern)](https://www.youtube.com/watch?v=d0iwEVdW3qg)
{{% /hint %}}

## Wie zit er achter noScribe?

{{< img src="img/kd.png" alt="Kai Dröge" style="width: 8em; height: auto;" >}}

**Dr. Kai Dröge**</br>Socioloog met een achtergrond in informatica, onderzoeker en docent

- Mijn homepage aan de [Hochschule Luzern (Zwitserland)](https://www.hslu.ch/de-ch/hochschule-luzern/ueber-uns/personensuche/profile/?pid=823)
- en aan het [Institute for Social Research, Frankfurt am Main (Duitsland)](https://www.ifs.uni-frankfurt.de/personendetails/kai-droege.html).
- Mijn [YouTube-kanaal "Qualitativ Forschen"](https://www.youtube.com/QualitativForschen) (meestal Duits)

Veel andere mensen hebben bijgedragen aan noScribe. Mijn speciale dank gaat uit naar Philipp Schneider ([gernophil](https://github.com/gernophil)), die al lange tijd de macOS-versies onderhoudt, en Rudolf Siegel ([mutlusun](https://github.com/mutlusun)), die veel verbeteringen heeft ingebracht.

## Donaties

noScribe is gratis en blijft dat altijd. Maar ontwikkeling brengt echte kosten met zich mee, bijvoorbeeld voor deze website, testhardware of een Apple-developerlicentie. Als je het project wilt steunen:

[![ko-fi](/img/kofi.svg)](https://ko-fi.com/noscribe)

## Waarom de naam "noScribe"?

Het [Urban Dictionary](https://www.urbandictionary.com/define.php?term=Scribe) definieert een *scribe* als "a person whose entire miserable existence has been reduced to academic grunge and pain". Ik hoop dat deze software ons academische leven iets minder pijnlijk en ellendig kan maken - vandaar de naam noScribe :)

## Citaat (APA-stijl)

Dröge, K. (2026). *noScribe. AI-powered Audio Transcription* (Version XXX) [Computer software]. https://noscribe.de
