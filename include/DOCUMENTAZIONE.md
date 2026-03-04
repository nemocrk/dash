# Documentazione Cartella: `include`

## Scopo
Header pubblici del progetto Dash. Questa cartella espone i contratti principali usati da `src/` e dai plugin: callback Android Auto e logging applicativo.

## File
### `AAHandler.hpp`
- Introduzione: dichiara `AAHandler`, bridge tra eventi Android Auto e segnali/slot Qt dell'app.
- Metodi/Funzioni:
  - API di update media (`mediaPlaybackUpdate`, `mediaMetadataUpdate`) per sincronizzare la UI media.
  - API di update navigazione (`navigationStatusUpdate`, `navigationTurnEvent`, `navigationDistanceEvent`) per quick view/pagine.
  - API stato connessione/notte (`setConnectionState`, `setNightMode`) per propagare stato globale UI.
  - helper input (iniezione bottoni/azioni) usati dal layer OpenAuto.
- Dipendenze interne:
  - Implementazione: `src/app/AAHandler.cpp`
  - Integrazione OpenAuto: `include/openauto/Service/IAndroidAutoInterface.hpp`, `src/app/pages/openauto.cpp`
  - Consumer principali: `src/app/pages/media.cpp`, `src/app/pages/settings.cpp`, quick views.

### `DashLog.hpp`
- Introduzione: wrapper/macro di logging del progetto per uniformare output diagnostico.
- Metodi/Funzioni:
  - macro/helper per livelli log (`debug`, `info`, `warning`, `error`).
  - integrazione con logger runtime usato da moduli app e servizi.
- Dipendenze interne:
  - Usato trasversalmente in `src/app/*`, `src/canbus/*`, `src/openauto/*`.
  - Collegato al setup build/versioning per contesto diagnostico.
