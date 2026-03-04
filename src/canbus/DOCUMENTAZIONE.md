# Documentazione Cartella: `src/canbus`

## Scopo
Implementazioni backend CAN/ELM327.

## File
### `socketcanbus.cpp`
- Introduzione: backend SocketCAN Linux.
- Metodi/Funzioni: apertura socket, invio/ricezione frame, dispatch handler.
- Dipendenze interne: `canbus/socketcanbus.hpp`, `canbus/ICANBus.hpp`, vehicle page.

### `elm327.cpp`
- Introduzione: backend ELM327 USB/Bluetooth.
- Metodi/Funzioni: handshake adapter, write command, parse response CAN-like.
- Dipendenze interne: `canbus/elm327.hpp`, `canbus/ICANBus.hpp`, `src/app/pages/vehicle.cpp`.
