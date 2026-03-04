# Documentazione Cartella: `src`

## Scopo
Implementazioni C++ dell'app Dash.

## File
### `dash.cpp`
- Introduzione: entrypoint eseguibile (bootstrap Qt/app).
- Metodi/Funzioni: setup applicazione, init session/window, run event loop.
- Dipendenze interne: `app/window.cpp`, `app/session.cpp`, `DashLog.hpp`.

### `gitversion.h.in`
- Introduzione: template header versione git generata a build-time.
- Metodi/Funzioni: placeholder CMake per commit/tag/version.
- Dipendenze interne: `cmake_modules/gitversion.cmake`, `src/app/pages/settings.cpp`.
