# Documentazione Cartella: `include/app/widgets`

## Scopo
Header widget custom UI.

## File
- `dialog.hpp`: dialog standard app con body e azione conferma.
- `selector.hpp`: selettore opzioni con eventi item_changed.
- `switch.hpp`: toggle custom stilizzato.
- `tuner.hpp`: controllo frequenza radio.
- `progress.hpp`: indicatore avanzamento/stato.
- `color_picker.hpp`: selezione colore tema.
- `step_meter.hpp`: indicatore progressivo/scala.
- `fullscreen_toggler.hpp`: controllo fullscreen.
- `climate.hpp` / `climate_state.hpp`: widget stato clima.
- `vehicle.hpp` / `vehicle_state.hpp`: widget stato veicolo.

Per tutti i file:
- Metodi/Funzioni: costruttori widget, update stato UI, segnali interazione.
- Dipendenze interne: implementazioni `src/app/widgets/*.cpp`, `app/arbiter.hpp`, `app/session.hpp`.
