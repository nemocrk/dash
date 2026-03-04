# Documentazione Cartella: `src/app/quick_views`

## Scopo
Quick views della barra controlli.

## File
### `quick_view.cpp`
- Introduzione: implementazione base quick-view.
- Metodi/Funzioni: binding stato, rendering contenuto e reset.
- Dipendenze interne: `app/quick_views/quick_view.hpp`, `app/arbiter.hpp`.

### `combo.cpp`
- Introduzione: quick-view composita con più widget informativi.
- Metodi/Funzioni: costruzione sezione combo e refresh dati runtime.
- Dipendenze interne: `app/quick_views/combo.hpp`, `app/widgets/vehicle*.hpp`, `app/widgets/climate*.hpp`.
