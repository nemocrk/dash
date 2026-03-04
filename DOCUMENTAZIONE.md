# Documentazione Cartella: `.`

## Scopo
Root del progetto Dash: contiene build system, script operativi (install/uninstall/package), documentazione generale e sorgenti.

## File
### `CMakeLists.txt`
- Introduzione: entrypoint CMake del progetto.
- Metodi/Funzioni: definizione target principali, opzioni build e inclusione moduli CMake custom.
- Dipendenze interne: `cmake_modules/*`, `src/*`, `include/*`, `plugins/*`.

### `README.md`
- Introduzione: guida d'uso e panoramica funzionale del progetto.
- Metodi/Funzioni: n/a (documentazione).
- Dipendenze interne: richiama script/installazione e struttura cartelle.

### `LICENSE`
- Introduzione: licenza del progetto.
- Metodi/Funzioni: n/a.
- Dipendenze interne: nessuna.

### `.gitignore`
- Introduzione: regole di esclusione Git.
- Metodi/Funzioni: n/a.
- Dipendenze interne: riferimenti a output build e artefatti repo.

### `.gitmodules`
- Introduzione: configurazione submodule (`third_party`).
- Metodi/Funzioni: n/a.
- Dipendenze interne: `third_party/aasdk`, `third_party/openauto`.

### `install.sh`
- Introduzione: installazione dipendenze e setup ambiente.
- Metodi/Funzioni: sequenze shell per apt/build prerequisites.
- Dipendenze interne: script build/install del repo.

### `install_dpkg.sh`
- Introduzione: installazione tramite pacchetto Debian.
- Metodi/Funzioni: orchestrazione installazione pacchetti.
- Dipendenze interne: artefatti packaging prodotti dal progetto.

### `build_packages.sh`
- Introduzione: build pacchetti distribuibili.
- Metodi/Funzioni: pipeline di packaging.
- Dipendenze interne: `CMakeLists.txt`, `plugins/`, `src/`, `include/`.

### `autostart.sh`
- Introduzione: bootstrap runtime all'avvio sistema.
- Metodi/Funzioni: comandi shell di lancio app.
- Dipendenze interne: binari generati e configurazioni runtime.

### `rpi.sh`
- Introduzione: helper setup specifico Raspberry Pi.
- Metodi/Funzioni: tuning pacchetti/config device.
- Dipendenze interne: percorso installazione del repo.

### `uninstall.sh`
- Introduzione: rimozione componenti installati.
- Metodi/Funzioni: cleanup shell.
- Dipendenze interne: file installati da `install.sh`/packaging.
