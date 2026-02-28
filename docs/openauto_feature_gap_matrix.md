# OpenAuto Feature Gap Matrix (Root Integration)

Obiettivo: usare il motore OpenAuto/AASDK ma implementare tutta la UX nel progetto root, evitando la UI nativa OpenAuto.

## Stato attuale sintetico

- Build root: OK.
- Integrazione OpenAuto: parziale, con layer compatibilità.
- Blocco principale: bridge `openauto::service::ServiceFactory` locale ancora con metodi stub (input/resize/night-mode ecc.).

## Matrice funzionalità

| Area | Disponibile in OpenAuto | Stato nel root | Gap | Priorità |
|---|---|---|---|---|
| Session lifecycle (USB/TCP, start/stop/pause/resume) | Si (`App`, `AndroidAutoEntity`) | Parziale (start USB usato) | Mancano hook robusti di stato sessione verso UI root | Alta |
| Video sink/proiezione | Si (`VideoService`) | Parziale (frame OpenAuto usato) | Mancano controlli runtime completi (overlay/opacity/focus) nel bridge root | Alta |
| Input key/rotary/touch | Si (`InputSourceService`) | Parziale | `ServiceFactory` locale ha `injectButtonPress/sendKeyEvent/resize` stub | Critica |
| Media metadata/playback status | Si (`MediaPlaybackStatusService`) | Parziale (`AAHandler` emette metadati base) | Nessun wiring completo di stato playback/transport dal service dedicato | Alta |
| Navigation status/turn/distance | Si (`NavigationStatusService`) | Parziale (`AAHandler` base) | Mancano estensioni UI e copertura completa eventi/casi | Media |
| Audio media/guidance/system | Si (`MediaAudio/Guidance/SystemAudioService`) | Parziale (config esposta) | Mancano indicatori runtime/telemetria/canali effettivi in UI root | Media |
| Telephony audio channel | Si (classe presente) | Non attivo (commentato in ServiceFactory OpenAuto) | Da riattivare e validare compatibilità device | Media |
| Microphone media source | Si (`MicrophoneMediaSourceService`) | Implicito | Nessuna UI/diagnostica su stato microfono | Bassa |
| Bluetooth pairing/auth | Si (`BluetoothService`) | Parziale (toggle adapter) | Mancano UX pairing/auth/result nel root | Alta |
| Wifi projection service | Si (classe presente) | Non attivo (commentato in create list) | Da chiarire modello e abilitazione reale | Media |
| Generic notifications | Si (`GenericNotificationService`) | Non integrato | Nessun event bus/UI root per notification payload | Media |
| Media browser | Si (`MediaBrowserService`) | Non integrato | Nessuna superficie UI root per browse tree/search | Media |
| Phone status | Si (`PhoneStatusService`) | Non integrato | Nessuna esposizione stato telefono/chiamata | Media |
| Radio service | Si (`RadioService`) | Non integrato | Nessun mapping funzionale nel root | Bassa |
| Sensor source | Si (`SensorService`) | Non integrato lato UI | Mancano widget/stato sensori nel root (oltre auto UI custom) | Bassa |
| Vendor extension | Si (`VendorExtensionService`) | Non integrato | Nessuna strategia capability/vendor routing | Bassa |
| Night mode propagation | Si (controllabile via config/eventi) | Stub (`AAHandler::setNightMode`) | Metodo vuoto, nessun effetto reale | Alta |
| OpenAuto config exposure | Si | Buona ma incompleta | Voci legacy adattate, ma non tutta la matrice servizi è esposta | Media |

## Gap strutturali da chiudere per primi

1. Bridge `ServiceFactory` locale
- File: `include/openauto/Service/ServiceFactory.hpp`
- Problema: metodi chiave vuoti (`injectButtonPress`, `sendKeyEvent`, `resize`, `setOpacity`).
- Impatto: molte funzionalità sembrano presenti ma non funzionano realmente.

2. Contratto eventi tra servizi OpenAuto e root
- File: `include/openauto/Service/IAndroidAutoInterface.hpp`, `include/AAHandler.hpp`, `src/app/AAHandler.cpp`
- Problema: esposti solo subset eventi; alcune callback (`setNightMode`) non implementate.
- Impatto: UI root non riceve stato completo.

3. Service enablement nel fork OpenAuto
- File: `third_party/openauto/src/autoapp/Service/ServiceFactory.cpp`
- Problema: vari servizi dichiarati ma non emplace-ati (GenericNotification, MediaBrowser, PhoneStatus, Radio, VendorExtension, WifiProjection commentato).
- Impatto: anche con bridge perfetto, feature non partono se non abilitate a monte.

## Piano di implementazione consigliato

### Fase 1 (abilitazione funzionale minima completa)
1. Implementare davvero il bridge root `ServiceFactory` (input/resize/opacità/key events).
2. Rendere non-stub `AAHandler::setNightMode` e propagazione stato.
3. Allineare event model root per playback/nav/input con test smoke.

### Fase 2 (servizi mancanti ad alto valore)
1. Abilitare in OpenAuto factory: `MediaPlaybackStatus`, `MediaBrowser`, `PhoneStatus`, `GenericNotification`.
2. Esporre nel root un event bus typed (Qt signals) per ogni dominio.
3. Aggiungere pannelli root (non OpenAuto UI) per pairing BT, media browse, phone status.

### Fase 3 (servizi opzionali/estesi)
1. Valutare `WifiProjectionService` e `VendorExtensionService` con flag runtime.
2. Valutare `RadioService` e `SensorService` in base a hardware target.
3. Telemetria/diagnostica (per servizio: connected/active/error counters).

## Criterio di completamento “100% funzionalità nel root”

Una feature è considerata completata solo se:

1. il relativo servizio è abilitato e avviato nella `ServiceFactory` effettiva;
2. esiste bridge/evento nel root (signal/slot o equivalente);
3. esiste controllo/visualizzazione nella UI root (no UI OpenAuto);
4. c'è test smoke ripetibile (manuale o automatico) con evidenza log.

