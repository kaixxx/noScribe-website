---
title: "FAQ"
description: "Veelgestelde vragen over noScribe, privacy en systeemeisen."
translationKey: "faq"
weight: 40
draft: false
---

# FAQ

### Kan ik erop vertrouwen dat noScribe geen audio of transcripten naar buiten stuurt?

Ja. noScribe is vanaf het begin ontworpen als een puur lokale desktop-app. Dat was de centrale motivatie om het te bouwen. Als je dit wilt testen, schakel dan tijdelijk je netwerkverbinding uit (zet Wi-Fi uit, trek de LAN-kabel eruit). noScribe werkt exact zoals daarvoor.

### Is noScribe een GDPR-conforme transcriptieoplossing?

Ja, voor zover ik kan beoordelen. Let op: ik ben geen jurist. Maar puur lokale verwerking van gevoelige data wordt beschouwd als de gouden standaard voor privacy - mits je je computer goed beschermt tegen ongeautoriseerde toegang.

### Heb ik een bijzonder krachtige computer nodig voor lokale transcriptie?

Nee, niet per se. Prestaties hebben wel een grote invloed op de transcriptietijd. Maar indien nodig kun je eenvoudig meerdere taken in de avond in de wachtrij zetten en de transcriptie 's nachts laten draaien.

### Hoe zit het met oudere computers?

Het grootste probleem is dat oudere besturingssystemen niet meer compatibel zijn: noScribe draait nog op Windows 10, maar Windows 7/8 wordt niet meer ondersteund. Op Mac heb je minimaal macOS 14 (Sonoma) nodig. Ook oudere Macs met Intel-processors (voor de M1) worden in de nieuwste versies van noScribe niet meer ondersteund. Dit heeft te maken met softwarebibliotheken die we nodig hebben.

### Hoe goed is de ondersteuning voor Linux?

Helaas hangt dit sterk af van de distributie en of competente mensen noScribe op die distro hebben getest en problemen hebben opgelost. Als je tegen issues aanloopt, loont het om de ["Issues" op GitHub](https://github.com/kaixxx/noScribe/issues) te bekijken, waar je vaak discussies met goede tips vindt.

### Heb ik een speciale recorder of microfoon nodig om een interview op te nemen?

Nee. Als de opname alleen voor transcriptie is, heb je geen high-end apparatuur nodig. Een smartphone is vaak voldoende, of een stevige digitale recorder uit het middensegment. Veel belangrijker dan het apparaat zijn goede opnamecondities: sluit ramen, houd de microfoon dicht bij de geïnterviewde en minimaliseer achtergrondgeluid.

### Welke bestandsformaten worden ondersteund?

noScribe gebruikt de vrije software **FFmpeg** voor audio-extractie, die bijna elk video- en audioformaat ondersteunt dat ooit in de geschiedenis van computers is bedacht. Meer informatie hier ("decoders" zijn relevant): https://ffmpeg.org/ffmpeg-codecs.html

### Hoe verwerk ik de voltooide transcripten verder?

Gebruik de noScribe Editor om te controleren en te corrigeren met de audio. Voeg zo nodig non-verbale uitingen toe (lachen, etc.). Je kunt het uiteindelijke HTML-bestand direct in MS Word of LibreOffice openen, of het importeren in gangbare QDA-programma's zoals [MAXQDA](https://www.maxqda.com) of [QualCoder](https://qualcoder-org.github.io/). De noScribe Editor kan ook platte tekst (.txt) of WebVTT-ondertitels (.vtt) opslaan (File > Save As). Voor GAT2-transcripten adviseer ik export naar WebVTT en verdere verwerking in [EXMARaLDA](https://exmaralda.org/).

### Kan ik noScribe commercieel gebruiken?

Ja, geen probleem. Er zijn geen beperkingen op hoe je de transcripten gebruikt die je maakt. Een [donatie](https://ko-fi.com/noscribe) wordt gewaardeerd, maar is niet verplicht. Als je de software zelf wilt aanpassen, moet je voldoen aan de GPL-3.0-licentievoorwaarden: https://github.com/kaixxx/noScribe/blob/main/LICENSE.txt.

### Waar kan ik terecht voor ondersteuning als ik problemen heb?

De ["Issues" op GitHub](https://github.com/kaixxx/noScribe/issues) zijn de beste plek om te beginnen; ik en andere gebruikers kunnen daar helpen. In dringende gevallen kun je me ook direct mailen (kai.droege{at}hslu.ch).
