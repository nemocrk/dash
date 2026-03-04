# Documentazione Cartella: `include/openauto/Configuration`

## Scopo
Configurazione OpenAuto e relativi enum/tipi.

## File
- `Configuration.hpp`, `IConfiguration.hpp`: modello e interfaccia configurazione.
- `AudioOutputBackendType.hpp`, `BluetoothAdapterType.hpp`/`BluetootAdapterType.hpp`, `HandednessOfTrafficType.hpp`: enum opzioni runtime.
- `RecentAddressesList.hpp`: gestione storico indirizzi.

Per tutti i file:
- Metodi/Funzioni: getter/setter parametri audio/video/input/connectivity.
- Dipendenze interne: `src/app/pages/openauto.cpp`, `src/app/pages/settings.cpp`.
