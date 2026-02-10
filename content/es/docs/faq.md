---
title: "FAQ"
description: "Preguntas comunes sobre noScribe, privacidad y requisitos del sistema."
translationKey: "faq"
weight: 40
draft: false
---

# FAQ

### ¿Puedo confiar en que noScribe no envía audio ni transcripciones al exterior?

Sí. noScribe fue diseñado desde el principio como una aplicación de escritorio puramente local. Esa fue la motivación central para construirlo. Si quieres comprobarlo, desactiva temporalmente tu conexión de red (apaga el Wi-Fi, desconecta el cable LAN). noScribe funcionará exactamente igual.

### ¿Es noScribe una solución de transcripción conforme al RGPD?

Sí, en la medida de lo que puedo juzgar. No obstante, no soy abogado. Pero el procesamiento local de datos sensibles se considera el estándar de oro en privacidad, siempre que protejas bien tu ordenador contra accesos no autorizados.

### ¿Necesito un ordenador especialmente potente para la transcripción local?

No necesariamente. El rendimiento tiene un gran impacto en el tiempo de transcripción. Pero si es necesario, puedes poner varias tareas en cola por la noche y dejar que la transcripción se ejecute durante la madrugada.

### ¿Qué pasa con los ordenadores más antiguos?

El mayor problema es que los sistemas operativos antiguos ya no son compatibles: noScribe todavía funciona en Windows 10, pero Windows 7/8 ya no se admite. En Mac necesitas al menos macOS 14 (Sonoma). Además, los Macs antiguos con procesadores Intel (antes del M1) ya no se admiten en las versiones más recientes de noScribe. Esto se debe a bibliotecas de software que necesitamos.

### ¿Qué tal es el soporte de Linux?

Desafortunadamente esto depende mucho de la distribución y de si personas competentes han probado noScribe en esa distro y han corregido problemas. Si te encuentras con dificultades, vale la pena revisar los [«Issues» en GitHub](https://github.com/kaixxx/noScribe/issues), donde a menudo encontrarás discusiones con buenos consejos.

### ¿Necesito una grabadora especial o un micrófono particular para grabar una entrevista?

No. Si la grabación es solo para transcripción, no necesitas equipo de gama alta. Un smartphone suele ser suficiente, o una grabadora digital robusta de gama media. Mucho más importante que el dispositivo son buenas condiciones de grabación: cierra ventanas, mantén el micrófono cerca de la persona entrevistada y minimiza el ruido de fondo.

### ¿Qué formatos de archivo se admiten?

noScribe usa el software libre **FFmpeg** para la extracción de audio, que admite casi todos los formatos de vídeo y audio jamás inventados en la historia de los ordenadores. Más información aquí («decoders» son relevantes): https://ffmpeg.org/ffmpeg-codecs.html

### ¿Cómo proceso después las transcripciones terminadas?

Usa el noScribe Editor para revisar y corregir frente al audio. Añade expresiones no verbales (risas, etc.) si es necesario. Puedes abrir el archivo HTML final directamente en MS Word o LibreOffice, o importarlo en programas de análisis cualitativo como [MAXQDA](https://www.maxqda.com) o [QualCoder](https://qualcoder-org.github.io/). El noScribe Editor también puede guardar texto plano (.txt) o subtítulos WebVTT (.vtt) (Archivo > Guardar como). Para transcripciones GAT2 recomiendo exportar como WebVTT y continuar el procesamiento en [EXMARaLDA](https://exmaralda.org/).

### ¿Puedo usar noScribe comercialmente?

Sí, sin problema. No hay restricciones sobre cómo uses las transcripciones que crees. Una [donación](https://ko-fi.com/noscribe) sería apreciada, pero no es obligatoria. Si quieres modificar el software en sí, debes cumplir los términos de la licencia GPL-3.0: https://github.com/kaixxx/noScribe/blob/main/LICENSE.txt.

### ¿Dónde puedo obtener soporte si tengo problemas?

Los [«Issues» en GitHub](https://github.com/kaixxx/noScribe/issues) son el mejor lugar para empezar; yo y otros usuarios podemos ayudar allí. En casos particularmente urgentes, también puedes escribirme directamente (kai.droege{at}hslu.ch).
