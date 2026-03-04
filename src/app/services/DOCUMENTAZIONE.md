# Documentazione Cartella: `src/app/services`

## Scopo
Servizi runtime (Bluetooth, clock, server).

## File
### `bluetooth.cpp`
- Introduzione: gestione adapter/dispositivi/media player bluetooth.
- Metodi/Funzioni: init bluetooth, track/status updates, segnali verso UI.
- Dipendenze interne: `app/services/bluetooth.hpp`, pagine media/settings/vehicle.

### `clock.cpp`
- Introduzione: servizio aggiornamento orologio UI.
- Metodi/Funzioni: timer tick e formattazione time/date.
- Dipendenze interne: `app/services/clock.hpp`, quick views/widget.

### `server.cpp`
- Introduzione: controllo server locale integrato.
- Metodi/Funzioni: enable/disable servizio e notifica stato.
- Dipendenze interne: `app/services/server.hpp`, `src/app/pages/settings.cpp`.
