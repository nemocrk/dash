# Documentazione Cartella: `src/app/pages`

## Scopo
Questa cartella contiene le implementazioni delle pagine principali dell'interfaccia Dash (camera, launcher, media, openauto, settings, vehicle) e del layer base comune per la gestione pagina/impostazioni.

## File
### `camera.cpp`
- Introduzione: implementa la pagina Camera con supporto a stream locali e di rete, gestione stato connessione, tentativi di riconnessione e impostazioni overlay.
- Metodi/Funzioni:
  - `CameraPage::init()`: inizializza player, layout a stati (connect/local/network), timer di reconnect e risorse overlay.
  - `CameraPage::showEvent(...)`: applica autoconnect all'apertura pagina.
  - `CameraPage::init_gstreamer_pipeline(...)`: costruisce e avvia pipeline GStreamer (con overlay opzionale).
  - `CameraPage::connect_widget()`: costruisce schermata di connessione e relativi toggle.
  - `CameraPage::VideoContainer::resizeEvent(...)`: sincronizza resize contenitore/video widget.
  - `CameraPage::Settings::*`: costruisce UI impostazioni overlay (abilitazione, width, height).
  - `CameraPage::can_callback`/metodi connect-disconnect: gestione ciclo connessione stream e aggiornamento stato UI.
- Dipendenze interne:
  - `app/pages/camera.hpp`
  - `app/arbiter.hpp`
  - `app/session.hpp`
  - `app/window.hpp`
  - `app/config.hpp` (via header)

### `launcher.cpp`
- Introduzione: implementa la pagina Launcher e il caricamento dinamico dei plugin launcher come tab Qt.
- Metodi/Funzioni:
  - `LauncherPlugins::get_plugins()`: discovery dei plugin libreria presenti nella plugin dir.
  - `LauncherPlugins::LauncherPlugins(...)`: inizializza dialog di caricamento, bottone settings e restore plugin salvati in configurazione.
  - `LauncherPlugins::dialog_body()`: UI per selezione plugin e rimozione plugin attivi.
  - `LauncherPage::init()`: collega vista fallback/vista plugin in base ai tab caricati.
  - `LauncherPage::load_msg()`: UI placeholder quando nessun plugin launcher e accesso al dialog di load.
- Dipendenze interne:
  - `app/pages/launcher.hpp`
  - `app/arbiter.hpp`
  - `app/config.hpp`
  - `app/session.hpp` (via header)
  - `plugins/launcher_plugin.hpp`

### `media.cpp`
- Introduzione: implementa la pagina Media con tre modalità: Radio plugin-based, Bluetooth player e player locale.
- Metodi/Funzioni:
  - `MediaPage::init()`: crea tab Radio/Bluetooth/Local.
  - `BluetoothPlayerTab::track_widget()`: visualizza metadati brano da Bluetooth e da Android Auto.
  - `BluetoothPlayerTab::controls_widget()`: controlli previous/play-pause/next sul media player Bluetooth.
  - `RadioPlayerTab::get_plugins()`: discovery plugin radio caricabili.
  - `RadioPlayerTab::load_plugin()`: carica plugin radio selezionato e applica frequenza corrente.
  - `RadioPlayerTab::tuner_widget()`: controlli tuner/frequenza e dialog impostazioni plugin.
  - `LocalPlayerTab::*`: scansione directory, popolamento tracce, gestione playlist/riproduzione locale.
- Dipendenze interne:
  - `app/pages/media.hpp`
  - `app/window.hpp`
  - `app/arbiter.hpp` (via header)
  - `app/session.hpp` (via header)
  - `plugins/radio_plugin.hpp`

