# Analisi tecnica codebase: funzionalita, import e interdipendenze

## 1. Executive summary

Questa codebase e composta da 3 blocchi strettamente accoppiati:

1. `dash` (UI/UX e orchestrazione locale, Qt5)
2. `third_party/aasdk` (protocol stack Android Auto)
3. `third_party/openauto` (headunit app/service basati su aasdk)

Il flusso principale e:

- `dash` avvia la UI Qt (`src/dash.cpp`), crea `MainWindow`, `Arbiter` e `Session`.
- `OpenAutoPage` crea `OpenAutoWorker`, che istanzia `openauto::App` e i componenti aasdk (USB/TCP/service factory).
- `AAHandler` collega eventi Android Auto (media/navigation/input) al resto della UI.

Le dipendenze sono gestite in modo misto:

- system packages (`apt`, `find_package` CMake)
- submodules Git (`third_party/aasdk`, `third_party/openauto`)
- FetchContent (solo in `third_party/aasdk/protobuf/CMakeLists.txt` per Abseil/Protobuf)
- plugin runtime (`QPluginLoader`) per brightness/radio/vehicle/launcher

## 2. Mappa architetturale

### 2.1 Livello applicativo Dash

Entry point e shell UI:

- `src/dash.cpp`
- `src/app/window.cpp`
- `src/app/arbiter.cpp`
- `src/app/session.cpp`

Ruoli:

- `MainWindow` ospita stack pagine e stato fullscreen.
- `Arbiter` e il controller centrale (muta stato, persistenza `QSettings`, segnali Qt).
- `Session` compone sottosistemi (tema, layout, system services, azioni, Android Auto handler).

### 2.2 Pagine funzionali (feature modules)

- Android Auto: `include/src app/pages/openauto.*`
- Media: `include/src app/pages/media.*`
- Vehicle/OBD: `include/src app/pages/vehicle.*`, `src/canbus/*`, `src/obd/*`
- Camera: `include/src app/pages/camera.*`
- Launcher: `include/src app/pages/launcher.*`
- Settings: `include/src app/pages/settings.*`

### 2.3 Servizi trasversali

- Bluetooth: `src/app/services/bluetooth.cpp` (BluezQt)
- Websocket server: `src/app/services/server.cpp`
- Clock: `src/app/services/clock.cpp`
- Action/GPIO/shortcut: `src/app/action.cpp`

### 2.4 Plugin runtime

Interfacce:

- `include/plugins/plugin.hpp`
- `include/plugins/{brightness,radio,vehicle,launcher}_plugin.hpp`

Implementazioni presenti:

- Brightness: `plugins/brightness/{official_rpi,x,mocked}`
- Radio: `plugins/radio/rtl_sdr`
- Vehicle: `plugins/vehicle/test`
- Launcher: `plugins/launcher/app`

I plugin sono caricati dinamicamente da `Session::plugin_dir()` e `QPluginLoader`.

## 3. Mappa funzionalita -> moduli -> import/dipendenze

## 3.1 Boot, stato globale e persistenza

Funzionalita:

- bootstrap UI
- persistenza config utente
- switching tema/pagine/fullscreen

Moduli principali:

- `src/dash.cpp`
- `src/app/window.cpp`
- `src/app/arbiter.cpp`
- `src/app/session.cpp`
- `src/app/config.cpp`

Import interni chiave:

- `app/window.hpp`, `app/arbiter.hpp`, `app/session.hpp`, `app/config.hpp`

Dipendenze esterne chiave:

- Qt5 Widgets/Gui/Core
- `QSettings` come storage persistente

## 3.2 Android Auto projection

Funzionalita:

- connessione dispositivo Android Auto
- gestione input e night mode
- bridge eventi AA -> UI

Moduli principali:

- `src/app/pages/openauto.cpp`
- `src/app/AAHandler.cpp`

Import interni chiave:

- `AAHandler.hpp`, `app/config.hpp`, `app/pages/page.hpp`

Import esterni chiave:

- aasdk USB/TCP: `aasdk/USB/*`, `aasdk/TCP/TCPWrapper.hpp`
- openauto core/service: `openauto/App.hpp`, `openauto/Service/*`
- protobuf enum/messages via aasdk proto

Peculiarita interdipendenze:

- `OpenAutoWorker` crea thread pool per libusb e io_service.
- `AAHandler` e iniettato in `ServiceFactory` e usato da `Session::Core` per azioni tastiera -> button events Android Auto.

## 3.3 Media (Bluetooth + Radio plugin + Local player)

Funzionalita:

- controllo media Bluetooth
- radio via plugin (`RadioPlugin`)
- player locale filesystem + TagLib

Moduli principali:

- `src/app/pages/media.cpp`
- `src/app/services/bluetooth.cpp`
- `plugins/radio/rtl_sdr/rtl_sdr.cpp`

Dipendenze esterne:

- BluezQt
- Qt Multimedia (`QMediaPlayer`, `QMediaPlaylist`)
- TagLib
- processi esterni (`ffplay`, `rtl_fm_streamer`) nel plugin RTL-SDR

