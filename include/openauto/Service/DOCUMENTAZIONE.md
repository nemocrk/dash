# Documentazione Cartella: `include/openauto/Service`

## Scopo
Factory e servizi ponte tra stack aasdk/openauto e applicazione Qt.

## File
### `IAndroidAutoInterface.hpp`
- Introduzione: interfaccia callback usata dai servizi OpenAuto per notificare l'app.
- Metodi/Funzioni: update media/navigation/connection e input events.
- Dipendenze interne: `src/openauto/Service/IAndroidAutoInterface.cpp`, `src/app/AAHandler.cpp`.

### `AndroidAutoEntityFactory.hpp`
- Introduzione: factory entità/proxy servizi Android Auto.
- Metodi/Funzioni: creazione canali/servizi per sessione.
- Dipendenze interne: `app/pages/openauto.cpp`, `ServiceFactory.hpp`.

### `InputService.hpp`
- Introduzione: servizio inoltro input app -> Android Auto.
- Metodi/Funzioni: mapping eventi touch/button.
- Dipendenze interne: widget/pagine openauto.

### `ServiceFactory.hpp`
- Introduzione: factory concreta servizi runtime openauto.
- Metodi/Funzioni: costruzione callback/service set e bind interfaccia app.
- Dipendenze interne: `app/pages/openauto.cpp`, `AAHandler`.
