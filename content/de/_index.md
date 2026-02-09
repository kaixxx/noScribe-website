---
title: "noScribe – Interviews mit KI transkribieren"
description: "Offizielle Projektseite der Open-Source-Transkriptionssoftware noScribe (GPL-3.0) – lokal, datenschutzfreundlich, ohne Cloud."
translationKey: "home"
bookToC: true
---

# noScribe – Interviews mit KI transkribieren

Dies ist die offizielle Projektseite der Open-Source-Software noScribe ([GitHub](https://github.com/kaixxx/noScribe)). noScribe ist eine Desktop-App zur Transkription von Interviews und anderen sensiblen Audiodaten – datenschutzfreundlich, ohne Cloud, mit hochwertigen lokalen KI-Modellen.

{{% hint warning %}} 
Achtung: Jemand versucht über die Domain noscribe(punkt)ai kostenpflichtige Transkriptionsdienste zu verkaufen. Ich habe damit nichts zu tun. Das echte noScribe ist kostenlos und wird es immer bleiben :) 
{{% /hint %}}

## Was ist noScribe?

- **Kostenlos & frei verfügbar** ([GPL‑3.0](https://www.gnu.org/licenses/gpl-3.0.html))
- **Keine Cloud**, alles bleibt auf dem eigenen Computer 
- **Hochwertige Transkripte** basierend auf [Whisper von OpenAI](https://github.com/openai/whisper) und [Pyannote von Hervé Bredin](https://github.com/pyannote/pyannote-audio)
- **Sprecher:innenerkennung** und Unterstützung von rund **60 Sprachen**
- verfügbar für **Windows, macOS und Linux**
- **Komfortabler Editor** zur Prüfung und Korrektur der Transkripte

Ursprünglich vor allem für die qualitative Sozialforschung entwickelt, wird noScribe heute überall dort eingesetzt, wo wir es mit besonders schützenswerten Audiodaten zu tun haben - im Journalismus, in der Medizin, bei Unternehmen, Behörden und NGOs. NoScribe wird von [Universitäten](https://sozmethode.hypotheses.org/2315) und [Hochschulen](https://kbss.site.phbern.ch/db/noscribe) empfohlen, vom [Computermagazin c't](https://www.heise.de/select/ct/2025/2/2433207582191637980), sowie in [Fachpublikationen für Journalist:innen](https://www.journalistin.at/singlenews/uid-968002/nie-wieder-abtippen-profitipps-zum-transkribieren-mit-ki/).

{{< img src="img/noScribe_main_window.png" alt="noScribe Hauptfenster" loading="eager" fetchpriority="high" >}}
(Der Screenshot zeigt ein [Interview mit der exilrussischen Soziologin Natalia Savelyeva](https://www.youtube.com/watch?v=vOwajAbvPzQ&t=2018s), das ich im Mai 2022 geführt habe.)

## Wie nutze ich noScribe?


**Ein- und Ausgabe**

NoScribe kann fast jedes Audio- oder Videoformat verarbeiten. Als Ausgabe wird standardmäßig eine HTML-Datei erstellt, die direkt in MS Word geöffnet werden kann, mit Zeilennummern und Formatierung. Es kann aber auch reiner Text erzeugt werden oder eine Untertitel-Datei im WebVTT-Format. WebVTT ist vor allem für die Weiterverarbeitung mit [EXMARaLDA](https://exmaralda.org/) vorgesehen, einer Spezialsoftware für komplexe Transkriptionssysteme.

**Verarbeitung**

Da die Transkription komplett lokal auf dem eigenen Computer erfolgt, muss man etwas Zeit einplanen: Eine Stunde Interview braucht ca. 1-3 Stunden Transkriptionszeit, auf älteren Rechnern teils noch länger. Man kann aber mehrere Aufträge in eine Warteschlange stellen, die dann bspw. über Nacht abgearbeitet werden. Eine NVIDIA-Grafikkarte (CUDA) kann die Transkription stark beschleunigen. Da der Download auch die KI-Modelle enthält, ist die Installationsdatei recht groß (ca. 3 GB).

**Spezialfunktionen**

NoScribe enthält einige Funktionen speziell für die qualitative Sozialforschung: So können Pausen oder gleichzeitiges Sprechen markiert werden und man kann Zeitmarken ([00:01:38]) einfügen lassen. Außerdem kann man entscheiden, ob Füllworte wie "ehm" auch transkribiert werden sollen oder nicht.  

**Sprachen und Korrektur**

Das KI-Modell hinter noScribe kann auch Dialekte wie bspw. Schweizerdeutsch recht gut verarbeiten. Das Gesagte wird dann in die Schriftsprache ("Hochdeutsch") übertragen. Generell ist es so, dass eine gute Audioaufnahme mit möglichst wenigen Nebengeräuschen viel Zeit bei der Nachbearbeitung des Transkripts spart. Eine Kontrolle und Korrektur ist aber immer nötig. Dazu wird ein eigener Editor mitgeliefert, mit dem man Audio und Text direkt abgleichen kann.   


{{% hint info %}} 
**Mehr Info:**
- Die noScribe [Bedienungsanleitung]({{< relref "docs/usage.md" >}}).
- Ein [Erfahrungbericht von Rebecca Schmidt](https://sozmethode.hypotheses.org/2315) (Universität Paderborn)
- ["Datenaufbereitung durch Transkription"](https://www.pedocs.de/volltexte/2025/33856/pdf/Droege_2025_Datenaufbereitung_durch_Transkription.pdf), ein Fachartikel von mir zum Thema 
{{% /hint %}}

## Wer steht hinter noScribe?

{{< img src="img/kd.png" alt="Kai Dröge" style="width: 8em; height: auto;" >}}

**Dr. Kai Dröge**</br>Soziologe mit Informatik-Hintergrund, Forscher und Dozent

- Meine Homepage an der [Hochschule Luzern (Schweiz)](https://www.hslu.ch/de-ch/hochschule-luzern/ueber-uns/personensuche/profile/?pid=823)
- und am [Institut für Sozialforschung, Frankfurt am Main (Deutschland)](https://www.ifs.uni-frankfurt.de/personendetails/kai-droege.html).
- Mein [YouTube-Kanal "Qualitativ Forschen"](https://www.youtube.com/QualitativForschen)

Viele andere Personen haben zu noScribe beigetragen. Mein besonderer Dank gilt Philipp Schneider ([gernophil](https://github.com/gernophil)), der seit langem die macOS-Versionen betreut, und Rudolf Siegel ([mutlusun](https://github.com/mutlusun)), der viele Verbesserungen eingebracht hat. 

## Spenden

NoScribe ist kostenlos und wird es auch immer bleiben. Aber die Entwicklung verursacht reale Ausgaben, etwa für diese Webseite, für Testhardware oder eine Apple-Entwicklungslizenz. Wenn Sie das Projekt unterstützen möchten:

[![ko-fi](/img/kofi.svg)](https://ko-fi.com/noscribe)

## Warum der Name „noScribe“?

Das [Urban Dictionary](https://www.urbandictionary.com/define.php?term=Scribe) definiert einen *Schreiberling* oder *Scribe* als "eine Person, deren erbärmliche Existenz ganz auf akademisches Elend und Schmerz reduziert ist". Ich hoffe, dass meine Software unser akademisches Leben etwas weniger schmerzhaft und elend machen kann - deshalb "noScribe" :)

## Zitierweise (APA Style)

Dröge, K. (2026). *noScribe. AI-powered Audio Transcription* (Version XXX) [Computer software]. https://noscribe.de
