# Documentazione Cartella: `include/obd`

## Scopo
Modello dati OBD e conversioni.

## File
### `command.hpp`
- Introduzione: definizione comando OBD/CAN.
- Metodi/Funzioni: builder/accessori comando e frame.
- Dipendenze interne: `src/obd/command.cpp`, `src/app/pages/vehicle.cpp`.

### `message.hpp`
- Introduzione: rappresentazione risposta OBD.
- Metodi/Funzioni: parsing payload/PID.
- Dipendenze interne: gauge vehicle.

### `decoders.hpp`
- Introduzione: decoder valori telemetrici grezzi.
- Metodi/Funzioni: conversioni PID->valori fisici.
- Dipendenze interne: `obd/conversions.hpp`, vehicle gauge.

### `conversions.hpp`
- Introduzione: conversioni unità SI/imperiali e formattazione.
- Metodi/Funzioni: utility trasformazione valori.
- Dipendenze interne: `src/app/pages/vehicle.cpp`.
