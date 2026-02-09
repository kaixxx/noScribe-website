---
title: "FAQ"
description: "Häufige Fragen zu noScribe, Datenschutz und Systemvoraussetzungen."
weight: 40
draft: false
---

# FAQ

### Kann ich mich darauf verlassen, dass noScribe keine Audiodaten oder Transkripte nach außen sendet?

Ja. NoScribe war von Anfang an als rein lokale Desktop-App konzipiert. Das war die zentrale Motivation, überhaupt damit anzufangen. Wenn Sie dies testen wollen, deaktivieren Sie probeweise die Netzwerkverbindung (WLAN aus, LAN-Kabel entfernen). NoScribe wird genauso funktionieren wie zuvor.

### Ist noScribe eine DSGVO-konforme Transkriptionslösung?

Ja, soweit ich das als Nicht-Jurist beurteilen kann. Die rein lokale Verarbeitung von sensiblen Daten gilt als Goldstandard des Datenschutzes - zumindest, wenn man den eigenen Rechner gut gegen unbefugten Zugriff sichert. 

### Brauche ich einen besonders leistungsfähigen Computer für die lokale Transkription?

Nein, nicht unbedingt. Zwar hat die Leistungsfähigkeit des Rechners einen großen Einfluss auf die Transkriptionsdauer. Aber zur Not kann man am Abend einfach mehrere Aufträge in die Warteschlange stellen und die Transkription über Nacht laufen lassen. 

### Was ist mit älteren Computern?

Das größte Problem ist, dass ältere Betriebssysteme nicht mehr kompatibel sind: noScribe läuft zwar auch unter Windows 10, aber Windows 7/8 wird nicht mehr unterstützt. Auf dem Mac braucht es mindestens macOS 14 (Sonoma). Außerdem werden die alten Macs mit Intel-Prozessoren (vor dem M1) in den neuesten Versionen von noScribe nicht mehr unterstützt. Dies hat mit Softwarebibliotheken zu tun, die wir benötigen.  

### Wie gut ist die Linux-Unterstützung?

Das hängt leider sehr von der Distribution ab und davon, ob kompetente Leute noScribe auf dieser Distribution getestet und Probleme ausgemerzt haben. Bei Schwierigkeiten lohnt sich ein Blick in die ["Issues" auf GitHub](https://github.com/kaixxx/noScribe/issues), dort finden sich oft Diskussionen mit guten Tipps.

### Brauche ich für die Aufnahme eines Interviews ein spezielles Gerät oder Mikrofon?

Nein, wenn die Audioaufnahme nur zur Transkription dient, braucht man kein High-End-Technik. Ein Smartphone reicht oft schon aus, oder man verwendet ein robustes digitales Aufnahmegerät aus der mittleren Preisklasse. Viel wichtiger als das Gerät ist es, auf gute Aufnahmebedingungen zu achten: Fenster schließen, Mikrofon nah bei der befragten Person, möglichst wenig Nebengeräusche. 

### Welche Dateiformate werden unterstützt?

NoScribe nutzt die freie Software **FFmpeg** für die Audioextraktion, die so ziemlich jedes Video- und Audioformat unterstützt, das in der Geschichte des Computers je erfunden wurde. Mehr Informationen hier ("decoders" sind relevant): https://ffmpeg.org/ffmpeg-codecs.html 

### Wie verarbeite ich die fertigen Transkripte weiter?

Nutzen Sie den noScribe Editor zur Kontrolle und Korrektur anhand des Audio. Ergänzen Sie ggf. nonverbale Äußerungen (Lachen, etc.). Die fertige HTML-Datei können Sie direkt in MS Word oder LibreOffice öffnen, oder in gängige QDA-Programme wie [MAXQDA](https://www.maxqda.com) oder [QualCoder](https://qualcoder-org.github.io/) importieren. Der noScribe Editor kann auch reinen Text (.txt) oder WebVTT (Untertitel, .vtt) abspeichern (File > Save As). Für GAT2-Transkripte empfehle ich die Ausgabe als WebVTT und die Weiterverarbeitung in [EXMARaLDA](https://exmaralda.org/).

### Kann ich noScribe auch kommerziell nutzen?

Ja, kein Problem. Die Verwendung der erstellten Transkripte unterliegt keinerlei Einschränkung. Über eine [Spende](https://ko-fi.com/noscribe) freue ich mich natürlich. Wenn Sie die Software selbst weiterentwickeln wollen, müssen Sie die die Lizenzbedingungen der GPL-3.0 beachten: https://github.com/kaixxx/noScribe/blob/main/LICENSE.txt.

### Wo bekomme ich Unterstützung bei Problemen?

Die ["Issues" auf GitHub](https://github.com/kaixxx/noScribe/issues) sind der beste Ort, dort helfen oft auch andere Nutzende aus. In besonders dringenden Fällen können Sie mir auch eine E-Mail schreiben (kai.droege{at}hslu.ch).
