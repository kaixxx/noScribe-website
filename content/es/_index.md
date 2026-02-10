---
title: "noScribe – Transcripción gratuita de entrevistas con IA"
description: "Sitio oficial del software de transcripción de código abierto noScribe (GPL-3.0) – local, respetuoso con la privacidad, sin nube."
translationKey: "home"
bookToC: true
---

# noScribe – Transcripción gratuita de entrevistas con IA

Este es el sitio oficial del software de código abierto noScribe ([GitHub](https://github.com/kaixxx/noScribe)). noScribe es una aplicación de escritorio para transcribir entrevistas y otros datos de audio sensibles – respetuosa con la privacidad, sin nube, con modelos de IA locales de alta calidad.

{{% hint warning %}}
Advertencia: alguien está intentando vender servicios de transcripción de pago a través del dominio noscribe(punto)ai. No tengo nada que ver con eso. El verdadero noScribe es gratis y siempre lo será :)
{{% /hint %}}

## ¿Qué es noScribe?

- **Gratis y de código abierto** ([GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html))
- **Sin nube**, todo permanece en tu propio ordenador
- **Transcripciones de alta calidad** basadas en [Whisper de OpenAI](https://github.com/openai/whisper) y [Pyannote de Hervé Bredin](https://github.com/pyannote/pyannote-audio)
- **Reconocimiento de hablantes** y soporte para alrededor de **60 idiomas**
- disponible para **Windows, macOS y Linux**
- **Editor cómodo** para revisar y corregir transcripciones

Desarrollado originalmente para la investigación social cualitativa, noScribe ahora se utiliza en todos los ámbitos donde se manejan datos de audio especialmente sensibles: periodismo, medicina, empresas, administraciones y ONG. noScribe es recomendado por [universidades](https://guides.library.georgetown.edu/c.php?g=1201872&p=10177079), [plataformas de investigación](https://ai4culture.eu/resources/tools/172), la [revista alemana de informática c’t](https://www.heise.de/select/ct/2025/2/2433207582191637980) y en [publicaciones profesionales para periodistas](https://www.journalistin.at/singlenews/uid-968002/nie-wieder-abtippen-profitipps-zum-transkribieren-mit-ki/).

{{< img src="img/noScribe_main_window.png" alt="Ventana principal de noScribe" loading="eager" fetchpriority="high" >}}
(La captura de pantalla muestra una [entrevista con la socióloga rusa exiliada Natalia Savelyeva](https://www.youtube.com/watch?v=vOwajAbvPzQ&t=2018s) que realicé en mayo de 2022).

## ¿Cómo uso noScribe?

**Entrada y salida**

noScribe puede procesar casi cualquier formato de audio o vídeo. De forma predeterminada crea un archivo HTML que puede abrirse directamente en MS Word, con números de línea y formato. También puede producir texto sin formato o un archivo de subtítulos en formato WebVTT. WebVTT está pensado principalmente para su procesamiento posterior con [EXMARaLDA](https://exmaralda.org/), un software especializado para sistemas de transcripción complejos.

**Procesamiento**

Como la transcripción se realiza completamente en tu propio ordenador, requiere tiempo: una hora de entrevista tarda aproximadamente de 1 a 3 horas de transcripción, en equipos antiguos incluso más. Pero puedes poner varias tareas en cola, por ejemplo durante la noche. Una tarjeta gráfica NVIDIA (CUDA) puede acelerar considerablemente la transcripción. Como la descarga también incluye los modelos de IA, el instalador es bastante grande (alrededor de 3 GB).

**Funciones especiales**

noScribe incluye varias funciones específicas para la investigación social cualitativa: se pueden marcar pausas o solapamientos de habla y puedes insertar marcas de tiempo ([00:01:38]). También puedes decidir si deben transcribirse muletillas y disfluencias como «eh» o no.

**Idiomas y corrección**

El modelo de IA de noScribe admite muchos idiomas y también maneja bien los dialectos. En general, una buena grabación con el menor ruido de fondo posible ahorra mucho tiempo en el post-procesamiento. Pero la revisión y la corrección siempre son necesarias. Para ello se incluye un editor dedicado que permite alinear audio y texto fácilmente.

{{% hint info %}}
**Más información:**
- La [guía de uso]({{< relref "docs/usage.md" >}}) y las [FAQ]({{< relref "docs/faq.md" >}}) de noScribe.
- [Vídeo de reseña y tutorial (externo)](https://www.youtube.com/watch?v=d0iwEVdW3qg)
{{% /hint %}}

## ¿Quién está detrás de noScribe?

{{< img src="img/kd.png" alt="Kai Dröge" style="width: 8em; height: auto;" >}}

**Dr. Kai Dröge**</br>Sociólogo con formación en informática, investigador y docente

- Mi página en la [Universidad de Ciencias Aplicadas y Artes de Lucerna (Suiza)](https://www.hslu.ch/de-ch/hochschule-luzern/ueber-uns/personensuche/profile/?pid=823)
- y en el [Instituto de Investigación Social, Fráncfort del Meno (Alemania)](https://www.ifs.uni-frankfurt.de/personendetails/kai-droege.html).
- Mi [canal de YouTube «Qualitativ Forschen»](https://www.youtube.com/QualitativForschen) (principalmente en alemán)

Muchas otras personas han contribuido a noScribe. Mis agradecimientos especiales para Philipp Schneider ([gernophil](https://github.com/gernophil)), que desde hace tiempo mantiene las versiones de macOS, y Rudolf Siegel ([mutlusun](https://github.com/mutlusun)), que aportó muchas mejoras.

## Donaciones

noScribe es gratuito y siempre lo será. Pero el desarrollo ocasiona gastos reales, por ejemplo para este sitio web, hardware de pruebas o una licencia de desarrollador de Apple. Si quieres apoyar el proyecto:

[![ko-fi](/img/kofi.svg)](https://ko-fi.com/noscribe)

## ¿Por qué el nombre «noScribe»?

El [Urban Dictionary](https://www.urbandictionary.com/define.php?term=Scribe) define un *scribe* como «una persona cuya existencia miserable ha sido reducida al barro académico y al dolor». Espero que este software haga nuestra vida académica un poco menos dolorosa y miserable; de ahí el nombre noScribe :)

## Cita (estilo APA)

Dröge, K. (2026). *noScribe. AI-powered Audio Transcription* (Version XXX) [Computer software]. https://noscribe.de
