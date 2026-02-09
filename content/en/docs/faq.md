---
title: "FAQ"
description: "Common questions about noScribe, privacy, and system requirements."
weight: 40
draft: false
---

# FAQ

### Can I trust that noScribe does not send audio data or transcripts to the outside?

Yes. noScribe was designed from the start as a purely local desktop app. That was the central motivation for building it at all. If you want to test this, temporarily disable your network connection (turn off Wi-Fi, unplug the LAN cable). noScribe will work exactly as before.

### Is noScribe a GDPR-compliant transcription solution?

Yes, as far as I can tell. Note, however, that I am not a lawyer. But purely local processing of sensitive data is considered as gold standard for privacy - at least if you protect your own computer well against unauthorized access.

### Do I need a particularly powerful computer for local transcription?

No, not necessarily. Performance does have a big impact on transcription time. But if needed, you can simply queue multiple jobs in the evening and let transcription run overnight.

### What about older computers?

The biggest issue is that older operating systems are no longer compatible: noScribe still runs on Windows 10, but Windows 7/8 are no longer supported. On Mac you need at least macOS 14 (Sonoma). Also, older Macs with Intel processors (before the M1) are no longer supported in the latest versions of noScribe. This has to do with software libraries we need.

### How good is Linux support?

Unfortunately this depends heavily on the distribution and on whether competent people have tested noScribe on that distro and fixed issues. If you run into problems, it is worth checking the ["Issues" on GitHub](https://github.com/kaixxx/noScribe/issues), where you will often find discussions with good tips.

### Do I need a special audio recorder or microphone to record an interview?

No. If the recording is only for transcription, you do not need high-end gear. A smartphone is often sufficient, or a sturdy mid-range digital recorder. Much more important than the device is good recording conditions: close windows, keep the microphone close to the person being interviewed, and minimize background noise.

### Which file formats are supported?

noScribe uses the free software **FFmpeg** for audio extraction, which supports almost every video and audio format ever invented in the history of computers. More information here ("decoders" are relevant): https://ffmpeg.org/ffmpeg-codecs.html

### How do I process the finished transcripts further?

Use the noScribe Editor to review and correct against the audio. Add non-verbal utterances (laughter, etc.) if needed. You can open the final HTML file directly in MS Word or LibreOffice, or import it into common QDA programs such as [MAXQDA](https://www.maxqda.com) or [QualCoder](https://qualcoder-org.github.io/). The noScribe Editor can also save plain text (.txt) or WebVTT subtitles (.vtt) (File > Save As). For GAT2 transcripts I recommend exporting as WebVTT and processing further in [EXMARaLDA](https://exmaralda.org/).

### Can I use noScribe commercially?

Yes, no problem. There are no restrictions at all on how you use the transcripts you create. If you want to change the software itself, you must comply with the GPL-3.0 license terms: https://github.com/kaixxx/noScribe/blob/main/LICENSE.txt.

### Where can I get support if I run into problems?

The ["Issues" on GitHub](https://github.com/kaixxx/noScribe/issues) are the best place to start, me and other users can help out there. In particularly urgent cases you can also email me directly (kai.droege{at}hslu.ch).
