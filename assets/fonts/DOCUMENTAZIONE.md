# Documentazione Cartella: `assets/fonts`

## Scopo
Contenitore delle famiglie font distribuite con l'app.

## File
- Nessun file diretto: i font reali sono nelle sottocartelle.

## Sottocartelle funzionali
- `Montserrat/`: famiglia principale usata in varie parti della UI.
- `Titillium_Web/`: famiglia alternativa per layout/stili specifici.

Dipendenze interne:
- caricamento font e selezione tipografica in `src/app/session.cpp`.
- uso indiretto in widget/pagine che richiedono `Session::Forge::font(...)`.
