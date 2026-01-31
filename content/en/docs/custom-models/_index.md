---
title: "Custom Models (Whisper)"
description: "Using custom Whisper models in noScribe (short summary)."
weight: 25
---

# Custom Models (Whisper)

This page summarizes the guide for adding custom Whisper models. For the latest details, see the source below.

## Quick steps

1. In noScribe, open **Model > Add AI model...** to open the model folder.
2. Create **one subfolder per model**. The folder name becomes the model name in the UI.
3. **Only Faster-Whisper/CTranslate2 models** are supported. OpenAI-format models must be converted first.
4. Put the model files in the subfolder (typically: `config.json`, `model.bin`, `preprocessor_config.json`, `tokenizer.json`, `vocabulary.json`). The model should then appear in noScribe.

## Paths

- **Windows:** `C:\Users\<username>\AppData\Local\noScribe\noScribe\whisper_models\`
- **macOS:** `~/Library/Application Support/noscribe/whisper_models/`
- **Linux:** TODO: add Linux path.

## Model sources

- Faster-Whisper models (Systran), including Whisper v2
- Language-specific models (e.g., French or German)
- If filenames include a `ctranslate2_` prefix, remove it (e.g., `ctranslate2_vocabulary.json` → `vocabulary.json`).
- The German model additionally requires `tokenizer.json` from the original Whisper v3 repository.

## Source

https://github.com/kaixxx/noScribe/wiki/Add-custom-Whisper-models-for-transcription
