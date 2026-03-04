# Documentazione Cartella: `include/app/pages`

## Scopo
Dichiarazioni delle pagine UI principali.

## File
- `page.hpp`: base astratta pagina (metadata, settings dialog, enable/toggle).
- `camera.hpp`: API pagina camera e impostazioni overlay/stream.
- `launcher.hpp`: API pagina launcher e plugin tabs.
- `media.hpp`: API pagina media (bluetooth/radio/local player).
- `openauto.hpp`: API pagina openauto e worker integrazione Android Auto.
- `settings.hpp`: API pagina impostazioni e tab correlati.
- `vehicle.hpp`: API pagina vehicle, gauge e plugin vehicle.

Per tutti i file:
- Metodi/Funzioni: costruttori/`init()` pagina, helper UI, callback segnali.
- Dipendenze interne: implementazioni in `src/app/pages/*.cpp`, `app/arbiter.hpp`, widget e servizi app.
