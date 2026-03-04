# Documentazione Cartella: `tools`

## Scopo
Tooling di supporto manutenzione repository.

## File
### `generate_folder_docs.py`
- Introduzione: generatore automatico di documentazione per cartella (ora non usato per il processo manuale richiesto).
- Metodi/Funzioni:
  - `extract_methods`, `extract_deps`: estrazione statica base.
  - `generate_for_dir`: composizione markdown per directory.
  - `main`: iterazione ricorsiva cartelle.
- Dipendenze interne: scansiona struttura `src/include/plugins/...`.
