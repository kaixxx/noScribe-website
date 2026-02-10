---
title: "Advanced Options"
description: "CLI, configuration, custom models, and development contributions."
translationKey: "advanced-options"
weight: 30
---

# Advanced Options

### Scripting

Since version 0.7, noScribe has a command-line interface and can be integrated into your own scripts. `noScribe.exe --help` shows the available options. With `--no-gui`, the main window is suppressed and noScribe runs fully in command-line mode.

### Configuration

After the first start, the file `config.yml` is located in the user profile:
  - Windows: `C:\Users\<username>\AppData\Local\noScribe\noScribe\config.yml`
  - macOS: `~/Library/Application Support/noscribe/config.yml`
  - Linux: `~/.config/noScribe/config.yml`

There you can adjust the UI language and other options. Note: Only edit this file when noScribe is not running, otherwise your changes will be overwritten.

### Logs

In the same profile directory there is a `log` folder with detailed information about each transcript - useful for troubleshooting.

## Use Special Transcription Models

noScribe comes with two transcription models (precise/fast), both based on *Whisper V3 Turbo*. You can also use other Whisper models that are better tuned for specific languages.

**Installation:**

1. In noScribe under *Model*, open the list and select *Add AI models*. This opens the `whisper_models` folder in the noScribe config directory (paths above).
2. Create a *separate subfolder* for each model. The name of this folder will be the model name shown in noScribe.
3. Place all files belonging to the model in that folder (typically: `config.json`, `model.bin`, `preprocessor_config.json`, `tokenizer.json`, `vocabulary.json`).
4. The new model should now appear as an additional selection under *Models* in noScribe.

**Notes:**

- Only models in *Faster-Whisper* or *CTranslate2* format are supported. Models in the original OpenAI Whisper format can be [converted.](https://github.com/SYSTRAN/faster-whisper?tab=readme-ov-file#model-conversion)
- Some downloads include `ctranslate2_` prefixes - remove these (e.g., `ctranslate2_vocabulary.json` -> `vocabulary.json`).

**Models:**

- The **official Faster-Whisper repository** (15 models): https://huggingface.co/Systran This also includes the Whisper-v2 model, which was the default up to version 0.5 of noScribe and is still preferred by some, even though it is significantly slower. The English-only models (ending in ".en") are also interesting because they run noticeably faster.
- **A French-tuned version of Whisper V3**: https://huggingface.co/bofenghuang/whisper-large-v3-french/tree/main/ctranslate2 (If the downloaded files have the prefix "ctranslate2_", please remove it.)
- **A German-optimized version of Whisper V3** (my experience: only slight improvements in transcription quality, but less precision in pause detection and in identifying overlapping speech sequences): https://huggingface.co/aseifert/faster-whisper-large-v3-turbo-german/tree/main You also need the file `tokenizer.json` from the original Whisper V3 repository: https://huggingface.co/Systran/faster-whisper-large-v3/tree/main

You can find more models on [huggingface](https://huggingface.co/). Search for "faster-whisper" and the desired language (or just "whisper" to find models that can be converted).

I use this version of Whisper V3 Turbo as the "precise" model: https://huggingface.co/mobiuslabsgmbh/faster-whisper-large-v3-turbo

**If you find a good new model, please share it in this discussion: https://github.com/kaixxx/noScribe/discussions/132**.


## Contributing to Development

- noScribe is based on Python 3.13.
- The AI models (Whisper) are too large for GitHub. They must be downloaded separately if you want to run noScribe from source. See the notes in the `models` folder.
- Tests, bug reports, and pull requests are welcome. I try to respond quickly. If not, feel free to remind me politely. Please understand that I cannot accept every idea.

### Translations

The UI is translated into many languages. However, some of these translations were created by machine and may contain errors. I appreciate corrections.

The language files are in the `trans` folder. Changes should follow YAML conventions. Switching the UI language is done via the `locale` setting in `config.yml`.
