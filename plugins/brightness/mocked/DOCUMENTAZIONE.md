# Documentazione Cartella: `plugins/brightness/mocked`

## Scopo
Plugin brightness mock per sviluppo/test.

## File
### `mocked.hpp`
- Introduzione: dichiarazione plugin mocked brightness.
- Metodi/Funzioni: implementa API `BrightnessPlugin`.
- Dipendenze interne: `include/plugins/brightness_plugin.hpp`.

### `mocked.cpp`
- Introduzione: implementazione mock setter/getter luminosità senza hardware reale.
- Metodi/Funzioni: init plugin, `set`, `get`, limiti/fallback.
- Dipendenze interne: `mocked.hpp`, `app/arbiter` via host.

### `mocked.json`
- Introduzione: metadata Qt plugin.
- Metodi/Funzioni: n/a.
- Dipendenze interne: loader plugin in app.
