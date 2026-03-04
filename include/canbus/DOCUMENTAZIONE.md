# Documentazione Cartella: `include/canbus`

## Scopo
Interfacce backend CAN/ELM327.

## File
### `ICANBus.hpp`
- Introduzione: interfaccia astratta bus veicolo.
- Metodi/Funzioni: `writeFrame`, registrazione handler frame, gestione bus type.
- Dipendenze interne: `src/canbus/socketcanbus.cpp`, `src/canbus/elm327.cpp`, `src/app/pages/vehicle.cpp`.

### `socketcanbus.hpp`
- Introduzione: implementazione backend SocketCAN.
- Metodi/Funzioni: init socket, invio/ricezione frame.
- Dipendenze interne: `src/canbus/socketcanbus.cpp`, OBD/Vehicle page.

### `elm327.hpp`
- Introduzione: backend ELM327 (USB/BT) per query OBD.
- Metodi/Funzioni: connessione adapter, framing comandi, callback risposta.
- Dipendenze interne: `src/canbus/elm327.cpp`, `src/app/pages/vehicle.cpp`.
