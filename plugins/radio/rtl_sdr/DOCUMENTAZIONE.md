# Documentazione Cartella: `plugins/radio/rtl_sdr`

## Scopo
Plugin radio basato su RTL-SDR.

## File
### `rtl_sdr.hpp`
- Introduzione: dichiarazione plugin radio RTL-SDR.
- Metodi/Funzioni: API freq/play/stop.
- Dipendenze interne: `include/plugins/radio_plugin.hpp`.

### `rtl_sdr.cpp`
- Introduzione: implementazione tuning e playback via RTL-SDR.
- Metodi/Funzioni: set frequenza, avvio/stop stream, gestione risorse device.
- Dipendenze interne: `rtl_sdr.hpp`, `src/app/pages/media.cpp`.

### `rtl_sdr.json`
- Introduzione: metadata plugin Qt.
- Metodi/Funzioni: n/a.
- Dipendenze interne: plugin loader.
