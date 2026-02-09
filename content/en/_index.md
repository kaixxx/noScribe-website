---
title: "noScribe – Transcribe Interviews with AI"
description: "Official project site of the open-source transcription software noScribe (GPL-3.0) – local, privacy-friendly, no cloud."
bookToC: true
---

# noScribe – Transcribe Interviews with AI

This is the official project site of the open-source software noScribe ([GitHub](https://github.com/kaixxx/noScribe)). noScribe is a desktop app for transcribing interviews and other sensitive audio data – privacy-friendly, without cloud, with high-quality local AI models.

{{% hint warning %}}
Warning: Someone is trying to sell paid transcription services via the domain noscribe(dot)ai. I have nothing to do with that. The real noScribe is free and will always remain so :)
{{% /hint %}}

## What is noScribe?

- **Free and open** ([GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html))
- **No cloud**, everything stays on your own computer
- **High-quality transcripts** based on [Whisper by OpenAI](https://github.com/openai/whisper) and [Pyannote by Herv? Bredin](https://github.com/pyannote/pyannote-audio)
- **Speaker recognition** and support for around **60 languages**
- available for **Windows, macOS, and Linux**
- **Comfortable editor** for reviewing and correcting transcripts

Originally developed mainly for qualitative social research, noScribe is now used wherever particularly sensitive audio data is handled - in journalism, medicine, companies, government agencies and NGOs. noScribe is recommended by [universities](https://sozmethode.hypotheses.org/2315) and [universities of applied sciences](https://kbss.site.phbern.ch/db/noscribe), by the [computer magazine c't](https://www.heise.de/select/ct/2025/2/2433207582191637980), and in [professional publications for journalists](https://www.journalistin.at/singlenews/uid-968002/nie-wieder-abtippen-profitipps-zum-transkribieren-mit-ki/).

{{< img src="img/noScribe_main_window.png" alt="noScribe main window" loading="eager" fetchpriority="high" >}}
(The screenshot shows an [interview with the exiled Russian sociologist Natalia Savelyeva](https://www.youtube.com/watch?v=vOwajAbvPzQ&t=2018s) that I conducted in May 2022.)

## How do I use noScribe?

**Input and output**

noScribe can process almost any audio or video format. By default it creates an HTML file that can be opened directly in MS Word, with line numbers and formatting. It can also produce plain text or a subtitle file in WebVTT format. WebVTT is mainly intended for further processing with [EXMARaLDA](https://exmaralda.org/), specialized software for complex transcription systems.

**Processing**

Because transcription happens entirely locally on your own computer, you need to plan some time: One hour of interview takes about 1-3 hours of transcription time, on older machines sometimes even longer. But you can queue multiple jobs, for example overnight. An NVIDIA graphics card (CUDA) can significantly speed up transcription. Since the [download](/en/docs/download-installation/) also includes the AI models, the installer is quite large (about 3 GB).

**Special features**

noScribe includes several features specifically for qualitative social research: pauses or overlapping speech can be marked and you can insert timestamps ([00:01:38]). You can also decide whether filler words like "um" should be transcribed or not.

**Languages and correction**

The AI model behind noScribe can handle dialects like Swiss German quite well. The spoken content is then transferred into written standard language. In general, a good audio recording with as little background noise as possible saves a lot of time in post-processing. But review and correction are always necessary. For this, a dedicated editor is included that lets you align audio and text directly.

{{% hint info %}}
**More info:**
- The noScribe [usage guide](/en/docs/usage/).
- A [report by Rebecca Schmidt](https://sozmethode.hypotheses.org/2315) (University of Paderborn)
- ["Data preparation through transcription"](https://www.pedocs.de/volltexte/2025/33856/pdf/Droege_2025_Datenaufbereitung_durch_Transkription.pdf), a specialist article by me on the topic
{{% /hint %}}

## Who is behind noScribe?

{{< img src="img/kd.png" alt="Kai Dröge" style="width: 8em; height: auto;" >}}

**Dr. Kai Dröge**</br>Sociologist with a computer science background, researcher and lecturer

- My homepage at the [Lucerne University of Applied Sciences and Arts (Switzerland)](https://www.hslu.ch/de-ch/hochschule-luzern/ueber-uns/personensuche/profile/?pid=823)
- and at the [Institute for Social Research, Frankfurt am Main (Germany)](https://www.ifs.uni-frankfurt.de/personendetails/kai-droege.html).
- My [YouTube channel "Qualitativ Forschen"](https://www.youtube.com/QualitativForschen)

Many other people have contributed to noScribe. My special thanks go to Philipp Schneider ([gernophil](https://github.com/gernophil)), who has long maintained the macOS versions, and Rudolf Siegel ([mutlusun](https://github.com/mutlusun)), who contributed many improvements.

## Donations

noScribe is free and always will be. But development causes real expenses, for example for this website, test hardware, or an Apple developer license. If you want to support the project:

[![ko-fi](/img/kofi.svg)](https://ko-fi.com/noscribe)

## Why the name "noScribe"?

The [Urban Dictionary](https://www.urbandictionary.com/define.php?term=Scribe) defines a *scribe* as "a person whose miserable existence has been reduced to academic misery and pain". I hope my software can make academic life a little less painful and miserable - hence "noScribe" :)

## Citation (APA style)

Dröge, K. (2026). *noScribe. AI-powered Audio Transcription* (Version XXX) [Computer software]. https://noscribe.de