Peculiarita:

- il tab Bluetooth usa sia Bluez media player sia metadata proveniente da Android Auto (`AAHandler::aa_media_metadata_update`).
- la radio dipende da un protocollo JSON TCP locale su `localhost:2345/2346` nel plugin.

## 3.4 Vehicle / CAN / OBD

Funzionalita:

- lettura telemetria via OBD PID
- supporto backend CAN multipli: SocketCAN, ELM327 USB, ELM327 BT
- estensione widget via `VehiclePlugin`

Moduli principali:

- `src/app/pages/vehicle.cpp`
- `src/canbus/socketcanbus.cpp`
- `src/canbus/elm327.cpp`
- `src/obd/command.cpp`

Dipendenze esterne:

- Qt SerialBus (`QCanBus`)
- Qt Bluetooth (ELM327 BT)
- stack POSIX serial/socket (`termios`, `fcntl`, `unistd`, `recv/send`)

Peculiarita:

- `Gauge` registra callback su frame ID specifici e invia comandi periodici via timer.
- `SocketCANBus::get_instance()` ed `elm327::get_*_instance()` usano singleton statici basati su config iniziale.

Impatto: se cambia interfaccia CAN a runtime, il singleton puo restare legato alla prima configurazione.

## 3.5 Camera (locale/network, GStreamer)

Funzionalita:

- stream da RTSP/network
- stream da camera locale V4L2
- overlay SVG dinamico su pipeline
- auto-reconnect

Moduli principali:

- `src/app/pages/camera.cpp`

Dipendenze esterne:

- Qt Multimedia camera API
- GStreamer + QtGStreamer + QML surface (`QQuickWidget`, `QGst::Quick::VideoSurface`)

Peculiarita:

- pipeline costruita a runtime via stringa (`gst_parse_launch`).
- overlay salvato in `/tmp/dash_camera_overlay.svg`.
- forte coupling con plugin GStreamer disponibili nel sistema.

## 3.6 Launcher plugin e embedding app X11

Funzionalita:

- caricare app launcher plugin
- embedding finestra esterna via X11 (plugin app)

Moduli principali:

- `src/app/pages/launcher.cpp`
- `plugins/launcher/app/app.cpp`

Dipendenze esterne:

- X11 (`Xlib`, `Xatom`)
- processi esterni (`QProcess`)

Peculiarita:

- plugin `app` cerca la finestra tramite PID e `_NET_CLIENT_LIST`.
- richiede ambiente X11 classico (comportamento diverso su Wayland).

## 3.7 Settings, actions e automazione remota

Funzionalita:

- configurazione UI/system/pages
- binding azioni tastiera o GPIO
- API websocket per stato/azioni remote

Moduli principali:

- `src/app/pages/settings.cpp`
- `src/app/action.cpp`
- `src/app/services/server.cpp`

Dipendenze esterne:

- Qt WebSockets
- file system GPIO Linux (`/sys/class/gpio`)

Peculiarita:

- `ActionEventFilter` intercetta key press/release globalmente su app.
- server websocket porta `54545` con endpoint logici `/state` e `/action`.

## 4. Interdipendenze principali (peculiarita e punti sensibili)

1. Coupling forte `Arbiter <-> Session <-> Page/Service`:
- molto stato mutabile e centralizzato.
- vantaggio: semplice coordinamento.
- rischio: regressioni trasversali su refactor.

2. Plugin runtime + ABI C++:
- plugin compilati contro stesse versioni Qt/ABI del core.
- ogni update toolchain/Qt va testato anche sui plugin.

3. Tripla dipendenza Android Auto:
- `dash` dipende da `openauto` e `aasdk`.
- `openauto` dipende a sua volta da `aasdk` + `aap_protobuf`.
- ordine update obbligato: `aap_protobuf -> aasdk -> openauto -> dash`.

4. Strategia mista protobuf:
- in `third_party/aasdk/protobuf/CMakeLists.txt` c'e FetchContent (`protobuf v30.0`, `abseil 20240722.0`) ma con opzioni per usare system protobuf/absl.
- `build-wsl.sh` in aasdk usa invece `bazel build :protoc :protobuf` nel path `protobuf/`.
- questa doppia strada e un punto di divergenza da semplificare.

5. Dipendenze hardcoded locali nel root (`cmake_modules/Findaasdk.cmake`, `Findopenauto.cmake`):
- cercano in `~/aasdk` e `~/openauto`.
- meno portabile su CI o ambienti multiutente.

6. Compatibilita legacy Qt:
- commento in `SocketCANBus` cita workaround per Qt 5.11 (assenza `readAllFrames`).
- update Qt richiede test regressione su SerialBus e camera pipeline.

## 5. Inventario dipendenze e provenienza

### 5.1 Dipendenze top-level (`dash`)

Da `CMakeLists.txt`:

- Boost (system, log)
- libusb
- Qt5: Multimedia, MultimediaWidgets, Bluetooth, Qml, Quick, QuickWidgets, SerialBus, SerialPort, WebSockets, DBus, Xml, Svg
- KF5BluezQt
- Protobuf
- OpenSSL
- RtAudio
- TagLib
- aasdk
- openauto
- opzionali/conditional: Qt5GStreamer + GStreamer pkg-config

