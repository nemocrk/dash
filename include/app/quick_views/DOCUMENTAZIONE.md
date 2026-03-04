# Documentazione Cartella: `include/app/quick_views`

## Scopo
Header quick view della control bar.

## File
### `quick_view.hpp`
- Introduzione: interfaccia base quick-view.
- Metodi/Funzioni: API render/update stato.
- Dipendenze interne: `src/app/quick_views/quick_view.cpp`.

### `combo.hpp`
- Introduzione: quick-view composita (meteo/media/vehicle ecc.) in layout rapido.
- Metodi/Funzioni: costruzione widget combinati e refresh stato.
- Dipendenze interne: `src/app/quick_views/combo.cpp`, widget vehicle/climate.
