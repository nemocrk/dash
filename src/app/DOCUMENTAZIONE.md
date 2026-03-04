# Documentazione Cartella: `src/app`

## Scopo
Core runtime applicativo (arbiter, sessione, config, finestra, AA handler).

## File
### `AAHandler.cpp`
- Introduzione: bridge callback Android Auto -> segnali/azioni UI.
- Metodi/Funzioni: update metadata/playback/navigation, stato connessione, night mode, input injection.
- Dipendenze interne: `include/AAHandler.hpp`, pagine media/openauto/quick views.

### `action.cpp`
- Introduzione: implementazione dialog/comandi azione utente.
- Metodi/Funzioni: gestione key/mouse events, show/close lifecycle.
- Dipendenze interne: `app/action.hpp`, `app/arbiter.hpp`.

### `arbiter.cpp`
- Introduzione: orchestratore centrale stato UI e servizi.
- Metodi/Funzioni: set mode/color/scale/layout, page routing, fullscreen, brightness/volume, cursor.
- Dipendenze interne: `app/arbiter.hpp`, `app/window.hpp`, `app/session.hpp`, servizi e pagine.

### `config.cpp`
- Introduzione: implementazione singleton config persistente.
- Metodi/Funzioni: accesso settings storage e segnalazione variazioni.
- Dipendenze interne: `app/config.hpp`, pagine settings/camera/openauto/vehicle.

### `session.cpp`
- Introduzione: utility globali UI/theme/system e factory componenti.
- Metodi/Funzioni: gestione font/icona/stylesheet, path plugin, helper UI.
- Dipendenze interne: `app/session.hpp`, `app/utilities/icon_engine.hpp`, assets.

### `window.cpp`
- Introduzione: composizione finestra principale e wiring pagine/quick views/barre.
- Metodi/Funzioni: init layout, navigation pagine, integrazione servizi.
- Dipendenze interne: `app/window.hpp`, `app/pages/*`, `app/quick_views/*`, `app/services/*`.
