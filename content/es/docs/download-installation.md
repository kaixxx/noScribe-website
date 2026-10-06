---
title: "Descarga e instalación"
description: "Enlaces de descarga e instrucciones de instalación para Windows, macOS y Linux."
translationKey: "download-installation"
weight: 10
---

# Descarga e instalación

**Versión actual:** 0.8

Todos los archivos de instalación están alojados en SWITCHdrive.ch, una plataforma segura de intercambio de datos para universidades suizas.
El código fuente está disponible en [GitHub](https://github.com/kaixxx/noScribe), también para el [noScribe Editor](https://github.com/kaixxx/noScribeEditor).

{{< button href="#windows" >}}Instalación Windows{{< /button >}}
{{< button href="#macos" >}}Instalación macOS{{< /button >}}
{{< button href="#linux" >}}Instalación Linux{{< /button >}}

## Windows

### Descarga

Hay dos versiones disponibles. La mayoría de usuarios debería elegir la versión estándar. Si tienes una tarjeta gráfica NVIDIA (RTX 20XX o más reciente) con al menos 6 GB de VRAM, puedes beneficiarte de la aceleración CUDA, que puede reducir drásticamente el tiempo de transcripción.

- **Versión estándar (sin GPU NVIDIA):**
  https://drive.switch.ch/index.php/s/KLcsdKDygXaQdXp
- **Versión CUDA (GPU NVIDIA, al menos 6 GB de VRAM):**
  https://drive.switch.ch/index.php/s/sEd9ks6yCqQ3xEr

  **Requisitos de CUDA:** controlador NVIDIA versión 570.65 o superior, además del kit de desarrollo CUDA:
  https://developer.nvidia.com/cuda-downloads?target_os=Windows

### Instalación

1. Inicia el instalador (puede tardar unos minutos).
2. Si Windows advierte de un «editor desconocido», elige «Más información > Ejecutar de todas formas». Lamentablemente, esta advertencia es difícil de evitar en software gratuito.
3. Si quieres instalar noScribe de forma silenciosa en varios equipos: inicia el instalador con `/S`.

### Problemas conocidos (Windows)

- Las tarjetas RTX/GTX-1xxx a menudo ya no son compatibles con CUDA; en ese caso usa la versión estándar.
- Si ves el error «Transcription worker exited unexpectedly (code 3221226505)», puede ayudar forzar el uso de CPU:
  1. Cierra noScribe.
  2. Abre el archivo `C:\Users\<USERNAME>\AppData\Local\noScribe\noScribe\config.yml`.
  3. Ajusta `force_whisper_cpu` a `'True'` (mantén las comillas).
  4. Reinicia noScribe.

## macOS

### Apple Silicon (serie M)

- noScribe necesita al menos macOS 14 (Sonoma).
- Descarga:
  https://drive.switch.ch/index.php/s/otF4MedAW6ymY4R
- Abre el DMG y arrastra **noScribe** y **noScribeEdit** a la carpeta Aplicaciones.
- Inicia las apps desde la carpeta Aplicaciones.

### Mac Intel

- Debido a incompatibilidades en los paquetes de los que depende noScribe, las versiones más recientes ya no están disponibles para Mac Intel.
- La última versión con una compilación oficial para Intel es la 0.6: https://drive.switch.ch/index.php/s/YWE6RQJPbJ9QNHF
- Versiones anteriores:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j

Como no podemos firmar los paquetes para Mac Intel, verás una advertencia indicando que noScribe y noScribeEdit provienen de desarrolladores no identificados. Debes autorizar manualmente la ejecución de ambos programas si Gatekeeper está activado. Sigue estos pasos:

- Haz doble clic en el archivo DMG descargado.
- Arrastra noScribe y noScribeEdit al enlace de tu carpeta Aplicaciones (etiquetado «drag both here to install»).
- Inicia noScribe haciendo doble clic en la app en tu carpeta Aplicaciones. Verás un error indicando que noScribe proviene de un desarrollador no identificado. Haz lo mismo con el noScribe Editor.
- Ve a Ajustes -> Privacidad y seguridad -> desplázate hacia abajo hasta ver un mensaje de que noScribe fue bloqueado y haz clic en «Abrir de todas formas». Haz lo mismo con el noScribe Editor.
- A partir de entonces, ambos programas deberían iniciarse sin problemas.

## Linux

### Versión ejecutable

- Aún no hay binarios de Linux disponibles para la versión 0.8. Usa la versión 0.7 o sigue las instrucciones de instalación manual que aparecen más abajo.
- Descarga de la versión 0.7 (CUDA o CPU):
  https://drive.switch.ch/index.php/s/GCmryRkjpeX8Yxp
- Si la 0.7 no funciona, usa la versión 0.6.2:
  https://drive.switch.ch/index.php/s/EIVup04qkSHb54j

Instalación:

1. Descomprime el archivo:
   `tar -xzvf noScribe_0.7.0_cpu_linux_amd64.tar.gz`
   o
   `tar -xzvf noScribe_0.7.0_cuda_linux_amd64.tar.gz`
2. Entra en la carpeta y ejecuta:
   `./noScribe`
3. Opcional: ajusta `noScribe.desktop` y `noScribeEdit.desktop` (ruta en `Exec=`/`Icon=`).

### Instalación manual desde el código fuente

Debate y detalles:
https://github.com/kaixxx/noScribe/discussions/83

Resumen rápido:

```bash
git clone https://github.com/kaixxx/noScribe.git
cd noScribe

# noScribeEdit
rm -rf noScribeEdit/
git clone https://github.com/kaixxx/noScribeEditor.git noScribeEdit

# Python environment
python3 -m venv venv
source venv/bin/activate

# Dependencies
pip install -r environments/requirements_linux.txt
pip install -r noScribeEdit/environments/requirements.txt

# Asegurate de que Git LFS (Large File Support) este instalado. Es necesario para descargar los modelos desde Hugging Face.
# Debian/Ubuntu:
sudo apt install git-lfs
# Fedora:
# sudo dnf install git-lfs
# Arch:
# sudo pacman -S git-lfs
# openSUSE:
# sudo zypper install git-lfs
git lfs install

# Models
rm -rf models/fast
rm -rf models/precise
git clone https://huggingface.co/mukowaty/faster-whisper-int8 models/fast
git clone https://huggingface.co/mobiuslabsgmbh/faster-whisper-large-v3-turbo models/precise

# Start
python3 ./noScribe.py
```

## Versiones anteriores

https://drive.switch.ch/index.php/s/EIVup04qkSHb54j
