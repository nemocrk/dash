# Documentazione Cartella: `.github`

## Scopo
Template e configurazioni operative per collaborazione GitHub (issue/PR/workflow CI).

## File
### `ISSUE_TEMPLATE.md`
- Introduzione: template standard per apertura issue, con sezioni per bug, riproduzione e impatto.
- Metodi/Funzioni: n/a (documento template).
- Dipendenze interne:
  - Supporta il processo qualità collegato alla CI in `.github/workflows/build.yml`.
  - Riferimenti operativi a componenti del repository (`src/`, `plugins/`, `third_party/`).

### `PULL_REQUEST_TEMPLATE.md`
- Introduzione: template PR con checklist tecnica (build/test/regressioni/documentazione).
- Metodi/Funzioni: n/a.
- Dipendenze interne:
  - Allineato ai controlli di build/test definiti nel workflow CI.
  - Guida la revisione cambi su moduli app/plugin/vendor.
