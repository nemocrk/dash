# Documentazione Cartella: `plugins/brightness/x`

## Scopo
Plugin brightness per ambienti X11.

## File
### `x.hpp`
- Introduzione: dichiarazione plugin brightness backend X.
- Metodi/Funzioni: API controllo luminosità display su X.
- Dipendenze interne: `include/plugins/brightness_plugin.hpp`.

### `x.cpp`
- Introduzione: implementazione comandi brightness su ambiente X.
- Metodi/Funzioni: discovery device/output, set/get brightness.
- Dipendenze interne: `x.hpp`, host app.

### `x.json`
- Introduzione: metadata plugin Qt.
- Metodi/Funzioni: n/a.
- Dipendenze interne: plugin loader.