### 5.2 Dipendenze `third_party/aasdk`

Da `third_party/aasdk/CMakeLists.txt`:

- Boost, libusb, OpenSSL
- `add_subdirectory(protobuf)` per `aap_protobuf`
- Protobuf/Abseil da FetchContent (default) oppure system libs via `SKIP_BUILD_PROTOBUF` / `SKIP_BUILD_ABSL`
- opzionale `nlohmann_json` per modern logger JSON

### 5.3 Dipendenze `third_party/openauto`

Da `third_party/openauto/CMakeLists.txt`:

- `find_package(aap_protobuf)`
- `find_package(aasdk)`
- Boost, libusb, Qt5 DBus/Multimedia/Bluetooth/Network, OpenSSL, rtaudio, taglib, blkid, gps

### 5.4 Git submodules correnti

Da `.gitmodules` e `git submodule status`:

- `third_party/aasdk` -> `https://github.com/nemocrk/aasdk.git` @ `59e34618`
- `third_party/openauto` -> `https://github.com/nemocrk/openauto.git` @ `4cc739b8`

## 6. Strategia consigliata per aggiornare tutte le dipendenze

## 6.1 Obiettivo

Ridurre drift e rotture ABI mantenendo riproducibilita build su:

- sviluppo locale
- CI
- target device (Debian/Ubuntu/RPi)

## 6.2 Ordine di aggiornamento (vincolante)

1. `aap_protobuf` / protobuf / abseil
2. `aasdk`
3. `openauto`
4. `dash`
5. plugin runtime

Motivo: catena di link e include transitiva.

## 6.3 Procedura pratica (runbook)

1. Congelare baseline:
- salvare commit SHA correnti di submodule
- archiviare output `cmake --system-information` e lista pacchetti runtime

2. Aggiornare layer proto:
- decidere un solo modello: `FetchContent` o `system packages`
- allineare `third_party/aasdk/build.sh` e `build-wsl.sh` sullo stesso modello

3. Aggiornare `third_party/aasdk`:
- build debug/release
- test unitari (`ctest` dove disponibili)
- verifica packaging `cpack`

4. Aggiornare `third_party/openauto`:
- ricompilare contro nuova aasdk/aap_protobuf
- validare avvio `autoapp` e `btservice`

5. Aggiornare `dash`:
- build completa con e senza `GST_BUILD`
- validare pagine principali (OpenAuto, Media, Camera, Vehicle, Launcher, Settings)

6. Validare plugin:
- caricamento dinamico plugin
- smoke test per ogni tipo plugin

7. Aggiornare lock/versioning:
- commit SHA submodule
- documentazione dipendenze
- eventuali patch locali in `patches/`

## 6.4 Test minimi obbligatori dopo update

- Avvio app e cambio pagina da navbar
- Connessione Android Auto (USB e, se usata, wireless)
- Bluetooth scan/connect + metadata media
- Camera RTSP e locale + reconnect
- Vehicle: lettura almeno SPEED/RPM
- API websocket `/state` e `/action`
- Caricamento plugin brightness/radio/vehicle/launcher

## 6.5 Rischi e mitigazioni

Rischio: mismatch ABI Qt/protobuf/boost tra core e plugin.
Mitigazione: build matrix unica e rebuild completo plugin a ogni update toolchain.

Rischio: divergenza build scripts (`build-wsl.sh` Bazel vs CMake FetchContent).
Mitigazione: standardizzare su una sola pipeline.

Rischio: path hardcoded (`~/aasdk`, `~/openauto`) nei finder CMake root.
Mitigazione: migrare a package config moderni (`find_package(... CONFIG)`) con `CMAKE_PREFIX_PATH`.

Rischio: singletons CAN inizializzati con config vecchia.
Mitigazione: aggiungere reset/re-init o ricreazione oggetti su cambio interfaccia.

## 7. Backlog tecnico consigliato

1. Unificare gestione protobuf/abseil (eliminare doppio flusso Bazel/CMake).
2. Rimuovere hardcode path in `cmake_modules/Findaasdk.cmake` e `Findopenauto.cmake`.
3. Introdurre file lock dipendenze (version manifest) con SHA submodule + versioni apt minime.
4. Aggiungere CI matrix minima:
- build `aasdk`, `openauto`, `dash`
- smoke test plugin load
- test lint/static analysis opzionali
5. Separare meglio boundary tra `Arbiter` e pagine per ridurre coupling.

## 8. Nota su file mancanti nel workspace corrente

Nel workspace analizzato non risultano presenti questi path mostrati nell'IDE:

- `third_party/aasdk/protobuf/.bazelignore`
- `third_party/aasdk/protobuf/.gitmodules`
- `third_party/aasdk/protobuf/cmake/abseil-cpp.cmake`
- `third_party/aasdk/protobuf/fix_permissions.sh`

E possibile che appartengano a un altro branch/revision o a una vista locale non sincronizzata.

