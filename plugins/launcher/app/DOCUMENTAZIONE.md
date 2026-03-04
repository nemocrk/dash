# Documentazione Cartella: `plugins/launcher/app`

## Scopo
Plugin launcher di esempio che fornisce tab applicative.

## File
### `app.hpp`
- Introduzione: dichiarazione plugin launcher `app`.
- Metodi/Funzioni: override API launcher plugin e fornitura widget.
- Dipendenze interne: `include/plugins/launcher_plugin.hpp`.

### `app.cpp`
- Introduzione: implementazione tab/widget launcher plugin.
- Metodi/Funzioni: init plugin, creazione widget UI, integrazione arbiter.
- Dipendenze interne: `app.hpp`, host launcher page.

### `app.json`
- Introduzione: metadata plugin Qt.
- Metodi/Funzioni: n/a.
- Dipendenze interne: plugin loader.
