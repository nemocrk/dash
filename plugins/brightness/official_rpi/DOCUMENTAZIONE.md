# Documentazione Cartella: `plugins/brightness/official_rpi`

## Scopo
Plugin brightness per Raspberry Pi ufficiale.

## File
### `official_rpi.hpp`
- Introduzione: dichiarazione plugin hardware RPi.
- Metodi/Funzioni: API brightness specifica backend RPi.
- Dipendenze interne: `include/plugins/brightness_plugin.hpp`.

### `official_rpi.cpp`
- Introduzione: implementa lettura/scrittura luminosità via interfacce sistema RPi.
- Metodi/Funzioni: init backend, apply brightness, handling errori IO.
- Dipendenze interne: `official_rpi.hpp`, host app.

### `official_rpi.json`
- Introduzione: metadata plugin Qt.
- Metodi/Funzioni: n/a.
- Dipendenze interne: plugin loader.
