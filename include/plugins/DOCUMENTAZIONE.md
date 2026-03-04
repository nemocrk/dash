# Documentazione Cartella: `include/plugins`

## Scopo
Interfacce plugin caricate dinamicamente.

## File
### `plugin.hpp`
- Introduzione: contratto base plugin Dash.
- Metodi/Funzioni: API inizializzazione/identità plugin.
- Dipendenze interne: plugin concreti in `plugins/*`.

### `brightness_plugin.hpp`
- Introduzione: contratto plugin controllo luminosità.
- Metodi/Funzioni: set/get brightness, limiti supportati.
- Dipendenze interne: `plugins/brightness/*`, `src/app/arbiter.cpp`.

### `launcher_plugin.hpp`
- Introduzione: contratto plugin launcher (fornisce widget tab).
- Metodi/Funzioni: `widgets()`, hook integrazione arbiter.
- Dipendenze interne: `plugins/launcher/*`, `src/app/pages/launcher.cpp`.

### `radio_plugin.hpp`
- Introduzione: contratto plugin radio tuner/playback.
- Metodi/Funzioni: `freq()`, `play()`, `stop()`.
- Dipendenze interne: `plugins/radio/*`, `src/app/pages/media.cpp`.

### `vehicle_plugin.hpp`
- Introduzione: contratto plugin vehicle tab.
- Metodi/Funzioni: fornitura widget/metadati plugin.
- Dipendenze interne: `plugins/vehicle/*`, `src/app/pages/vehicle.cpp`.
