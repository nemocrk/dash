# Documentazione Cartella: `patches`

## Scopo
Patch locali applicate a dipendenze o toolchain.

## File
### `aasdk_openssl-fips-fix.patch`
- Introduzione: patch compatibilità/security su aasdk.
- Metodi/Funzioni: diff sorgenti.
- Dipendenze interne: `third_party/aasdk`.

### `greenline_fix.patch`
- Introduzione: patch fix funzionale/visivo specifico progetto.
- Metodi/Funzioni: diff sorgenti.
- Dipendenze interne: target vari del repo.

### `qt-gstreamer-1.18.patch`
- Introduzione: adattamento Qt/GStreamer per versione 1.18.
- Metodi/Funzioni: diff sorgenti.
- Dipendenze interne: integrazione camera/media.

### `qt-gstreamer_atomic-load.patch`
- Introduzione: fix sincronizzazione/atomic load in integrazione Qt-GStreamer.
- Metodi/Funzioni: diff sorgenti.
- Dipendenze interne: stack media/camera.