### `openauto.cpp`
- Introduzione: implementa integrazione Android Auto/OpenAuto, con worker I/O dedicati e pagina impostazioni OpenAuto.
- Metodi/Funzioni:
  - `OpenAutoWorker::OpenAutoWorker(...)`: inizializza stack USB/TCP/OpenAuto e registra callback eventi AA.
  - `OpenAutoWorker::~OpenAutoWorker()`: reset callback globali, join thread pool, cleanup libusb.
  - `OpenAutoWorker::create_usb_workers()`: avvia worker thread per event loop USB.
  - `OpenAutoWorker::create_io_service_workers()`: avvia worker thread per `io_service`.
  - `OpenAutoFrame::OpenAutoFrame(...)`: frame touch-enabled per rendering.
  - `OpenAutoPage::Settings::*`: costruzione pannello impostazioni (RHD, FPS, resolution, DPI, audio, bluetooth, touchscreen).
- Dipendenze interne:
  - `app/pages/openauto.hpp`
  - `app/config.hpp`
  - `app/widgets/progress.hpp`
  - `app/window.hpp`
  - `app/AAHandler.*` (via header/callback)
  - `DashLog.hpp`

### `page.cpp`
- Introduzione: implementa le classi base riusabili per una pagina (`Page`), contenitore pagina e utility UI per impostazioni.
- Metodi/Funzioni:
  - `PageContainer::take()/reset()`: stacca/riaggancia widget pagina dal contenitore.
  - `Page::Settings::add_row()/row()`: helper per righe label+controllo.
  - `Page::Page(...)`: inizializza metadati e componenti base della pagina.
  - `Page::enable(...)`: abilita/disabilita pagina (se toggleable).
  - `Page::settings_button()/settings_layout()/dialog()`: costruzione dialog impostazioni standard.
- Dipendenze interne:
  - `app/pages/page.hpp`
  - `app/arbiter.hpp`

### `settings.cpp`
- Introduzione: implementa la pagina Settings composta da tab principali (Main, Layout, Bluetooth, Actions, About).
- Metodi/Funzioni:
  - `SettingsPage::init()`: registra i tab configurazione.
  - `MainSettingsTab::*`: tema, colore, cursore, volume, brightness plugin, server, comandi sistema.
  - `LayoutSettingsTab::*`: visibilità pagine, fullscreen, barre UI, quick view, scaling.
  - `BluetoothSettingsTab::*`: gestione pairing/dispositivi BT e stato media/connessione.
  - `ActionsSettingsTab::*`: mappatura azioni utente.
  - `AboutSettingsTab::*`: informazioni build/versione.
- Dipendenze interne:
  - `app/pages/settings.hpp`
  - `app/action.hpp`
  - `app/config.hpp`
  - `app/session.hpp`
  - `app/window.hpp`
  - `app/services/server.hpp`
  - `app/widgets/color_picker.hpp`
  - `app/widgets/selector.hpp`
  - `app/widgets/switch.hpp`
  - `gitversion.h`

### `vehicle.cpp`
- Introduzione: implementa la pagina Vehicle con gauge telemetrici, selezione interfaccia CAN/ELM327 e caricamento plugin vehicle.
- Metodi/Funzioni:
  - `Gauge::Gauge(...)`: configura lettura bus, timer polling comandi OBD/CAN e UI gauge.
  - `Gauge::can_callback(...)`: decodifica frame e aggiorna valore mostrato.
  - `Gauge::format_value(...)` / `Gauge::null_value()`: formattazione display valori.
  - `VehiclePage::init()`: setup dispositivi disponibili, dialog impostazioni e caricamento plugin attivo.
  - `VehiclePage::dialog_body()`: selezione bus/interfaccia/plugin e binding a configurazione.
  - `VehiclePage::can_bus_toggle_row()`: UI scelta backend SocketCAN / ELM327 USB/BT.
  - `VehiclePage::load_plugin()` / `VehiclePage::get_plugins()`: ciclo di vita plugin veicolo.
- Dipendenze interne:
  - `app/pages/vehicle.hpp`
  - `app/config.hpp`
  - `app/window.hpp`
  - `obd/conversions.hpp`
  - `canbus/elm327.hpp`
  - `plugins/vehicle_plugin.hpp`
