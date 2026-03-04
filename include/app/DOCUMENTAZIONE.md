# Documentazione Cartella: `include/app`

## Scopo
Header core dell'applicazione: sessione, arbiter, configurazione, azioni e finestra principale.

## File
### `action.hpp`
- Introduzione: definisce il dialog/componente azione utente.
- Metodi/Funzioni: gestione eventi input e binding azione.
- Dipendenze interne: `src/app/action.cpp`, `app/arbiter.hpp`.

### `arbiter.hpp`
- Introduzione: orchestratore centrale stato UI/sistema.
- Metodi/Funzioni: set mode/color/scale, gestione pagine, volume, brightness, fullscreen.
- Dipendenze interne: `src/app/arbiter.cpp`, `app/session.hpp`, `app/window.hpp`, servizi.

### `config.hpp`
- Introduzione: singleton configurazione persistente.
- Metodi/Funzioni: getter/setter opzioni app, signal di change.
- Dipendenze interne: `src/app/config.cpp`, pagine settings/camera/openauto/vehicle.

### `session.hpp`
- Introduzione: definizioni runtime (theme, layout, forge UI helper, system constants).
- Metodi/Funzioni: utility font/icon/style/plugin dir, component factory.
- Dipendenze interne: `src/app/session.cpp`, quasi tutta la UI.

### `window.hpp`
- Introduzione: dichiarazione finestra principale e wiring pagine.
- Metodi/Funzioni: init UI shell, lifecycle e accesso arbiter.
- Dipendenze interne: `src/app/window.cpp`, `app/pages/*`, `app/services/*`.
