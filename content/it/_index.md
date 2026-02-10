---
title: "noScribe - Trascrizione gratuita di interviste con IA"
description: "Sito ufficiale del software di trascrizione open-source noScribe (GPL-3.0) - locale, rispettoso della privacy, senza cloud."
translationKey: "home"
bookToC: true
---

# noScribe - Trascrizione gratuita di interviste con IA

Questo è il sito ufficiale del software open source noScribe ([GitHub](https://github.com/kaixxx/noScribe)). noScribe è un'app desktop per trascrivere interviste e altri dati audio sensibili - rispettoso della privacy, senza cloud, con modelli di IA locali di alta qualità.

{{% hint warning %}}
Avviso: qualcuno sta cercando di vendere servizi di trascrizione a pagamento tramite il dominio noscribe(punto)ai. Non ho nulla a che fare con questo. Il vero noScribe è gratuito e lo resterà sempre :)
{{% /hint %}}

## Che cos'è noScribe?

- **Gratuito e open source** ([GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html))
- **Senza cloud**, tutto resta sul tuo computer
- **Trascrizioni di alta qualità** basate su [Whisper di OpenAI](https://github.com/openai/whisper) e [Pyannote di Hervé Bredin](https://github.com/pyannote/pyannote-audio)
- **Riconoscimento dei parlanti** e supporto per circa **60 lingue**
- disponibile per **Windows, macOS e Linux**
- **Editor comodo** per rivedere e correggere le trascrizioni

Originariamente sviluppato per la ricerca sociale qualitativa, noScribe oggi è usato ovunque si gestiscano dati audio particolarmente sensibili - nel giornalismo, nella medicina, nelle aziende, nelle amministrazioni e nelle ONG. noScribe è raccomandato da [università](https://guides.library.georgetown.edu/c.php?g=1201872&p=10177079), [piattaforme di ricerca](https://ai4culture.eu/resources/tools/172), dalla [rivista informatica tedesca c't](https://www.heise.de/select/ct/2025/2/2433207582191637980) e in [pubblicazioni professionali per giornalisti](https://www.journalistin.at/singlenews/uid-968002/nie-wieder-abtippen-profitipps-zum-transkribieren-mit-ki/).

{{< img src="img/noScribe_main_window.png" alt="Finestra principale di noScribe" loading="eager" fetchpriority="high" >}}
(Lo screenshot mostra un'[intervista con la sociologa russa in esilio Natalia Savelyeva](https://www.youtube.com/watch?v=vOwajAbvPzQ&t=2018s) che ho condotto nel maggio 2022.)

## Come uso noScribe?

**Input e output**

noScribe può elaborare quasi qualsiasi formato audio o video. Per impostazione predefinita crea un file HTML che può essere aperto direttamente in MS Word, con numeri di riga e formattazione. Può anche produrre testo semplice o un file di sottotitoli in formato WebVTT. WebVTT è destinato principalmente all'elaborazione successiva con [EXMARaLDA](https://exmaralda.org/), software specializzato per sistemi di trascrizione complessi.

**Elaborazione**

Poiché la trascrizione avviene interamente in locale sul tuo computer, richiede tempo: un'ora di intervista richiede circa 1-3 ore di trascrizione, sui computer più vecchi anche di più. Ma puoi mettere più lavori in coda, ad esempio durante la notte. Una scheda grafica NVIDIA (CUDA) può accelerare notevolmente la trascrizione. Poiché il download include anche i modelli di IA, l'installer è abbastanza grande (circa 3 GB).

**Funzioni speciali**

noScribe include diverse funzioni specifiche per la ricerca sociale qualitativa: le pause o il parlato sovrapposto possono essere contrassegnati e puoi inserire timestamp ([00:01:38]). Puoi anche decidere se le parole riempitive e le disfluenze come "eh" devono essere trascritte o meno.

**Lingue e correzione**

Il modello di IA dietro noScribe supporta molte lingue e gestisce abbastanza bene anche i dialetti. In generale, una buona registrazione con il minor rumore di fondo possibile fa risparmiare molto tempo nel post‑processing. Ma la revisione e la correzione sono sempre necessarie. Per questo è incluso un editor dedicato che consente di allineare facilmente audio e testo.

{{% hint info %}}
**Maggiori informazioni:**
- La [guida all'uso]({{< relref "docs/usage.md" >}}) e le [FAQ]({{< relref "docs/faq.md" >}}) di noScribe.
- [Video recensione e tutorial (esterno)](https://www.youtube.com/watch?v=d0iwEVdW3qg)
{{% /hint %}}

## Chi c'è dietro noScribe?

{{< img src="img/kd.png" alt="Kai Dröge" style="width: 8em; height: auto;" >}}

**Dr. Kai Dröge**</br>Sociologo con background informatico, ricercatore e docente

- La mia pagina alla [Scuola universitaria professionale e delle arti di Lucerna (Svizzera)](https://www.hslu.ch/de-ch/hochschule-luzern/ueber-uns/personensuche/profile/?pid=823)
- e all'[Istituto di ricerca sociale, Francoforte sul Meno (Germania)](https://www.ifs.uni-frankfurt.de/personendetails/kai-droege.html).
- Il mio [canale YouTube "Qualitativ Forschen"](https://www.youtube.com/QualitativForschen) (principalmente in tedesco)

Molte altre persone hanno contribuito a noScribe. Un ringraziamento speciale a Philipp Schneider ([gernophil](https://github.com/gernophil)), che da tempo mantiene le versioni macOS, e a Rudolf Siegel ([mutlusun](https://github.com/mutlusun)), che ha apportato molti miglioramenti.

## Donazioni

noScribe è gratuito e lo sarà sempre. Ma lo sviluppo comporta spese reali, ad esempio per questo sito web, hardware di test o una licenza sviluppatore Apple. Se vuoi supportare il progetto:

[![ko-fi](/img/kofi.svg)](https://ko-fi.com/noscribe)

## Perché il nome "noScribe"?

L'[Urban Dictionary](https://www.urbandictionary.com/define.php?term=Scribe) definisce uno *scribe* come "una persona la cui misera esistenza è stata ridotta al fango accademico e al dolore". Spero che questo software renda la nostra vita accademica un po' meno dolorosa e misera - da qui il nome noScribe :)

## Citazione (stile APA)

Dröge, K. (2026). *noScribe. AI-powered Audio Transcription* (Version XXX) [Computer software]. https://noscribe.de
