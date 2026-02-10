---
title: "Opciones avanzadas"
description: "CLI, configuración, modelos personalizados y contribuciones al desarrollo."
translationKey: "advanced-options"
weight: 30
---

# Opciones avanzadas

### Scripting

Desde la versión 0.7, noScribe tiene una interfaz de línea de comandos y puede integrarse en tus propios scripts. `noScribe.exe --help` muestra las opciones disponibles. Con `--no-gui`, la ventana principal se oculta y noScribe funciona completamente en modo de línea de comandos.

### Configuración

Después del primer inicio, el archivo `config.yml` se encuentra en el perfil del usuario:
  - Windows: `C:\Users\<username>\AppData\Local\noScribe\noScribe\config.yml`
  - macOS: `~/Library/Application Support/noscribe/config.yml`
  - Linux: `~/.config/noScribe/config.yml`

Allí puedes ajustar el idioma de la interfaz y otras opciones. Nota: edita este archivo solo cuando noScribe no esté en ejecución, de lo contrario tus cambios se sobrescribirán.

### Registros

En el mismo directorio del perfil hay una carpeta `log` con información detallada sobre cada transcripción, útil para el diagnóstico de problemas.

## Usar modelos de transcripción especiales {#use-special-transcription-models}

noScribe incluye dos modelos de transcripción (precise/fast), ambos basados en *Whisper V3 Turbo*. También puedes usar otros modelos de Whisper que estén mejor ajustados para idiomas específicos.

**Instalación:**

1. En noScribe, en *Model*, abre la lista y selecciona *Add AI models*. Esto abre la carpeta `whisper_models` en el directorio de configuración de noScribe (rutas arriba).
2. Crea una *subcarpeta separada* para cada modelo. El nombre de esta carpeta será el nombre del modelo que se mostrará en noScribe.
3. Coloca todos los archivos del modelo en esa carpeta (normalmente: `config.json`, `model.bin`, `preprocessor_config.json`, `tokenizer.json`, `vocabulary.json`).
4. El nuevo modelo debería aparecer ahora como una opción adicional en *Models* en noScribe.

**Notas:**

- Solo se admiten modelos en formato *Faster-Whisper* o *CTranslate2*. Los modelos en el formato original de OpenAI Whisper pueden [convertirse.](https://github.com/SYSTRAN/faster-whisper?tab=readme-ov-file#model-conversion)
- Algunas descargas incluyen prefijos `ctranslate2_` – elimínalos (por ejemplo, `ctranslate2_vocabulary.json` -> `vocabulary.json`).

**Modelos:**

- El **repositorio oficial de Faster-Whisper** (15 modelos): https://huggingface.co/Systran Esto también incluye el modelo Whisper-v2, que fue el predeterminado hasta la versión 0.5 de noScribe y que algunos siguen prefiriendo, aunque es significativamente más lento. Los modelos solo en inglés (terminados en «.en») también son interesantes porque funcionan notablemente más rápido.
- **Una versión de Whisper V3 ajustada al francés**: https://huggingface.co/bofenghuang/whisper-large-v3-french/tree/main/ctranslate2 (Si los archivos descargados tienen el prefijo «ctranslate2_», por favor elimínalo.)
- **Una versión de Whisper V3 optimizada para alemán** (mi experiencia: solo ligeras mejoras en la calidad de transcripción, pero menor precisión en la detección de pausas y en la identificación de solapamientos de habla): https://huggingface.co/aseifert/faster-whisper-large-v3-turbo-german/tree/main También necesitas el archivo `tokenizer.json` del repositorio original de Whisper V3: https://huggingface.co/Systran/faster-whisper-large-v3/tree/main

Puedes encontrar más modelos en [huggingface](https://huggingface.co/). Busca "faster-whisper" y el idioma deseado (o simplemente "whisper" para encontrar modelos que se puedan convertir).

Uso esta versión de Whisper V3 Turbo como modelo "precise": https://huggingface.co/mobiuslabsgmbh/faster-whisper-large-v3-turbo

**Si encuentras un buen modelo nuevo, por favor compártelo en esta discusión: https://github.com/kaixxx/noScribe/discussions/132**.

## Contribuir al desarrollo

- noScribe está basado en Python 3.13.
- Los modelos de IA (Whisper) son demasiado grandes para GitHub. Deben descargarse por separado si quieres ejecutar noScribe desde el código fuente. Consulta las notas en la carpeta `models`.
- Se agradecen las pruebas, los informes de errores y los pull requests. Intento responder rápidamente. Si no, no dudes en recordármelo con amabilidad. Por favor, entiende que no puedo aceptar todas las ideas.

### Traducciones

La interfaz está traducida a muchos idiomas. Sin embargo, algunas traducciones se hicieron automáticamente y pueden contener errores. Aprecio las correcciones.

Los archivos de idioma están en la carpeta `trans`. Los cambios deben seguir las convenciones de YAML. El cambio de idioma de la interfaz se realiza mediante la configuración `locale` en `config.yml`.
