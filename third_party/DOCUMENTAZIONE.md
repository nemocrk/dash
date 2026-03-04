# Documentazione Cartella: `third_party`

## Scopo
Dipendenze vendorizzate tramite submodule Git usate dal progetto Dash.

## File
- Nessun file sorgente diretto: la cartella contiene i moduli esterni `aasdk` e `openauto`.

## Moduli principali
- `aasdk`: stack Android Auto protocol/channel/messenger.
- `openauto`: integrazione app-side per projection, servizi e UI bridge.

Dipendenze interne:
- usati da `include/openauto/*`, `src/app/pages/openauto.cpp`, CMake root.
