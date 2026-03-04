# Documentazione Cartella: `include/app/services`

## Scopo
Header servizi runtime dell'app.

## File
### `bluetooth.hpp`
- Introduzione: servizio Bluetooth app (device/media player).
- Metodi/Funzioni: init, discovery device, segnali stato media/connessione.
- Dipendenze interne: `src/app/services/bluetooth.cpp`, pagine media/settings/vehicle.

### `clock.hpp`
- Introduzione: servizio orologio/timer UI.
- Metodi/Funzioni: aggiornamento periodico data/ora.
- Dipendenze interne: `src/app/services/clock.cpp`, widget quick view.

### `server.hpp`
- Introduzione: servizio server locale (enable/disable).
- Metodi/Funzioni: controllo stato server e notifiche change.
- Dipendenze interne: `src/app/services/server.cpp`, pagina settings.
