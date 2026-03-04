# Documentazione Cartella: `.github/workflows`

## Scopo
Pipeline CI del repository.

## File
### `build.yml`
- Introduzione: workflow GitHub Actions per build e validazione del progetto ad ogni push/PR.
- Metodi/Funzioni:
  - checkout repository/submodule
  - setup dipendenze toolchain
  - configurazione e compilazione target CMake
  - eventuali step test/smoke check definiti nella pipeline
- Dipendenze interne:
  - build system: `CMakeLists.txt`, `cmake_modules/*`
  - codice: `src/*`, `include/*`, `plugins/*`
  - dipendenze vendorizzate: `third_party/aasdk`, `third_party/openauto`
