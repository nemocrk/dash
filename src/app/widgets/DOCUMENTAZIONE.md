# Documentazione Cartella: `src/app/widgets`

## Scopo
Implementazioni widget custom usati nelle pagine.

## File
- `dialog.cpp`: dialog riusabile con body dinamico e pulsante azione.
- `selector.cpp`: selettore opzioni con stato corrente e segnali cambio.
- `switch.cpp`: toggle custom con scalatura e stile.
- `tuner.cpp`: slider/tuner frequenza radio.
- `progress.cpp`: indicatore stato/attesa.
- `color_picker.cpp`: selezione colore tema.
- `step_meter.cpp`: barra/indicatore graduale.
- `fullscreen_toggler.cpp`: widget toggle fullscreen.
- `climate.cpp` / `climate_state.cpp`: rendering e stato climate widget.
- `vehicle.cpp` / `vehicle_state.cpp`: rendering e stato vehicle widget.

Per tutti i file:
- Metodi/Funzioni: costruttori widget, update modello->UI, gestione interazione utente.
- Dipendenze interne: header corrispondenti in `include/app/widgets/`, `app/arbiter.hpp`, `app/session.hpp`.
