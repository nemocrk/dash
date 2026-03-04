# Documentazione Cartella: `cmake_modules`

## Scopo
Moduli CMake custom per trovare dipendenze e funzioni di build.

## File
- `FindGStreamer.cmake`, `Findlibusb-1.0.cmake`, `Findrtaudio.cmake`, `Findtaglib.cmake`, `Findaasdk.cmake`, `Findopenauto.cmake`:
  - Introduzione: moduli `find_package` per librerie esterne.
  - Metodi/Funzioni: macro/variabili CMake per include/libs.
  - Dipendenze interne: `CMakeLists.txt` root.
- `functions.cmake`:
  - Introduzione: helper CMake riusabili.
  - Metodi/Funzioni: funzioni/macros di utilità build.
  - Dipendenze interne: invocato da CMake principale/plugin.
- `gitversion.cmake`:
  - Introduzione: generazione metadati versione git.
  - Metodi/Funzioni: produce header/version string.
  - Dipendenze interne: `src/gitversion.h.in`, `src/app/pages/settings.cpp`.
