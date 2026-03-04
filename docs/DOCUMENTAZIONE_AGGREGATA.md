# Documentazione Aggregata Repository

- Radice: `/home/nemo/dash`
- Generato il: `2026-03-04 09:00:43 UTC`
- File aggregati: `249`

## Indice Cartelle

- [.github](#github)
- [.github/workflows](#github-workflows)
- [.](#root)
- [assets](#assets)
- [assets/fonts](#assets-fonts)
- [assets/fonts/Montserrat](#assets-fonts-montserrat)
- [assets/fonts/Titillium_Web](#assets-fonts-titillium_web)
- [assets/graphics](#assets-graphics)
- [assets/graphics/vehicle](#assets-graphics-vehicle)
- [assets/icons](#assets-icons)
- [assets/icons/dark](#assets-icons-dark)
- [assets/icons/light](#assets-icons-light)
- [assets/stylesheets](#assets-stylesheets)
- [cmake_modules](#cmake_modules)
- [docs](#docs)
- [docs/imgs](#docs-imgs)
- [include](#include)
- [include/aasdk_proto](#include-aasdk_proto)
- [include/app](#include-app)
- [include/app/graphics](#include-app-graphics)
- [include/app/pages](#include-app-pages)
- [include/app/quick_views](#include-app-quick_views)
- [include/app/services](#include-app-services)
- [include/app/utilities](#include-app-utilities)
- [include/app/widgets](#include-app-widgets)
- [include/canbus](#include-canbus)
- [include/obd](#include-obd)
- [include/openauto/Configuration](#include-openauto-configuration)
- [include/openauto](#include-openauto)
- [include/openauto/Projection](#include-openauto-projection)
- [include/openauto/Service](#include-openauto-service)
- [include/plugins](#include-plugins)
- [out](#out)
- [patches](#patches)
- [plugins](#plugins)
- [plugins/brightness](#plugins-brightness)
- [plugins/brightness/mocked](#plugins-brightness-mocked)
- [plugins/brightness/official_rpi](#plugins-brightness-official_rpi)
- [plugins/brightness/x](#plugins-brightness-x)
- [plugins/launcher](#plugins-launcher)
- [plugins/launcher/app](#plugins-launcher-app)
- [plugins/radio](#plugins-radio)
- [plugins/radio/rtl_sdr](#plugins-radio-rtl_sdr)
- [plugins/vehicle](#plugins-vehicle)
- [plugins/vehicle/test](#plugins-vehicle-test)
- [src](#src)
- [src/app](#src-app)
- [src/app/graphics](#src-app-graphics)
- [src/app/pages](#src-app-pages)
- [src/app/quick_views](#src-app-quick_views)
- [src/app/services](#src-app-services)
- [src/app/utilities](#src-app-utilities)
- [src/app/widgets](#src-app-widgets)
- [src/canbus](#src-canbus)
- [src/obd](#src-obd)
- [src/openauto](#src-openauto)
- [src/openauto/Service](#src-openauto-service)
- [third_party](#third_party)
- [third_party/aasdk/.devcontainer](#third_party-aasdk-devcontainer)
- [third_party/aasdk/.github](#third_party-aasdk-github)
- [third_party/aasdk/.github/scripts](#third_party-aasdk-github-scripts)
- [third_party/aasdk/.github/scripts/docs](#third_party-aasdk-github-scripts-docs)
- [third_party/aasdk/.github/workflows](#third_party-aasdk-github-workflows)
- [third_party/aasdk/.vscode](#third_party-aasdk-vscode)
- [third_party/aasdk](#third_party-aasdk)
- [third_party/aasdk/aasdk_proto](#third_party-aasdk-aasdk_proto)
- [third_party/aasdk/buildenv](#third_party-aasdk-buildenv)
- [third_party/aasdk/cert](#third_party-aasdk-cert)
- [third_party/aasdk/cmake_modules](#third_party-aasdk-cmake_modules)
- [third_party/aasdk/debian](#third_party-aasdk-debian)
- [third_party/aasdk/docs](#third_party-aasdk-docs)
- [third_party/aasdk/docs/doxybook](#third_party-aasdk-docs-doxybook)
- [third_party/aasdk/include](#third_party-aasdk-include)
- [third_party/aasdk/include/aasdk/Channel/Bluetooth](#third_party-aasdk-include-aasdk-channel-bluetooth)
- [third_party/aasdk/include/aasdk/Channel/Control](#third_party-aasdk-include-aasdk-channel-control)
- [third_party/aasdk/include/aasdk/Channel](#third_party-aasdk-include-aasdk-channel)
- [third_party/aasdk/include/aasdk/Channel/GenericNotification](#third_party-aasdk-include-aasdk-channel-genericnotification)
- [third_party/aasdk/include/aasdk/Channel/InputSource](#third_party-aasdk-include-aasdk-channel-inputsource)
- [third_party/aasdk/include/aasdk/Channel/MediaBrowser](#third_party-aasdk-include-aasdk-channel-mediabrowser)
- [third_party/aasdk/include/aasdk/Channel/MediaPlaybackStatus](#third_party-aasdk-include-aasdk-channel-mediaplaybackstatus)
- [third_party/aasdk/include/aasdk/Channel/MediaSink/Audio/Channel](#third_party-aasdk-include-aasdk-channel-mediasink-audio-channel)
- [third_party/aasdk/include/aasdk/Channel/MediaSink/Audio](#third_party-aasdk-include-aasdk-channel-mediasink-audio)
- [third_party/aasdk/include/aasdk/Channel/MediaSink](#third_party-aasdk-include-aasdk-channel-mediasink)
- [third_party/aasdk/include/aasdk/Channel/MediaSink/Video/Channel](#third_party-aasdk-include-aasdk-channel-mediasink-video-channel)
- [third_party/aasdk/include/aasdk/Channel/MediaSink/Video](#third_party-aasdk-include-aasdk-channel-mediasink-video)
- [third_party/aasdk/include/aasdk/Channel/MediaSource/Audio](#third_party-aasdk-include-aasdk-channel-mediasource-audio)
- [third_party/aasdk/include/aasdk/Channel/MediaSource](#third_party-aasdk-include-aasdk-channel-mediasource)
- [third_party/aasdk/include/aasdk/Channel/NavigationStatus](#third_party-aasdk-include-aasdk-channel-navigationstatus)
- [third_party/aasdk/include/aasdk/Channel/PhoneStatus](#third_party-aasdk-include-aasdk-channel-phonestatus)
- [third_party/aasdk/include/aasdk/Channel/Radio](#third_party-aasdk-include-aasdk-channel-radio)
- [third_party/aasdk/include/aasdk/Channel/SensorSource](#third_party-aasdk-include-aasdk-channel-sensorsource)
- [third_party/aasdk/include/aasdk/Channel/VendorExtension](#third_party-aasdk-include-aasdk-channel-vendorextension)
- [third_party/aasdk/include/aasdk/Channel/WifiProjection](#third_party-aasdk-include-aasdk-channel-wifiprojection)
- [third_party/aasdk/include/aasdk/Common](#third_party-aasdk-include-aasdk-common)
- [third_party/aasdk/include/aasdk](#third_party-aasdk-include-aasdk)
- [third_party/aasdk/include/aasdk/Error](#third_party-aasdk-include-aasdk-error)
- [third_party/aasdk/include/aasdk/IO](#third_party-aasdk-include-aasdk-io)
- [third_party/aasdk/include/aasdk/Messenger](#third_party-aasdk-include-aasdk-messenger)
- [third_party/aasdk/include/aasdk/TCP](#third_party-aasdk-include-aasdk-tcp)
- [third_party/aasdk/include/aasdk/Transport](#third_party-aasdk-include-aasdk-transport)
- [third_party/aasdk/include/aasdk/USB](#third_party-aasdk-include-aasdk-usb)
- [third_party/aasdk/protobuf](#third_party-aasdk-protobuf)
- [third_party/aasdk/protobuf/aap_protobuf](#third_party-aasdk-protobuf-aap_protobuf)
- [third_party/aasdk/protobuf/aap_protobuf/aaw](#third_party-aasdk-protobuf-aap_protobuf-aaw)
- [third_party/aasdk/protobuf/aap_protobuf/channel](#third_party-aasdk-protobuf-aap_protobuf-channel)
- [third_party/aasdk/protobuf/aap_protobuf/channel/control](#third_party-aasdk-protobuf-aap_protobuf-channel-control)
- [third_party/aasdk/protobuf/aap_protobuf/service](#third_party-aasdk-protobuf-aap_protobuf-service)
- [third_party/aasdk/protobuf/aap_protobuf/service/bluetooth](#third_party-aasdk-protobuf-aap_protobuf-service-bluetooth)
- [third_party/aasdk/protobuf/aap_protobuf/service/bluetooth/message](#third_party-aasdk-protobuf-aap_protobuf-service-bluetooth-message)
- [third_party/aasdk/protobuf/aap_protobuf/service/control](#third_party-aasdk-protobuf-aap_protobuf-service-control)
- [third_party/aasdk/protobuf/aap_protobuf/service/control/message](#third_party-aasdk-protobuf-aap_protobuf-service-control-message)
- [third_party/aasdk/protobuf/aap_protobuf/service/genericnotification](#third_party-aasdk-protobuf-aap_protobuf-service-genericnotification)
- [third_party/aasdk/protobuf/aap_protobuf/service/genericnotification/message](#third_party-aasdk-protobuf-aap_protobuf-service-genericnotification-message)
- [third_party/aasdk/protobuf/aap_protobuf/service/inputsource](#third_party-aasdk-protobuf-aap_protobuf-service-inputsource)
- [third_party/aasdk/protobuf/aap_protobuf/service/inputsource/message](#third_party-aasdk-protobuf-aap_protobuf-service-inputsource-message)
- [third_party/aasdk/protobuf/aap_protobuf/service/media](#third_party-aasdk-protobuf-aap_protobuf-service-media)
- [third_party/aasdk/protobuf/aap_protobuf/service/media/shared](#third_party-aasdk-protobuf-aap_protobuf-service-media-shared)
- [third_party/aasdk/protobuf/aap_protobuf/service/media/shared/message](#third_party-aasdk-protobuf-aap_protobuf-service-media-shared-message)
- [third_party/aasdk/protobuf/aap_protobuf/service/media/sink](#third_party-aasdk-protobuf-aap_protobuf-service-media-sink)
- [third_party/aasdk/protobuf/aap_protobuf/service/media/sink/message](#third_party-aasdk-protobuf-aap_protobuf-service-media-sink-message)
- [third_party/aasdk/protobuf/aap_protobuf/service/media/source](#third_party-aasdk-protobuf-aap_protobuf-service-media-source)
- [third_party/aasdk/protobuf/aap_protobuf/service/media/source/message](#third_party-aasdk-protobuf-aap_protobuf-service-media-source-message)
- [third_party/aasdk/protobuf/aap_protobuf/service/media/video](#third_party-aasdk-protobuf-aap_protobuf-service-media-video)
- [third_party/aasdk/protobuf/aap_protobuf/service/media/video/message](#third_party-aasdk-protobuf-aap_protobuf-service-media-video-message)
- [third_party/aasdk/protobuf/aap_protobuf/service/mediabrowser](#third_party-aasdk-protobuf-aap_protobuf-service-mediabrowser)
- [third_party/aasdk/protobuf/aap_protobuf/service/mediabrowser/message](#third_party-aasdk-protobuf-aap_protobuf-service-mediabrowser-message)
- [third_party/aasdk/protobuf/aap_protobuf/service/mediaplayback](#third_party-aasdk-protobuf-aap_protobuf-service-mediaplayback)
- [third_party/aasdk/protobuf/aap_protobuf/service/mediaplayback/message](#third_party-aasdk-protobuf-aap_protobuf-service-mediaplayback-message)
- [third_party/aasdk/protobuf/aap_protobuf/service/navigationstatus](#third_party-aasdk-protobuf-aap_protobuf-service-navigationstatus)
- [third_party/aasdk/protobuf/aap_protobuf/service/navigationstatus/message](#third_party-aasdk-protobuf-aap_protobuf-service-navigationstatus-message)
- [third_party/aasdk/protobuf/aap_protobuf/service/phonestatus](#third_party-aasdk-protobuf-aap_protobuf-service-phonestatus)
- [third_party/aasdk/protobuf/aap_protobuf/service/phonestatus/message](#third_party-aasdk-protobuf-aap_protobuf-service-phonestatus-message)
- [third_party/aasdk/protobuf/aap_protobuf/service/radio](#third_party-aasdk-protobuf-aap_protobuf-service-radio)
- [third_party/aasdk/protobuf/aap_protobuf/service/radio/message](#third_party-aasdk-protobuf-aap_protobuf-service-radio-message)
- [third_party/aasdk/protobuf/aap_protobuf/service/sensorsource](#third_party-aasdk-protobuf-aap_protobuf-service-sensorsource)
- [third_party/aasdk/protobuf/aap_protobuf/service/sensorsource/message](#third_party-aasdk-protobuf-aap_protobuf-service-sensorsource-message)
- [third_party/aasdk/protobuf/aap_protobuf/service/vendorextension](#third_party-aasdk-protobuf-aap_protobuf-service-vendorextension)
- [third_party/aasdk/protobuf/aap_protobuf/service/wifiprojection](#third_party-aasdk-protobuf-aap_protobuf-service-wifiprojection)
- [third_party/aasdk/protobuf/aap_protobuf/service/wifiprojection/message](#third_party-aasdk-protobuf-aap_protobuf-service-wifiprojection-message)
- [third_party/aasdk/protobuf/aap_protobuf/shared](#third_party-aasdk-protobuf-aap_protobuf-shared)
- [third_party/aasdk/scripts](#third_party-aasdk-scripts)
- [third_party/aasdk/src/Channel/Bluetooth](#third_party-aasdk-src-channel-bluetooth)
- [third_party/aasdk/src/Channel/Control](#third_party-aasdk-src-channel-control)
- [third_party/aasdk/src/Channel](#third_party-aasdk-src-channel)
- [third_party/aasdk/src/Channel/GenericNotification](#third_party-aasdk-src-channel-genericnotification)
- [third_party/aasdk/src/Channel/InputSource](#third_party-aasdk-src-channel-inputsource)
- [third_party/aasdk/src/Channel/MediaBrowser](#third_party-aasdk-src-channel-mediabrowser)
- [third_party/aasdk/src/Channel/MediaPlaybackStatus](#third_party-aasdk-src-channel-mediaplaybackstatus)
- [third_party/aasdk/src/Channel/MediaSink/Audio/Channel](#third_party-aasdk-src-channel-mediasink-audio-channel)
- [third_party/aasdk/src/Channel/MediaSink/Audio](#third_party-aasdk-src-channel-mediasink-audio)
- [third_party/aasdk/src/Channel/MediaSink](#third_party-aasdk-src-channel-mediasink)
- [third_party/aasdk/src/Channel/MediaSink/Video/Channel](#third_party-aasdk-src-channel-mediasink-video-channel)
- [third_party/aasdk/src/Channel/MediaSink/Video](#third_party-aasdk-src-channel-mediasink-video)
- [third_party/aasdk/src/Channel/MediaSource/Audio](#third_party-aasdk-src-channel-mediasource-audio)
- [third_party/aasdk/src/Channel/MediaSource](#third_party-aasdk-src-channel-mediasource)
- [third_party/aasdk/src/Channel/NavigationStatus](#third_party-aasdk-src-channel-navigationstatus)
- [third_party/aasdk/src/Channel/PhoneStatus](#third_party-aasdk-src-channel-phonestatus)
- [third_party/aasdk/src/Channel/Radio](#third_party-aasdk-src-channel-radio)
- [third_party/aasdk/src/Channel/SensorSource](#third_party-aasdk-src-channel-sensorsource)
- [third_party/aasdk/src/Channel/VendorExtension](#third_party-aasdk-src-channel-vendorextension)
- [third_party/aasdk/src/Channel/WifiProjection](#third_party-aasdk-src-channel-wifiprojection)
- [third_party/aasdk/src/Common](#third_party-aasdk-src-common)
- [third_party/aasdk/src](#third_party-aasdk-src)
- [third_party/aasdk/src/Error](#third_party-aasdk-src-error)
- [third_party/aasdk/src/IO](#third_party-aasdk-src-io)
- [third_party/aasdk/src/Messenger](#third_party-aasdk-src-messenger)
- [third_party/aasdk/src/TCP](#third_party-aasdk-src-tcp)
- [third_party/aasdk/src/Transport](#third_party-aasdk-src-transport)
- [third_party/aasdk/src/USB](#third_party-aasdk-src-usb)
- [third_party/aasdk/test_package_build](#third_party-aasdk-test_package_build)
- [third_party/aasdk/unit_test](#third_party-aasdk-unit_test)
- [third_party/aasdk/unit_test/aasdk](#third_party-aasdk-unit_test-aasdk)
- [third_party/aasdk/unit_test/aasdk/Messenger](#third_party-aasdk-unit_test-aasdk-messenger)
- [third_party/aasdk/unit_test/aasdk/Messenger/UT](#third_party-aasdk-unit_test-aasdk-messenger-ut)
- [third_party/aasdk/unit_test/aasdk/TCP](#third_party-aasdk-unit_test-aasdk-tcp)
- [third_party/aasdk/unit_test/aasdk/TCP/UT](#third_party-aasdk-unit_test-aasdk-tcp-ut)
- [third_party/aasdk/unit_test/aasdk/Transport](#third_party-aasdk-unit_test-aasdk-transport)
- [third_party/aasdk/unit_test/aasdk/Transport/UT](#third_party-aasdk-unit_test-aasdk-transport-ut)
- [third_party/aasdk/unit_test/aasdk/USB](#third_party-aasdk-unit_test-aasdk-usb)
- [third_party/aasdk/unit_test/aasdk/USB/UT](#third_party-aasdk-unit_test-aasdk-usb-ut)
- [third_party/openauto/.github](#third_party-openauto-github)
- [third_party/openauto/.github/workflows](#third_party-openauto-github-workflows)
- [third_party/openauto](#third_party-openauto)
- [third_party/openauto/assets](#third_party-openauto-assets)
- [third_party/openauto/buildenv](#third_party-openauto-buildenv)
- [third_party/openauto/buildenv/pi_binaries](#third_party-openauto-buildenv-pi_binaries)
- [third_party/openauto/buildenv/release](#third_party-openauto-buildenv-release)
- [third_party/openauto/cmake_modules](#third_party-openauto-cmake_modules)
- [third_party/openauto/docs](#third_party-openauto-docs)
- [third_party/openauto/docs/fix_summaries](#third_party-openauto-docs-fix_summaries)
- [third_party/openauto/docs/fix_summaries/fix_summaries](#third_party-openauto-docs-fix_summaries-fix_summaries)
- [third_party/openauto/docs/troubleshooting](#third_party-openauto-docs-troubleshooting)
- [third_party/openauto/helpers](#third_party-openauto-helpers)
- [third_party/openauto/include](#third_party-openauto-include)
- [third_party/openauto/include/f1x](#third_party-openauto-include-f1x)
- [third_party/openauto/include/f1x/openauto/Common](#third_party-openauto-include-f1x-openauto-common)
- [third_party/openauto/include/f1x/openauto](#third_party-openauto-include-f1x-openauto)
- [third_party/openauto/include/f1x/openauto/autoapp/Configuration](#third_party-openauto-include-f1x-openauto-autoapp-configuration)
- [third_party/openauto/include/f1x/openauto/autoapp](#third_party-openauto-include-f1x-openauto-autoapp)
- [third_party/openauto/include/f1x/openauto/autoapp/Projection](#third_party-openauto-include-f1x-openauto-autoapp-projection)
- [third_party/openauto/include/f1x/openauto/autoapp/Service/Bluetooth](#third_party-openauto-include-f1x-openauto-autoapp-service-bluetooth)
- [third_party/openauto/include/f1x/openauto/autoapp/Service](#third_party-openauto-include-f1x-openauto-autoapp-service)
- [third_party/openauto/include/f1x/openauto/autoapp/Service/GenericNotification](#third_party-openauto-include-f1x-openauto-autoapp-service-genericnotification)
- [third_party/openauto/include/f1x/openauto/autoapp/Service/InputSource](#third_party-openauto-include-f1x-openauto-autoapp-service-inputsource)
- [third_party/openauto/include/f1x/openauto/autoapp/Service/MediaBrowser](#third_party-openauto-include-f1x-openauto-autoapp-service-mediabrowser)
- [third_party/openauto/include/f1x/openauto/autoapp/Service/MediaPlaybackStatus](#third_party-openauto-include-f1x-openauto-autoapp-service-mediaplaybackstatus)
- [third_party/openauto/include/f1x/openauto/autoapp/Service/MediaSink](#third_party-openauto-include-f1x-openauto-autoapp-service-mediasink)
- [third_party/openauto/include/f1x/openauto/autoapp/Service/MediaSource](#third_party-openauto-include-f1x-openauto-autoapp-service-mediasource)
- [third_party/openauto/include/f1x/openauto/autoapp/Service/NavigationStatus](#third_party-openauto-include-f1x-openauto-autoapp-service-navigationstatus)
- [third_party/openauto/include/f1x/openauto/autoapp/Service/PhoneStatus](#third_party-openauto-include-f1x-openauto-autoapp-service-phonestatus)
- [third_party/openauto/include/f1x/openauto/autoapp/Service/Radio](#third_party-openauto-include-f1x-openauto-autoapp-service-radio)
- [third_party/openauto/include/f1x/openauto/autoapp/Service/Sensor](#third_party-openauto-include-f1x-openauto-autoapp-service-sensor)
- [third_party/openauto/include/f1x/openauto/autoapp/Service/VendorExtension](#third_party-openauto-include-f1x-openauto-autoapp-service-vendorextension)
- [third_party/openauto/include/f1x/openauto/autoapp/Service/WifiProjection](#third_party-openauto-include-f1x-openauto-autoapp-service-wifiprojection)
- [third_party/openauto/include/f1x/openauto/autoapp/UI](#third_party-openauto-include-f1x-openauto-autoapp-ui)
- [third_party/openauto/include/f1x/openauto/btservice](#third_party-openauto-include-f1x-openauto-btservice)
- [third_party/openauto/packaging](#third_party-openauto-packaging)
- [third_party/openauto/packaging/debian](#third_party-openauto-packaging-debian)
- [third_party/openauto/packaging/opt](#third_party-openauto-packaging-opt)
- [third_party/openauto/packaging/opt/crankshaft](#third_party-openauto-packaging-opt-crankshaft)
- [third_party/openauto/packaging/systemd](#third_party-openauto-packaging-systemd)
- [third_party/openauto/packaging/udev](#third_party-openauto-packaging-udev)
- [third_party/openauto/scripts](#third_party-openauto-scripts)
- [third_party/openauto/src](#third_party-openauto-src)
- [third_party/openauto/src/autoapp/Configuration](#third_party-openauto-src-autoapp-configuration)
- [third_party/openauto/src/autoapp](#third_party-openauto-src-autoapp)
- [third_party/openauto/src/autoapp/Projection](#third_party-openauto-src-autoapp-projection)
- [third_party/openauto/src/autoapp/Service/Bluetooth](#third_party-openauto-src-autoapp-service-bluetooth)
- [third_party/openauto/src/autoapp/Service](#third_party-openauto-src-autoapp-service)
- [third_party/openauto/src/autoapp/Service/GenericNotification](#third_party-openauto-src-autoapp-service-genericnotification)
- [third_party/openauto/src/autoapp/Service/InputSource](#third_party-openauto-src-autoapp-service-inputsource)
- [third_party/openauto/src/autoapp/Service/MediaBrowser](#third_party-openauto-src-autoapp-service-mediabrowser)
- [third_party/openauto/src/autoapp/Service/MediaPlaybackStatus](#third_party-openauto-src-autoapp-service-mediaplaybackstatus)
- [third_party/openauto/src/autoapp/Service/MediaSink](#third_party-openauto-src-autoapp-service-mediasink)
- [third_party/openauto/src/autoapp/Service/MediaSource](#third_party-openauto-src-autoapp-service-mediasource)
- [third_party/openauto/src/autoapp/Service/NavigationStatus](#third_party-openauto-src-autoapp-service-navigationstatus)
- [third_party/openauto/src/autoapp/Service/PhoneStatus](#third_party-openauto-src-autoapp-service-phonestatus)
- [third_party/openauto/src/autoapp/Service/Radio](#third_party-openauto-src-autoapp-service-radio)
- [third_party/openauto/src/autoapp/Service/Sensor](#third_party-openauto-src-autoapp-service-sensor)
- [third_party/openauto/src/autoapp/Service/VendorExtension](#third_party-openauto-src-autoapp-service-vendorextension)
- [third_party/openauto/src/autoapp/Service/WifiProjection](#third_party-openauto-src-autoapp-service-wifiprojection)
- [third_party/openauto/src/autoapp/UI](#third_party-openauto-src-autoapp-ui)
- [third_party/openauto/src/autoapp/UI/assets](#third_party-openauto-src-autoapp-ui-assets)
- [third_party/openauto/src/btservice](#third_party-openauto-src-btservice)
- [third_party/openauto/tests](#third_party-openauto-tests)
- [third_party/openauto/tests/integration](#third_party-openauto-tests-integration)
- [third_party/openauto/tests/mocks](#third_party-openauto-tests-mocks)
- [third_party/openauto/tests/unit](#third_party-openauto-tests-unit)
- [tools](#tools)

---

## .github

_Sorgente: `.github/DOCUMENTAZIONE.md`_

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

---

## .github/workflows

_Sorgente: `.github/workflows/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `.github/workflows`

## Scopo
Pipeline CI del repository.

## File
### `build.yml`
- Introduzione: workflow GitHub Actions per build e validazione del progetto ad ogni push/PR.
- Metodi/Funzioni:
  - checkout repository/submodule
  - setup dipendenze toolchain
  - configurazione e compilazione target CMake
  - eventuali step test/smoke check definiti nella pipeline
- Dipendenze interne:
  - build system: `CMakeLists.txt`, `cmake_modules/*`
  - codice: `src/*`, `include/*`, `plugins/*`
  - dipendenze vendorizzate: `third_party/aasdk`, `third_party/openauto`

---

## .

_Sorgente: `DOCUMENTAZIONE.md`_

# Documentazione Cartella: `.`

## Scopo
Root del progetto Dash: contiene build system, script operativi (install/uninstall/package), documentazione generale e sorgenti.

## File
### `CMakeLists.txt`
- Introduzione: entrypoint CMake del progetto.
- Metodi/Funzioni: definizione target principali, opzioni build e inclusione moduli CMake custom.
- Dipendenze interne: `cmake_modules/*`, `src/*`, `include/*`, `plugins/*`.

### `README.md`
- Introduzione: guida d'uso e panoramica funzionale del progetto.
- Metodi/Funzioni: n/a (documentazione).
- Dipendenze interne: richiama script/installazione e struttura cartelle.

### `LICENSE`
- Introduzione: licenza del progetto.
- Metodi/Funzioni: n/a.
- Dipendenze interne: nessuna.

### `.gitignore`
- Introduzione: regole di esclusione Git.
- Metodi/Funzioni: n/a.
- Dipendenze interne: riferimenti a output build e artefatti repo.

### `.gitmodules`
- Introduzione: configurazione submodule (`third_party`).
- Metodi/Funzioni: n/a.
- Dipendenze interne: `third_party/aasdk`, `third_party/openauto`.

### `install.sh`
- Introduzione: installazione dipendenze e setup ambiente.
- Metodi/Funzioni: sequenze shell per apt/build prerequisites.
- Dipendenze interne: script build/install del repo.

### `install_dpkg.sh`
- Introduzione: installazione tramite pacchetto Debian.
- Metodi/Funzioni: orchestrazione installazione pacchetti.
- Dipendenze interne: artefatti packaging prodotti dal progetto.

### `build_packages.sh`
- Introduzione: build pacchetti distribuibili.
- Metodi/Funzioni: pipeline di packaging.
- Dipendenze interne: `CMakeLists.txt`, `plugins/`, `src/`, `include/`.

### `autostart.sh`
- Introduzione: bootstrap runtime all'avvio sistema.
- Metodi/Funzioni: comandi shell di lancio app.
- Dipendenze interne: binari generati e configurazioni runtime.

### `rpi.sh`
- Introduzione: helper setup specifico Raspberry Pi.
- Metodi/Funzioni: tuning pacchetti/config device.
- Dipendenze interne: percorso installazione del repo.

### `uninstall.sh`
- Introduzione: rimozione componenti installati.
- Metodi/Funzioni: cleanup shell.
- Dipendenze interne: file installati da `install.sh`/packaging.

---

## assets

_Sorgente: `assets/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `assets`

## Scopo
Asset visuali e di stile usati dalla UI Dash (font, icone, grafica, temi QSS).

## File
- Nessun file funzionale diretto in questa cartella.

## Sottocartelle funzionali
- `fonts/`: famiglie tipografiche caricate a runtime (`Session::Forge::font`).
- `icons/`: set icone per pulsanti/tab e varianti tema light/dark.
- `graphics/`: risorse SVG dedicate (es. widget veicolo).
- `stylesheets/`: temi Qt (`dark.qss`, `light.qss`).

---

## assets/fonts

_Sorgente: `assets/fonts/DOCUMENTAZIONE.md`_

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

---

## assets/fonts/Montserrat

_Sorgente: `assets/fonts/Montserrat/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `assets/fonts/Montserrat`

## Scopo
Famiglia font Montserrat per tipografia UI.

## File
- `Montserrat-*.ttf`: varianti peso/stile usate dal rendering Qt.
  - Introduzione: file font TrueType.
  - Metodi/Funzioni: n/a.
  - Dipendenze interne: referenziati da `src/app/session.cpp` e stylesheet.
- `OFL.txt`:
  - Introduzione: licenza del font.
  - Metodi/Funzioni: n/a.
  - Dipendenze interne: nessuna.

---

## assets/fonts/Titillium_Web

_Sorgente: `assets/fonts/Titillium_Web/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `assets/fonts/Titillium_Web`

## Scopo
Famiglia font Titillium Web come alternativa tipografica.

## File
- `TitilliumWeb-*.ttf`: varianti peso/stile.
  - Introduzione: file font TrueType.
  - Metodi/Funzioni: n/a.
  - Dipendenze interne: caricabili da sessione/theme.
- `OFL.txt`:
  - Introduzione: licenza font.
  - Metodi/Funzioni: n/a.
  - Dipendenze interne: nessuna.

---

## assets/graphics

_Sorgente: `assets/graphics/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `assets/graphics`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## assets/graphics/vehicle

_Sorgente: `assets/graphics/vehicle/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `assets/graphics/vehicle`

## Scopo
Grafica vettoriale area Vehicle.

## File
### `car.svg`
- Introduzione: sagoma veicolo per widget/quick-view vehicle.
- Metodi/Funzioni: n/a.
- Dipendenze interne: `src/app/widgets/vehicle.cpp`, `src/app/quick_views/combo.cpp`.

---

## assets/icons

_Sorgente: `assets/icons/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `assets/icons`

## Scopo
Icone applicative principali (SVG/PNG/XPM) e varianti tema.

## File
- `*.svg` (es. `settings.svg`, `play.svg`, `directions_car.svg`, `wifi.svg`):
  - Introduzione: icone UI per bottoni/tab/stati.
  - Metodi/Funzioni: n/a.
  - Dipendenze interne: `app/session` (iconize), pagine/widget Qt.
- `opendash.png`, `opendash.xpm`:
  - Introduzione: logo/app icon.
  - Metodi/Funzioni: n/a.
  - Dipendenze interne: bootstrap UI/window.

---

## assets/icons/dark

_Sorgente: `assets/icons/dark/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `assets/icons/dark`

## Scopo
Override icone per tema scuro.

## File
### `check.svg`
- Introduzione: variante dark dell'icona check.
- Metodi/Funzioni: n/a.
- Dipendenze interne: risoluzione asset via tema/sessione.

---

## assets/icons/light

_Sorgente: `assets/icons/light/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `assets/icons/light`

## Scopo
Override icone per tema chiaro.

## File
### `check.svg`
- Introduzione: variante light dell'icona check.
- Metodi/Funzioni: n/a.
- Dipendenze interne: risoluzione asset via tema/sessione.

---

## assets/stylesheets

_Sorgente: `assets/stylesheets/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `assets/stylesheets`

## Scopo
Temi Qt stylesheet dell'interfaccia.

## File
### `dark.qss`
- Introduzione: tema scuro completo UI.
- Metodi/Funzioni: regole QSS per componenti Qt.
- Dipendenze interne: caricato da `src/app/session.cpp`.

### `light.qss`
- Introduzione: tema chiaro completo UI.
- Metodi/Funzioni: regole QSS per componenti Qt.
- Dipendenze interne: caricato da `src/app/session.cpp`.

---

## cmake_modules

_Sorgente: `cmake_modules/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `cmake_modules`

## Scopo
Moduli CMake custom per trovare dipendenze e funzioni di build.

## File
- `FindGStreamer.cmake`, `Findlibusb-1.0.cmake`, `Findrtaudio.cmake`, `Findtaglib.cmake`, `Findaasdk.cmake`, `Findopenauto.cmake`:
  - Introduzione: moduli `find_package` per librerie esterne.
  - Metodi/Funzioni: macro/variabili CMake per include/libs.
  - Dipendenze interne: `CMakeLists.txt` root.
- `functions.cmake`:
  - Introduzione: helper CMake riusabili.
  - Metodi/Funzioni: funzioni/macros di utilità build.
  - Dipendenze interne: invocato da CMake principale/plugin.
- `gitversion.cmake`:
  - Introduzione: generazione metadati versione git.
  - Metodi/Funzioni: produce header/version string.
  - Dipendenze interne: `src/gitversion.h.in`, `src/app/pages/settings.cpp`.

---

## docs

_Sorgente: `docs/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `docs`

## Scopo
Documentazione tecnica e analisi del progetto.

## File
### `analisi_tecnica_interdipendenze.md`
- Introduzione: analisi architetturale e dipendenze modulo-modulo.
- Metodi/Funzioni: n/a.
- Dipendenze interne: riferimenti a `src/`, `include/`, `plugins/`.

### `openauto_feature_gap_matrix.md`
- Introduzione: confronto funzionalità OpenAuto/integrazione.
- Metodi/Funzioni: n/a.
- Dipendenze interne: `src/app/pages/openauto.cpp`, moduli openauto.

---

## docs/imgs

_Sorgente: `docs/imgs/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `docs/imgs`

## Scopo
Immagini di supporto alla documentazione tecnica.

## File
- `*.png`, `*.gif`:
  - Introduzione: screenshot/UI preview per docs.
  - Metodi/Funzioni: n/a.
  - Dipendenze interne: referenziate dai markdown in `docs/`.

---

## include

_Sorgente: `include/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `include`

## Scopo
Header pubblici del progetto Dash. Questa cartella espone i contratti principali usati da `src/` e dai plugin: callback Android Auto e logging applicativo.

## File
### `AAHandler.hpp`
- Introduzione: dichiara `AAHandler`, bridge tra eventi Android Auto e segnali/slot Qt dell'app.
- Metodi/Funzioni:
  - API di update media (`mediaPlaybackUpdate`, `mediaMetadataUpdate`) per sincronizzare la UI media.
  - API di update navigazione (`navigationStatusUpdate`, `navigationTurnEvent`, `navigationDistanceEvent`) per quick view/pagine.
  - API stato connessione/notte (`setConnectionState`, `setNightMode`) per propagare stato globale UI.
  - helper input (iniezione bottoni/azioni) usati dal layer OpenAuto.
- Dipendenze interne:
  - Implementazione: `src/app/AAHandler.cpp`
  - Integrazione OpenAuto: `include/openauto/Service/IAndroidAutoInterface.hpp`, `src/app/pages/openauto.cpp`
  - Consumer principali: `src/app/pages/media.cpp`, `src/app/pages/settings.cpp`, quick views.

### `DashLog.hpp`
- Introduzione: wrapper/macro di logging del progetto per uniformare output diagnostico.
- Metodi/Funzioni:
  - macro/helper per livelli log (`debug`, `info`, `warning`, `error`).
  - integrazione con logger runtime usato da moduli app e servizi.
- Dipendenze interne:
  - Usato trasversalmente in `src/app/*`, `src/canbus/*`, `src/openauto/*`.
  - Collegato al setup build/versioning per contesto diagnostico.

---

## include/aasdk_proto

_Sorgente: `include/aasdk_proto/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `include/aasdk_proto`

## Scopo
Header protobuf generati per enum Android Auto usati in configurazione.

## File
### `ButtonCodeEnum.pb.h`
- Introduzione: enum codici pulsanti Android Auto.
- Metodi/Funzioni: API protobuf enum/accessor.
- Dipendenze interne: `src/app/pages/settings.cpp`, input mapping AA.

### `VideoFPSEnum.pb.h`
- Introduzione: enum FPS video Android Auto.
- Metodi/Funzioni: API protobuf enum.
- Dipendenze interne: `src/app/pages/openauto.cpp`, `settings.cpp`.

### `VideoResolutionEnum.pb.h`
- Introduzione: enum risoluzioni video Android Auto.
- Metodi/Funzioni: API protobuf enum.
- Dipendenze interne: `src/app/pages/openauto.cpp`, `settings.cpp`.

---

## include/app

_Sorgente: `include/app/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `include/app`

## Scopo
Header core dell'applicazione: sessione, arbiter, configurazione, azioni e finestra principale.

## File
### `action.hpp`
- Introduzione: definisce il dialog/componente azione utente.
- Metodi/Funzioni: gestione eventi input e binding azione.
- Dipendenze interne: `src/app/action.cpp`, `app/arbiter.hpp`.

### `arbiter.hpp`
- Introduzione: orchestratore centrale stato UI/sistema.
- Metodi/Funzioni: set mode/color/scale, gestione pagine, volume, brightness, fullscreen.
- Dipendenze interne: `src/app/arbiter.cpp`, `app/session.hpp`, `app/window.hpp`, servizi.

### `config.hpp`
- Introduzione: singleton configurazione persistente.
- Metodi/Funzioni: getter/setter opzioni app, signal di change.
- Dipendenze interne: `src/app/config.cpp`, pagine settings/camera/openauto/vehicle.

### `session.hpp`
- Introduzione: definizioni runtime (theme, layout, forge UI helper, system constants).
- Metodi/Funzioni: utility font/icon/style/plugin dir, component factory.
- Dipendenze interne: `src/app/session.cpp`, quasi tutta la UI.

### `window.hpp`
- Introduzione: dichiarazione finestra principale e wiring pagine.
- Metodi/Funzioni: init UI shell, lifecycle e accesso arbiter.
- Dipendenze interne: `src/app/window.cpp`, `app/pages/*`, `app/services/*`.

---

## include/app/graphics

_Sorgente: `include/app/graphics/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `include/app/graphics`

## Scopo
Header utility grafiche SVG dinamiche.

## File
### `dynamic_svg.hpp`
- Introduzione: componente per manipolare/renderizzare SVG con parametri runtime.
- Metodi/Funzioni: caricamento, update proprietà e render.
- Dipendenze interne: `src/app/graphics/dynamic_svg.cpp`, widget grafici.

---

## include/app/pages

_Sorgente: `include/app/pages/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `include/app/pages`

## Scopo
Dichiarazioni delle pagine UI principali.

## File
- `page.hpp`: base astratta pagina (metadata, settings dialog, enable/toggle).
- `camera.hpp`: API pagina camera e impostazioni overlay/stream.
- `launcher.hpp`: API pagina launcher e plugin tabs.
- `media.hpp`: API pagina media (bluetooth/radio/local player).
- `openauto.hpp`: API pagina openauto e worker integrazione Android Auto.
- `settings.hpp`: API pagina impostazioni e tab correlati.
- `vehicle.hpp`: API pagina vehicle, gauge e plugin vehicle.

Per tutti i file:
- Metodi/Funzioni: costruttori/`init()` pagina, helper UI, callback segnali.
- Dipendenze interne: implementazioni in `src/app/pages/*.cpp`, `app/arbiter.hpp`, widget e servizi app.

---

## include/app/quick_views

_Sorgente: `include/app/quick_views/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `include/app/quick_views`

## Scopo
Header quick view della control bar.

## File
### `quick_view.hpp`
- Introduzione: interfaccia base quick-view.
- Metodi/Funzioni: API render/update stato.
- Dipendenze interne: `src/app/quick_views/quick_view.cpp`.

### `combo.hpp`
- Introduzione: quick-view composita (meteo/media/vehicle ecc.) in layout rapido.
- Metodi/Funzioni: costruzione widget combinati e refresh stato.
- Dipendenze interne: `src/app/quick_views/combo.cpp`, widget vehicle/climate.

---

## include/app/services

_Sorgente: `include/app/services/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `include/app/services`

## Scopo
Header servizi runtime dell'app.

## File
### `bluetooth.hpp`
- Introduzione: servizio Bluetooth app (device/media player).
- Metodi/Funzioni: init, discovery device, segnali stato media/connessione.
- Dipendenze interne: `src/app/services/bluetooth.cpp`, pagine media/settings/vehicle.

### `clock.hpp`
- Introduzione: servizio orologio/timer UI.
- Metodi/Funzioni: aggiornamento periodico data/ora.
- Dipendenze interne: `src/app/services/clock.cpp`, widget quick view.

### `server.hpp`
- Introduzione: servizio server locale (enable/disable).
- Metodi/Funzioni: controllo stato server e notifiche change.
- Dipendenze interne: `src/app/services/server.cpp`, pagina settings.

---

## include/app/utilities

_Sorgente: `include/app/utilities/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `include/app/utilities`

## Scopo
Utility applicative riusabili.

## File
### `icon_engine.hpp`
- Introduzione: motore/utility gestione icone e varianti tema.
- Metodi/Funzioni: risoluzione path, colorazione/scelta asset.
- Dipendenze interne: `src/app/utilities/icon_engine.cpp`, `app/session.hpp`.

---

## include/app/widgets

_Sorgente: `include/app/widgets/DOCUMENTAZIONE.md`_

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

---

## include/canbus

_Sorgente: `include/canbus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `include/canbus`

## Scopo
Interfacce backend CAN/ELM327.

## File
### `ICANBus.hpp`
- Introduzione: interfaccia astratta bus veicolo.
- Metodi/Funzioni: `writeFrame`, registrazione handler frame, gestione bus type.
- Dipendenze interne: `src/canbus/socketcanbus.cpp`, `src/canbus/elm327.cpp`, `src/app/pages/vehicle.cpp`.

### `socketcanbus.hpp`
- Introduzione: implementazione backend SocketCAN.
- Metodi/Funzioni: init socket, invio/ricezione frame.
- Dipendenze interne: `src/canbus/socketcanbus.cpp`, OBD/Vehicle page.

### `elm327.hpp`
- Introduzione: backend ELM327 (USB/BT) per query OBD.
- Metodi/Funzioni: connessione adapter, framing comandi, callback risposta.
- Dipendenze interne: `src/canbus/elm327.cpp`, `src/app/pages/vehicle.cpp`.

---

## include/obd

_Sorgente: `include/obd/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `include/obd`

## Scopo
Modello dati OBD e conversioni.

## File
### `command.hpp`
- Introduzione: definizione comando OBD/CAN.
- Metodi/Funzioni: builder/accessori comando e frame.
- Dipendenze interne: `src/obd/command.cpp`, `src/app/pages/vehicle.cpp`.

### `message.hpp`
- Introduzione: rappresentazione risposta OBD.
- Metodi/Funzioni: parsing payload/PID.
- Dipendenze interne: gauge vehicle.

### `decoders.hpp`
- Introduzione: decoder valori telemetrici grezzi.
- Metodi/Funzioni: conversioni PID->valori fisici.
- Dipendenze interne: `obd/conversions.hpp`, vehicle gauge.

### `conversions.hpp`
- Introduzione: conversioni unità SI/imperiali e formattazione.
- Metodi/Funzioni: utility trasformazione valori.
- Dipendenze interne: `src/app/pages/vehicle.cpp`.

---

## include/openauto/Configuration

_Sorgente: `include/openauto/Configuration/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `include/openauto/Configuration`

## Scopo
Configurazione OpenAuto e relativi enum/tipi.

## File
- `Configuration.hpp`, `IConfiguration.hpp`: modello e interfaccia configurazione.
- `AudioOutputBackendType.hpp`, `BluetoothAdapterType.hpp`/`BluetootAdapterType.hpp`, `HandednessOfTrafficType.hpp`: enum opzioni runtime.
- `RecentAddressesList.hpp`: gestione storico indirizzi.

Per tutti i file:
- Metodi/Funzioni: getter/setter parametri audio/video/input/connectivity.
- Dipendenze interne: `src/app/pages/openauto.cpp`, `src/app/pages/settings.cpp`.

---

## include/openauto

_Sorgente: `include/openauto/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `include/openauto`

## Scopo
Header integrazione OpenAuto.

## File
### `App.hpp`
- Introduzione: API applicazione OpenAuto e lifecycle connessione AA.
- Metodi/Funzioni: attesa device, bootstrap servizi projection.
- Dipendenze interne: `src/app/pages/openauto.cpp`, `include/openauto/Service/*`.

---

## include/openauto/Projection

_Sorgente: `include/openauto/Projection/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `include/openauto/Projection`

## Scopo
Tipi eventi input per projection Android Auto.

## File
### `InputEvent.hpp`
- Introduzione: struttura eventi touch/key inviati a projection layer.
- Metodi/Funzioni: definizione tipi evento e payload.
- Dipendenze interne: openauto service/input bridge.

---

## include/openauto/Service

_Sorgente: `include/openauto/Service/DOCUMENTAZIONE.md`_

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

---

## include/plugins

_Sorgente: `include/plugins/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `include/plugins`

## Scopo
Interfacce plugin caricate dinamicamente.

## File
### `plugin.hpp`
- Introduzione: contratto base plugin Dash.
- Metodi/Funzioni: API inizializzazione/identità plugin.
- Dipendenze interne: plugin concreti in `plugins/*`.

### `brightness_plugin.hpp`
- Introduzione: contratto plugin controllo luminosità.
- Metodi/Funzioni: set/get brightness, limiti supportati.
- Dipendenze interne: `plugins/brightness/*`, `src/app/arbiter.cpp`.

### `launcher_plugin.hpp`
- Introduzione: contratto plugin launcher (fornisce widget tab).
- Metodi/Funzioni: `widgets()`, hook integrazione arbiter.
- Dipendenze interne: `plugins/launcher/*`, `src/app/pages/launcher.cpp`.

### `radio_plugin.hpp`
- Introduzione: contratto plugin radio tuner/playback.
- Metodi/Funzioni: `freq()`, `play()`, `stop()`.
- Dipendenze interne: `plugins/radio/*`, `src/app/pages/media.cpp`.

### `vehicle_plugin.hpp`
- Introduzione: contratto plugin vehicle tab.
- Metodi/Funzioni: fornitura widget/metadati plugin.
- Dipendenze interne: `plugins/vehicle/*`, `src/app/pages/vehicle.cpp`.

---

## out

_Sorgente: `out/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `out`

## Scopo
Output temporanei o script di installazione generati per packaging/deploy.

## File
### `install.sh`
- Introduzione: script di installazione output (derivato pipeline build/package).
- Metodi/Funzioni: comandi shell per deploy artefatti.
- Dipendenze interne: packaging root e file installabili del repo.

---

## patches

_Sorgente: `patches/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `patches`

## Scopo
Patch locali applicate a dipendenze o toolchain.

## File
### `aasdk_openssl-fips-fix.patch`
- Introduzione: patch compatibilità/security su aasdk.
- Metodi/Funzioni: diff sorgenti.
- Dipendenze interne: `third_party/aasdk`.

### `greenline_fix.patch`
- Introduzione: patch fix funzionale/visivo specifico progetto.
- Metodi/Funzioni: diff sorgenti.
- Dipendenze interne: target vari del repo.

### `qt-gstreamer-1.18.patch`
- Introduzione: adattamento Qt/GStreamer per versione 1.18.
- Metodi/Funzioni: diff sorgenti.
- Dipendenze interne: integrazione camera/media.

### `qt-gstreamer_atomic-load.patch`
- Introduzione: fix sincronizzazione/atomic load in integrazione Qt-GStreamer.
- Metodi/Funzioni: diff sorgenti.
- Dipendenze interne: stack media/camera.

---

## plugins

_Sorgente: `plugins/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `plugins`

## Scopo
Sorgenti plugin dinamici Dash (brightness, launcher, radio, vehicle).

## File
### `CMakeLists.txt`
- Introduzione: build plugin condivisi.
- Metodi/Funzioni: definizione target plugin e install path.
- Dipendenze interne: `include/plugins/*.hpp`, sottocartelle plugin.

### `README.md`
- Introduzione: guida sviluppo/uso plugin.
- Metodi/Funzioni: n/a.
- Dipendenze interne: contratti in `include/plugins/`.

---

## plugins/brightness

_Sorgente: `plugins/brightness/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `plugins/brightness`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## plugins/brightness/mocked

_Sorgente: `plugins/brightness/mocked/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `plugins/brightness/mocked`

## Scopo
Plugin brightness mock per sviluppo/test.

## File
### `mocked.hpp`
- Introduzione: dichiarazione plugin mocked brightness.
- Metodi/Funzioni: implementa API `BrightnessPlugin`.
- Dipendenze interne: `include/plugins/brightness_plugin.hpp`.

### `mocked.cpp`
- Introduzione: implementazione mock setter/getter luminosità senza hardware reale.
- Metodi/Funzioni: init plugin, `set`, `get`, limiti/fallback.
- Dipendenze interne: `mocked.hpp`, `app/arbiter` via host.

### `mocked.json`
- Introduzione: metadata Qt plugin.
- Metodi/Funzioni: n/a.
- Dipendenze interne: loader plugin in app.

---

## plugins/brightness/official_rpi

_Sorgente: `plugins/brightness/official_rpi/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `plugins/brightness/official_rpi`

## Scopo
Plugin brightness per Raspberry Pi ufficiale.

## File
### `official_rpi.hpp`
- Introduzione: dichiarazione plugin hardware RPi.
- Metodi/Funzioni: API brightness specifica backend RPi.
- Dipendenze interne: `include/plugins/brightness_plugin.hpp`.

### `official_rpi.cpp`
- Introduzione: implementa lettura/scrittura luminosità via interfacce sistema RPi.
- Metodi/Funzioni: init backend, apply brightness, handling errori IO.
- Dipendenze interne: `official_rpi.hpp`, host app.

### `official_rpi.json`
- Introduzione: metadata plugin Qt.
- Metodi/Funzioni: n/a.
- Dipendenze interne: plugin loader.

---

## plugins/brightness/x

_Sorgente: `plugins/brightness/x/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `plugins/brightness/x`

## Scopo
Plugin brightness per ambienti X11.

## File
### `x.hpp`
- Introduzione: dichiarazione plugin brightness backend X.
- Metodi/Funzioni: API controllo luminosità display su X.
- Dipendenze interne: `include/plugins/brightness_plugin.hpp`.

### `x.cpp`
- Introduzione: implementazione comandi brightness su ambiente X.
- Metodi/Funzioni: discovery device/output, set/get brightness.
- Dipendenze interne: `x.hpp`, host app.

### `x.json`
- Introduzione: metadata plugin Qt.
- Metodi/Funzioni: n/a.
- Dipendenze interne: plugin loader.

---

## plugins/launcher

_Sorgente: `plugins/launcher/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `plugins/launcher`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## plugins/launcher/app

_Sorgente: `plugins/launcher/app/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `plugins/launcher/app`

## Scopo
Plugin launcher di esempio che fornisce tab applicative.

## File
### `app.hpp`
- Introduzione: dichiarazione plugin launcher `app`.
- Metodi/Funzioni: override API launcher plugin e fornitura widget.
- Dipendenze interne: `include/plugins/launcher_plugin.hpp`.

### `app.cpp`
- Introduzione: implementazione tab/widget launcher plugin.
- Metodi/Funzioni: init plugin, creazione widget UI, integrazione arbiter.
- Dipendenze interne: `app.hpp`, host launcher page.

### `app.json`
- Introduzione: metadata plugin Qt.
- Metodi/Funzioni: n/a.
- Dipendenze interne: plugin loader.

---

## plugins/radio

_Sorgente: `plugins/radio/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `plugins/radio`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## plugins/radio/rtl_sdr

_Sorgente: `plugins/radio/rtl_sdr/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `plugins/radio/rtl_sdr`

## Scopo
Plugin radio basato su RTL-SDR.

## File
### `rtl_sdr.hpp`
- Introduzione: dichiarazione plugin radio RTL-SDR.
- Metodi/Funzioni: API freq/play/stop.
- Dipendenze interne: `include/plugins/radio_plugin.hpp`.

### `rtl_sdr.cpp`
- Introduzione: implementazione tuning e playback via RTL-SDR.
- Metodi/Funzioni: set frequenza, avvio/stop stream, gestione risorse device.
- Dipendenze interne: `rtl_sdr.hpp`, `src/app/pages/media.cpp`.

### `rtl_sdr.json`
- Introduzione: metadata plugin Qt.
- Metodi/Funzioni: n/a.
- Dipendenze interne: plugin loader.

---

## plugins/vehicle

_Sorgente: `plugins/vehicle/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `plugins/vehicle`

## Scopo
Plugin vehicle custom caricabili nella pagina Vehicle.

## File
### `README.md`
- Introduzione: guida sviluppo plugin vehicle.
- Metodi/Funzioni: n/a.
- Dipendenze interne: `include/plugins/vehicle_plugin.hpp`, loader in `src/app/pages/vehicle.cpp`.

---

## plugins/vehicle/test

_Sorgente: `plugins/vehicle/test/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `plugins/vehicle/test`

## Scopo
Plugin vehicle di test/dimostrazione.

## File
### `test.hpp`
- Introduzione: dichiarazione plugin vehicle test.
- Metodi/Funzioni: override API plugin e creazione widget demo.
- Dipendenze interne: `include/plugins/vehicle_plugin.hpp`.

### `test.cpp`
- Introduzione: implementazione plugin vehicle test.
- Metodi/Funzioni: init, costruzione widget diagnostici/demo.
- Dipendenze interne: `test.hpp`, host vehicle page.

### `test.json`
- Introduzione: metadata plugin Qt.
- Metodi/Funzioni: n/a.
- Dipendenze interne: plugin loader.

---

## src

_Sorgente: `src/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `src`

## Scopo
Implementazioni C++ dell'app Dash.

## File
### `dash.cpp`
- Introduzione: entrypoint eseguibile (bootstrap Qt/app).
- Metodi/Funzioni: setup applicazione, init session/window, run event loop.
- Dipendenze interne: `app/window.cpp`, `app/session.cpp`, `DashLog.hpp`.

### `gitversion.h.in`
- Introduzione: template header versione git generata a build-time.
- Metodi/Funzioni: placeholder CMake per commit/tag/version.
- Dipendenze interne: `cmake_modules/gitversion.cmake`, `src/app/pages/settings.cpp`.

---

## src/app

_Sorgente: `src/app/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `src/app`

## Scopo
Core runtime applicativo (arbiter, sessione, config, finestra, AA handler).

## File
### `AAHandler.cpp`
- Introduzione: bridge callback Android Auto -> segnali/azioni UI.
- Metodi/Funzioni: update metadata/playback/navigation, stato connessione, night mode, input injection.
- Dipendenze interne: `include/AAHandler.hpp`, pagine media/openauto/quick views.

### `action.cpp`
- Introduzione: implementazione dialog/comandi azione utente.
- Metodi/Funzioni: gestione key/mouse events, show/close lifecycle.
- Dipendenze interne: `app/action.hpp`, `app/arbiter.hpp`.

### `arbiter.cpp`
- Introduzione: orchestratore centrale stato UI e servizi.
- Metodi/Funzioni: set mode/color/scale/layout, page routing, fullscreen, brightness/volume, cursor.
- Dipendenze interne: `app/arbiter.hpp`, `app/window.hpp`, `app/session.hpp`, servizi e pagine.

### `config.cpp`
- Introduzione: implementazione singleton config persistente.
- Metodi/Funzioni: accesso settings storage e segnalazione variazioni.
- Dipendenze interne: `app/config.hpp`, pagine settings/camera/openauto/vehicle.

### `session.cpp`
- Introduzione: utility globali UI/theme/system e factory componenti.
- Metodi/Funzioni: gestione font/icona/stylesheet, path plugin, helper UI.
- Dipendenze interne: `app/session.hpp`, `app/utilities/icon_engine.hpp`, assets.

### `window.cpp`
- Introduzione: composizione finestra principale e wiring pagine/quick views/barre.
- Metodi/Funzioni: init layout, navigation pagine, integrazione servizi.
- Dipendenze interne: `app/window.hpp`, `app/pages/*`, `app/quick_views/*`, `app/services/*`.

---

## src/app/graphics

_Sorgente: `src/app/graphics/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `src/app/graphics`

## Scopo
Implementazione utility grafica SVG dinamica.

## File
### `dynamic_svg.cpp`
- Introduzione: parsing/render SVG con proprietà aggiornabili a runtime.
- Metodi/Funzioni: load/update property/render pixmap.
- Dipendenze interne: `app/graphics/dynamic_svg.hpp`, widget che mostrano SVG dinamici.

---

## src/app/pages

_Sorgente: `src/app/pages/DOCUMENTAZIONE.md`_

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

---

## src/app/quick_views

_Sorgente: `src/app/quick_views/DOCUMENTAZIONE.md`_

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

---

## src/app/services

_Sorgente: `src/app/services/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `src/app/services`

## Scopo
Servizi runtime (Bluetooth, clock, server).

## File
### `bluetooth.cpp`
- Introduzione: gestione adapter/dispositivi/media player bluetooth.
- Metodi/Funzioni: init bluetooth, track/status updates, segnali verso UI.
- Dipendenze interne: `app/services/bluetooth.hpp`, pagine media/settings/vehicle.

### `clock.cpp`
- Introduzione: servizio aggiornamento orologio UI.
- Metodi/Funzioni: timer tick e formattazione time/date.
- Dipendenze interne: `app/services/clock.hpp`, quick views/widget.

### `server.cpp`
- Introduzione: controllo server locale integrato.
- Metodi/Funzioni: enable/disable servizio e notifica stato.
- Dipendenze interne: `app/services/server.hpp`, `src/app/pages/settings.cpp`.

---

## src/app/utilities

_Sorgente: `src/app/utilities/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `src/app/utilities`

## Scopo
Utility trasversali applicative.

## File
### `icon_engine.cpp`
- Introduzione: implementa risoluzione/trasformazione icone per tema e contesto UI.
- Metodi/Funzioni: lookup icone, gestione varianti dark/light, fallback.
- Dipendenze interne: `app/utilities/icon_engine.hpp`, `app/session.hpp`, `assets/icons`.

---

## src/app/widgets

_Sorgente: `src/app/widgets/DOCUMENTAZIONE.md`_

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

---

## src/canbus

_Sorgente: `src/canbus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `src/canbus`

## Scopo
Implementazioni backend CAN/ELM327.

## File
### `socketcanbus.cpp`
- Introduzione: backend SocketCAN Linux.
- Metodi/Funzioni: apertura socket, invio/ricezione frame, dispatch handler.
- Dipendenze interne: `canbus/socketcanbus.hpp`, `canbus/ICANBus.hpp`, vehicle page.

### `elm327.cpp`
- Introduzione: backend ELM327 USB/Bluetooth.
- Metodi/Funzioni: handshake adapter, write command, parse response CAN-like.
- Dipendenze interne: `canbus/elm327.hpp`, `canbus/ICANBus.hpp`, `src/app/pages/vehicle.cpp`.

---

## src/obd

_Sorgente: `src/obd/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `src/obd`

## Scopo
Implementazione elementi OBD.

## File
### `command.cpp`
- Introduzione: implementa costruzione/composizione comandi OBD.
- Metodi/Funzioni: builder frame/payload e utility comando.
- Dipendenze interne: `obd/command.hpp`, `src/app/pages/vehicle.cpp`.

---

## src/openauto

_Sorgente: `src/openauto/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `src/openauto`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## src/openauto/Service

_Sorgente: `src/openauto/Service/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `src/openauto/Service`

## Scopo
Implementazioni ponte OpenAuto service layer.

## File
### `IAndroidAutoInterface.cpp`
- Introduzione: implementazione base dell'interfaccia callback Android Auto lato app.
- Metodi/Funzioni: metodi virtuali/no-op o forward callback.
- Dipendenze interne: `openauto/Service/IAndroidAutoInterface.hpp`, `src/app/AAHandler.cpp`.

---

## third_party

_Sorgente: `third_party/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party`

## Scopo
Dipendenze vendorizzate tramite submodule Git usate dal progetto Dash.

## File
- Nessun file sorgente diretto: la cartella contiene i moduli esterni `aasdk` e `openauto`.

## Moduli principali
- `aasdk`: stack Android Auto protocol/channel/messenger.
- `openauto`: integrazione app-side per projection, servizi e UI bridge.

Dipendenze interne:
- usati da `include/openauto/*`, `src/app/pages/openauto.cpp`, CMake root.

---

## third_party/aasdk/.devcontainer

_Sorgente: `third_party/aasdk/.devcontainer/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/.devcontainer`

## Scopo
Questa cartella contiene 10 file utili al repository.

## File
### `devcontainer-arm64.json`
- Introduzione: File di configurazione/dati usato dal progetto (`devcontainer-arm64.json`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/.devcontainer/devcontainer-arm64.json`

### `devcontainer-armhf.json`
- Introduzione: File di configurazione/dati usato dal progetto (`devcontainer-armhf.json`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/.devcontainer/devcontainer-armhf.json`

### `devcontainer.json`
- Introduzione: File di configurazione/dati usato dal progetto (`devcontainer.json`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/.devcontainer/devcontainer.json`

### `Dockerfile.arm64`
- Introduzione: File di supporto del repository (`Dockerfile.arm64`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/.devcontainer/Dockerfile.arm64`

### `Dockerfile.armhf`
- Introduzione: File di supporto del repository (`Dockerfile.armhf`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/.devcontainer/Dockerfile.armhf`

### `Dockerfile.x64`
- Introduzione: File di supporto del repository (`Dockerfile.x64`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/.devcontainer/Dockerfile.x64`

### `FIX_SUMMARY.md`
- Introduzione: Documentazione testuale o note operative (`FIX_SUMMARY.md`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/.devcontainer/FIX_SUMMARY.md`

### `PODMAN_TROUBLESHOOTING.md`
- Introduzione: Documentazione testuale o note operative (`PODMAN_TROUBLESHOOTING.md`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/.devcontainer/PODMAN_TROUBLESHOOTING.md`

### `post-create.sh`
- Introduzione: Script shell per build, installazione o automazione (`post-create.sh`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/.devcontainer/post-create.sh`

### `README.md`
- Introduzione: Documentazione testuale o note operative (`README.md`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/.devcontainer/README.md`

---

## third_party/aasdk/.github

_Sorgente: `third_party/aasdk/.github/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/.github`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/aasdk/.github/scripts

_Sorgente: `third_party/aasdk/.github/scripts/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/.github/scripts`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/aasdk/.github/scripts/docs

_Sorgente: `third_party/aasdk/.github/scripts/docs/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/.github/scripts/docs`

## Scopo
Questa cartella contiene 1 file utili al repository.

## File
### `generate_wiki_docs.sh`
- Introduzione: Script shell per build, installazione o automazione (`generate_wiki_docs.sh`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/.github/scripts/docs/generate_wiki_docs.sh`

---

## third_party/aasdk/.github/workflows

_Sorgente: `third_party/aasdk/.github/workflows/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/.github/workflows`

## Scopo
Questa cartella contiene 3 file utili al repository.

## File
### `auto-wiki-docs.yml`
- Introduzione: File di configurazione/dati usato dal progetto (`auto-wiki-docs.yml`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/.github/workflows/auto-wiki-docs.yml`

### `ci.yml`
- Introduzione: File di configurazione/dati usato dal progetto (`ci.yml`).
- Metodi/Funzioni:
  - `platform_for_arch`: funzione/metodo definito nel file per supportare la logica descritta.
  - `success`: funzione/metodo definito nel file per supportare la logica descritta.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/.github/workflows/ci.yml`

### `release.yml`
- Introduzione: File di configurazione/dati usato dal progetto (`release.yml`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/.github/workflows/release.yml`

---

## third_party/aasdk/.vscode

_Sorgente: `third_party/aasdk/.vscode/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/.vscode`

## Scopo
Questa cartella contiene 1 file utili al repository.

## File
### `tasks.json`
- Introduzione: File di configurazione/dati usato dal progetto (`tasks.json`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/.vscode/tasks.json`

---

## third_party/aasdk

_Sorgente: `third_party/aasdk/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk`

## Scopo
Libreria AASDK vendorizzata: implementa protocolli Android Auto (canali, trasporto USB/TCP, protobuf services).

## File
### `CMakeLists.txt`
- Introduzione: build principale libreria aasdk.
- Metodi/Funzioni: target lib/test/package e opzioni compilazione.
- Dipendenze interne: `src/`, `include/`, `protobuf/`, `cmake_modules/`.

### `Config.cmake.in`, `aasdk.pc.in`
- Introduzione: template packaging/export configurazione.
- Metodi/Funzioni: variabili install/export CMake/pkg-config.
- Dipendenze interne: installazione libreria aasdk.

### `Readme.md`, `BUILD*.md`, `TESTING.md`, `PACKAGING.md`, `TROUBLESHOOTING.md`, `DOCUMENTATION*.md`, `QUICK_REFERENCE.md`
- Introduzione: documentazione sviluppo/build/test/migrazioni.
- Metodi/Funzioni: n/a.
- Dipendenze interne: riferimenti a `src`, `include`, `unit_test`.

### `build.sh`, `build.ps1`, `build.bat`, `build-wsl.sh`, `docker-build.sh`, `test-*.sh`, `migrate_to_modern_logger.sh`
- Introduzione: script build/test/maintenance.
- Metodi/Funzioni: orchestration shell/powershell.
- Dipendenze interne: CMake aasdk, directory test/docs.

### `test_logger.cpp`, `test_migration.cpp`
- Introduzione: programmi di test/smoke.
- Metodi/Funzioni: verifica logger/migrazione.
- Dipendenze interne: API aasdk in `include/aasdk/*`.

### `Dockerfile`, `docker-compose.yml`, `Doxyfile`, `CMakePresets.json`, `RELEASE.txt`
- Introduzione: tooling container/docs/release.
- Metodi/Funzioni: n/a o configurazione build.
- Dipendenze interne: build/documentazione aasdk.

---

## third_party/aasdk/aasdk_proto

_Sorgente: `third_party/aasdk/aasdk_proto/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/aasdk_proto`

## Scopo
Output protobuf generato/usato da aasdk per enum e messaggi compilati.

## File
- File `*.pb.h` / `*.pb.cc` (se presenti):
  - Introduzione: classi C++ generate da schema `.proto`.
  - Metodi/Funzioni: accessor campi protobuf, serializzazione/deserializzazione.
  - Dipendenze interne: `include/aasdk/*`, `src/Channel/*`, `src/Messenger/*`.

---

## third_party/aasdk/buildenv

_Sorgente: `third_party/aasdk/buildenv/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/buildenv`

## Scopo
Questa cartella contiene 5 file utili al repository.

## File
### `cross-compile.md`
- Introduzione: Documentazione testuale o note operative (`cross-compile.md`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/buildenv/cross-compile.md`

### `docker-compose.yml`
- Introduzione: File di configurazione/dati usato dal progetto (`docker-compose.yml`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/buildenv/docker-compose.yml`

### `Dockerfile`
- Introduzione: File di supporto del repository (`Dockerfile`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/buildenv/Dockerfile`

### `entrypoint.sh`
- Introduzione: Script shell per build, installazione o automazione (`entrypoint.sh`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/buildenv/entrypoint.sh`

### `patch-libboost-log-deb.sh`
- Introduzione: Script shell per build, installazione o automazione (`patch-libboost-log-deb.sh`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/buildenv/patch-libboost-log-deb.sh`

---

## third_party/aasdk/cert

_Sorgente: `third_party/aasdk/cert/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/cert`

## Scopo
Questa cartella contiene 4 file utili al repository.

## File
### `.gitignore`
- Introduzione: File di supporto del repository (`.gitignore`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/cert/.gitignore`

### `headunit.crt`
- Introduzione: File di supporto del repository (`headunit.crt`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/cert/headunit.crt`

### `headunit.key`
- Introduzione: File di supporto del repository (`headunit.key`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/cert/headunit.key`

### `README.md`
- Introduzione: Documentazione testuale o note operative (`README.md`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/cert/README.md`

---

## third_party/aasdk/cmake_modules

_Sorgente: `third_party/aasdk/cmake_modules/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/cmake_modules`

## Scopo
Moduli CMake interni aasdk per dependency discovery e utility build/test.

## File
- `Find*.cmake`:
  - Introduzione: rilevamento dipendenze (OpenSSL, protobuf, USB, ecc.).
  - Metodi/Funzioni: variabili/import target CMake.
  - Dipendenze interne: `third_party/aasdk/CMakeLists.txt`.
- moduli utility (`functions`/helper equivalenti):
  - Introduzione: macro riusabili per target, test, packaging.
  - Metodi/Funzioni: funzioni CMake di configurazione.
  - Dipendenze interne: build di `src`, `unit_test`, `protobuf`.

---

## third_party/aasdk/debian

_Sorgente: `third_party/aasdk/debian/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/debian`

## Scopo
Questa cartella contiene 2 file utili al repository.

## File
### `postinst`
- Introduzione: File di supporto del repository (`postinst`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/debian/postinst`

### `prerm`
- Introduzione: File di supporto del repository (`prerm`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/debian/prerm`

---

## third_party/aasdk/docs

_Sorgente: `third_party/aasdk/docs/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/docs`

## Scopo
Questa cartella contiene 3 file utili al repository.

## File
### `common.proto`
- Introduzione: Schema Protocol Buffers per messaggi/interfacce (`common.proto`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/docs/common.proto`

### `protos.proto`
- Introduzione: Schema Protocol Buffers per messaggi/interfacce (`protos.proto`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/docs/protos.proto`

### `README.md`
- Introduzione: Documentazione testuale o note operative (`README.md`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/docs/README.md`

---

## third_party/aasdk/docs/doxybook

_Sorgente: `third_party/aasdk/docs/doxybook/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/docs/doxybook`

## Scopo
Questa cartella contiene 1 file utili al repository.

## File
### `config.json`
- Introduzione: File di configurazione/dati usato dal progetto (`config.json`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/docs/doxybook/config.json`

---

## third_party/aasdk/include

_Sorgente: `third_party/aasdk/include/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/include`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/aasdk/include/aasdk/Channel/Bluetooth

_Sorgente: `third_party/aasdk/include/aasdk/Channel/Bluetooth/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/Bluetooth

## Scopo
Header del servizio canale Bluetooth.

## File
- Interfacce `I*Service.hpp` / `I*ServiceEventHandler.hpp`:
  - Introduzione: contratto servizio e callback eventi canale.
  - Metodi/Funzioni: receive/send e notifiche parsed message.
  - Dipendenze interne: implementazioni in `third_party/aasdk/src/Channel/Bluetooth/*`.
- `*Service.hpp`:
  - Introduzione: classe concreta servizio canale Bluetooth.
  - Metodi/Funzioni: message handler, parsing protobuf, invio risposte.
  - Dipendenze interne: `Channel.hpp`, messenger, protobuf service Bluetooth.

---

## third_party/aasdk/include/aasdk/Channel/Control

_Sorgente: `third_party/aasdk/include/aasdk/Channel/Control/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/Control

## Scopo
Header del servizio canale Control.

## File
- Interfacce `I*Service.hpp` / `I*ServiceEventHandler.hpp`:
  - Introduzione: contratto servizio e callback eventi canale.
  - Metodi/Funzioni: receive/send e notifiche parsed message.
  - Dipendenze interne: implementazioni in `third_party/aasdk/src/Channel/Control/*`.
- `*Service.hpp`:
  - Introduzione: classe concreta servizio canale Control.
  - Metodi/Funzioni: message handler, parsing protobuf, invio risposte.
  - Dipendenze interne: `Channel.hpp`, messenger, protobuf service Control.

---

## third_party/aasdk/include/aasdk/Channel

_Sorgente: `third_party/aasdk/include/aasdk/Channel/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/include/aasdk/Channel`

## Scopo
Base API del layer Channel Android Auto.

## File
### `IChannel.hpp`
- Introduzione: interfaccia astratta canale.
- Metodi/Funzioni: contratto send/receive/error handling.
- Dipendenze interne: implementazioni in `src/Channel/*`.

### `Channel.hpp`
- Introduzione: implementazione base canale con messenger e channel id.
- Metodi/Funzioni: init canale e send comune.
- Dipendenze interne: `src/Channel/Channel.cpp`, servizi channel-specific.

### `Promise.hpp`
- Introduzione: promise specifiche layer channel.
- Metodi/Funzioni: callback resolve/reject su operazioni asincrone canale.
- Dipendenze interne: servizi `Channel/*Service*`.

---

## third_party/aasdk/include/aasdk/Channel/GenericNotification

_Sorgente: `third_party/aasdk/include/aasdk/Channel/GenericNotification/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/GenericNotification

## Scopo
Header del servizio canale GenericNotification.

## File
- Interfacce `I*Service.hpp` / `I*ServiceEventHandler.hpp`:
  - Introduzione: contratto servizio e callback eventi canale.
  - Metodi/Funzioni: receive/send e notifiche parsed message.
  - Dipendenze interne: implementazioni in `third_party/aasdk/src/Channel/GenericNotification/*`.
- `*Service.hpp`:
  - Introduzione: classe concreta servizio canale GenericNotification.
  - Metodi/Funzioni: message handler, parsing protobuf, invio risposte.
  - Dipendenze interne: `Channel.hpp`, messenger, protobuf service GenericNotification.

---

## third_party/aasdk/include/aasdk/Channel/InputSource

_Sorgente: `third_party/aasdk/include/aasdk/Channel/InputSource/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/InputSource

## Scopo
Header del servizio canale InputSource.

## File
- Interfacce `I*Service.hpp` / `I*ServiceEventHandler.hpp`:
  - Introduzione: contratto servizio e callback eventi canale.
  - Metodi/Funzioni: receive/send e notifiche parsed message.
  - Dipendenze interne: implementazioni in `third_party/aasdk/src/Channel/InputSource/*`.
- `*Service.hpp`:
  - Introduzione: classe concreta servizio canale InputSource.
  - Metodi/Funzioni: message handler, parsing protobuf, invio risposte.
  - Dipendenze interne: `Channel.hpp`, messenger, protobuf service InputSource.

---

## third_party/aasdk/include/aasdk/Channel/MediaBrowser

_Sorgente: `third_party/aasdk/include/aasdk/Channel/MediaBrowser/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/MediaBrowser

## Scopo
Header del servizio canale MediaBrowser.

## File
- Interfacce `I*Service.hpp` / `I*ServiceEventHandler.hpp`:
  - Introduzione: contratto servizio e callback eventi canale.
  - Metodi/Funzioni: receive/send e notifiche parsed message.
  - Dipendenze interne: implementazioni in `third_party/aasdk/src/Channel/MediaBrowser/*`.
- `*Service.hpp`:
  - Introduzione: classe concreta servizio canale MediaBrowser.
  - Metodi/Funzioni: message handler, parsing protobuf, invio risposte.
  - Dipendenze interne: `Channel.hpp`, messenger, protobuf service MediaBrowser.

---

## third_party/aasdk/include/aasdk/Channel/MediaPlaybackStatus

_Sorgente: `third_party/aasdk/include/aasdk/Channel/MediaPlaybackStatus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/MediaPlaybackStatus

## Scopo
Header del servizio canale MediaPlaybackStatus.

## File
- Interfacce `I*Service.hpp` / `I*ServiceEventHandler.hpp`:
  - Introduzione: contratto servizio e callback eventi canale.
  - Metodi/Funzioni: receive/send e notifiche parsed message.
  - Dipendenze interne: implementazioni in `third_party/aasdk/src/Channel/MediaPlaybackStatus/*`.
- `*Service.hpp`:
  - Introduzione: classe concreta servizio canale MediaPlaybackStatus.
  - Metodi/Funzioni: message handler, parsing protobuf, invio risposte.
  - Dipendenze interne: `Channel.hpp`, messenger, protobuf service MediaPlaybackStatus.

---

## third_party/aasdk/include/aasdk/Channel/MediaSink/Audio/Channel

_Sorgente: `third_party/aasdk/include/aasdk/Channel/MediaSink/Audio/Channel/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/MediaSink/Audio/Channel

## Scopo
Sottocartella supporto channel audio sink.

## File
- Nessun file diretto oltre alla documentazione.

---

## third_party/aasdk/include/aasdk/Channel/MediaSink/Audio

_Sorgente: `third_party/aasdk/include/aasdk/Channel/MediaSink/Audio/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/MediaSink/Audio

## Scopo
Header servizio AudioMediaSink.

## File
### `IAudioMediaSinkService.hpp`
- Introduzione: interfaccia servizio sink audio.
- Metodi/Funzioni: receive/send audio channel.
- Dipendenze interne: `AudioMediaSinkService.hpp`, `src/.../AudioMediaSinkService.cpp`.

### `IAudioMediaSinkServiceEventHandler.hpp`
- Introduzione: callback handler eventi sink audio.
- Metodi/Funzioni: notifiche pacchetti audio/errori.
- Dipendenze interne: servizio sink audio.

### `AudioMediaSinkService.hpp`
- Introduzione: implementazione concreta servizio sink audio.
- Metodi/Funzioni: parse payload audio e dispatch handler.
- Dipendenze interne: `Channel.hpp`, protobuf media sink.

---

## third_party/aasdk/include/aasdk/Channel/MediaSink

_Sorgente: `third_party/aasdk/include/aasdk/Channel/MediaSink/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/MediaSink

## Scopo
Contenitore servizi MediaSink (audio/video).

## File
- Nessun header diretto oltre alla documentazione; contenuto nelle sottocartelle `Audio/` e `Video/`.

---

## third_party/aasdk/include/aasdk/Channel/MediaSink/Video/Channel

_Sorgente: `third_party/aasdk/include/aasdk/Channel/MediaSink/Video/Channel/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/MediaSink/Video/Channel

## Scopo
Sottocartella placeholder per specializzazioni channel video.

## File
- Nessun file diretto oltre alla documentazione.

---

## third_party/aasdk/include/aasdk/Channel/MediaSink/Video

_Sorgente: `third_party/aasdk/include/aasdk/Channel/MediaSink/Video/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/MediaSink/Video

## Scopo
Header servizio VideoMediaSink.

## File
### `IVideoMediaSinkService.hpp`
- Introduzione: interfaccia servizio sink video.
- Metodi/Funzioni: API receive/send video frames.
- Dipendenze interne: `VideoMediaSinkService.hpp`, implementazione src.

### `IVideoMediaSinkServiceEventHandler.hpp`
- Introduzione: callback eventi sink video.
- Metodi/Funzioni: notifiche frame/control/error.
- Dipendenze interne: servizio video sink.

### `VideoMediaSinkService.hpp`
- Introduzione: classe concreta servizio sink video.
- Metodi/Funzioni: parsing payload video e dispatch handler.
- Dipendenze interne: protobuf media/video.

---

## third_party/aasdk/include/aasdk/Channel/MediaSource/Audio

_Sorgente: `third_party/aasdk/include/aasdk/Channel/MediaSource/Audio/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/MediaSource/Audio

## Scopo
Header canale audio source (microfono).

## File
### `MicrophoneAudioChannel.hpp`
- Introduzione: dichiarazione canale audio microfono come source.
- Metodi/Funzioni: gestione stream audio in uscita.
- Dipendenze interne: `src/Channel/MediaSource/Audio/MicrophoneAudioChannel.cpp`.

---

## third_party/aasdk/include/aasdk/Channel/MediaSource

_Sorgente: `third_party/aasdk/include/aasdk/Channel/MediaSource/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/MediaSource

## Scopo
Header servizio MediaSource.

## File
### `IMediaSourceService.hpp`
- Introduzione: interfaccia servizio media source.
- Metodi/Funzioni: API stream sorgente e signaling.
- Dipendenze interne: `MediaSourceService.hpp`, src implementation.

### `IMediaSourceServiceEventHandler.hpp`
- Introduzione: callback eventi source.
- Metodi/Funzioni: notifiche richieste/errori.
- Dipendenze interne: `MediaSourceService`.

### `MediaSourceService.hpp`
- Introduzione: classe concreta servizio media source.
- Metodi/Funzioni: receive control e gestione invio payload source.
- Dipendenze interne: `src/Channel/MediaSource/MediaSourceService.cpp`.

---

## third_party/aasdk/include/aasdk/Channel/NavigationStatus

_Sorgente: `third_party/aasdk/include/aasdk/Channel/NavigationStatus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/NavigationStatus

## Scopo
Header del servizio canale NavigationStatus.

## File
- Interfacce `I*Service.hpp` / `I*ServiceEventHandler.hpp`:
  - Introduzione: contratto servizio e callback eventi canale.
  - Metodi/Funzioni: receive/send e notifiche parsed message.
  - Dipendenze interne: implementazioni in `third_party/aasdk/src/Channel/NavigationStatus/*`.
- `*Service.hpp`:
  - Introduzione: classe concreta servizio canale NavigationStatus.
  - Metodi/Funzioni: message handler, parsing protobuf, invio risposte.
  - Dipendenze interne: `Channel.hpp`, messenger, protobuf service NavigationStatus.

---

## third_party/aasdk/include/aasdk/Channel/PhoneStatus

_Sorgente: `third_party/aasdk/include/aasdk/Channel/PhoneStatus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/PhoneStatus

## Scopo
Header del servizio canale PhoneStatus.

## File
- Interfacce `I*Service.hpp` / `I*ServiceEventHandler.hpp`:
  - Introduzione: contratto servizio e callback eventi canale.
  - Metodi/Funzioni: receive/send e notifiche parsed message.
  - Dipendenze interne: implementazioni in `third_party/aasdk/src/Channel/PhoneStatus/*`.
- `*Service.hpp`:
  - Introduzione: classe concreta servizio canale PhoneStatus.
  - Metodi/Funzioni: message handler, parsing protobuf, invio risposte.
  - Dipendenze interne: `Channel.hpp`, messenger, protobuf service PhoneStatus.

---

## third_party/aasdk/include/aasdk/Channel/Radio

_Sorgente: `third_party/aasdk/include/aasdk/Channel/Radio/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/Radio

## Scopo
Header del servizio canale Radio.

## File
- Interfacce `I*Service.hpp` / `I*ServiceEventHandler.hpp`:
  - Introduzione: contratto servizio e callback eventi canale.
  - Metodi/Funzioni: receive/send e notifiche parsed message.
  - Dipendenze interne: implementazioni in `third_party/aasdk/src/Channel/Radio/*`.
- `*Service.hpp`:
  - Introduzione: classe concreta servizio canale Radio.
  - Metodi/Funzioni: message handler, parsing protobuf, invio risposte.
  - Dipendenze interne: `Channel.hpp`, messenger, protobuf service Radio.

---

## third_party/aasdk/include/aasdk/Channel/SensorSource

_Sorgente: `third_party/aasdk/include/aasdk/Channel/SensorSource/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/SensorSource

## Scopo
Header del servizio canale SensorSource.

## File
- Interfacce `I*Service.hpp` / `I*ServiceEventHandler.hpp`:
  - Introduzione: contratto servizio e callback eventi canale.
  - Metodi/Funzioni: receive/send e notifiche parsed message.
  - Dipendenze interne: implementazioni in `third_party/aasdk/src/Channel/SensorSource/*`.
- `*Service.hpp`:
  - Introduzione: classe concreta servizio canale SensorSource.
  - Metodi/Funzioni: message handler, parsing protobuf, invio risposte.
  - Dipendenze interne: `Channel.hpp`, messenger, protobuf service SensorSource.

---

## third_party/aasdk/include/aasdk/Channel/VendorExtension

_Sorgente: `third_party/aasdk/include/aasdk/Channel/VendorExtension/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/VendorExtension

## Scopo
Header del servizio canale VendorExtension.

## File
- Interfacce `I*Service.hpp` / `I*ServiceEventHandler.hpp`:
  - Introduzione: contratto servizio e callback eventi canale.
  - Metodi/Funzioni: receive/send e notifiche parsed message.
  - Dipendenze interne: implementazioni in `third_party/aasdk/src/Channel/VendorExtension/*`.
- `*Service.hpp`:
  - Introduzione: classe concreta servizio canale VendorExtension.
  - Metodi/Funzioni: message handler, parsing protobuf, invio risposte.
  - Dipendenze interne: `Channel.hpp`, messenger, protobuf service VendorExtension.

---

## third_party/aasdk/include/aasdk/Channel/WifiProjection

_Sorgente: `third_party/aasdk/include/aasdk/Channel/WifiProjection/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/include/aasdk/Channel/WifiProjection

## Scopo
Header del servizio canale WifiProjection.

## File
- Interfacce `I*Service.hpp` / `I*ServiceEventHandler.hpp`:
  - Introduzione: contratto servizio e callback eventi canale.
  - Metodi/Funzioni: receive/send e notifiche parsed message.
  - Dipendenze interne: implementazioni in `third_party/aasdk/src/Channel/WifiProjection/*`.
- `*Service.hpp`:
  - Introduzione: classe concreta servizio canale WifiProjection.
  - Metodi/Funzioni: message handler, parsing protobuf, invio risposte.
  - Dipendenze interne: `Channel.hpp`, messenger, protobuf service WifiProjection.

---

## third_party/aasdk/include/aasdk/Common

_Sorgente: `third_party/aasdk/include/aasdk/Common/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/include/aasdk/Common`

## Scopo
Tipi e logging comuni libreria aasdk.

## File
### `Data.hpp`
- Introduzione: buffer/data types comuni.
- Metodi/Funzioni: wrapper accesso dati e utility serialization.
- Dipendenze interne: `src/Common/Data.cpp`, Messenger/Transport/Channel.

### `Log.hpp`
- Introduzione: macro logging legacy aasdk.
- Metodi/Funzioni: macro livelli log.
- Dipendenze interne: tutti i moduli.

### `ModernLogger.hpp`
- Introduzione: API logging moderna.
- Metodi/Funzioni: logger type-safe e configurazione sink.
- Dipendenze interne: `src/Common/ModernLogger.cpp`, channel/services.

---

## third_party/aasdk/include/aasdk

_Sorgente: `third_party/aasdk/include/aasdk/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/include/aasdk`

## Scopo
Header pubblici principali della libreria aasdk.

## File
### `BackwardCompatibility.hpp`
- Introduzione: alias/compat layer per versioni precedenti dell'API.
- Metodi/Funzioni: macro/type alias di compatibilità.
- Dipendenze interne: include trasversale usato dai moduli aasdk.

### `Version.hpp`
- Introduzione: costanti/version API libreria.
- Metodi/Funzioni: accessor versioning compile-time.
- Dipendenze interne: packaging/build e diagnostica runtime.

### `Version.hpp.in`
- Introduzione: template CMake per generazione `Version.hpp`.
- Metodi/Funzioni: placeholder version string.
- Dipendenze interne: CMake aasdk.

---

## third_party/aasdk/include/aasdk/Error

_Sorgente: `third_party/aasdk/include/aasdk/Error/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/include/aasdk/Error`

## Scopo
Modello errori aasdk.

## File
### `ErrorCode.hpp`
- Introduzione: enum codici errore.
- Metodi/Funzioni: definizione categorie errori transport/protocol/parse.
- Dipendenze interne: tutti i moduli runtime.

### `Error.hpp`
- Introduzione: classe errore con codice e contesto.
- Metodi/Funzioni: costruzione, accesso codice, descrizione.
- Dipendenze interne: `src/Error/Error.cpp`.

---

## third_party/aasdk/include/aasdk/IO

_Sorgente: `third_party/aasdk/include/aasdk/IO/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/include/aasdk/IO`

## Scopo
Astrazioni asincrone I/O di aasdk (context wrapper e promise).

## File
### `IOContextWrapper.hpp`
- Introduzione: wrapper del contesto I/O (boost::asio) per post/dispatch/defer centralizzati.
- Metodi/Funzioni: scheduling task asincroni e integrazione con strand/thread.
- Dipendenze interne: `src/IO/IOContextWrapper.cpp`, `Messenger`, `Transport`, `USB`.

### `Promise.hpp`
- Introduzione: implementazione promise/deferred usata da servizi/channel aasdk.
- Metodi/Funzioni: `then`, `resolve`, `reject`, chaining/transform.
- Dipendenze interne: `PromiseLink.hpp`, moduli channel e messenger.

### `PromiseLink.hpp`
- Introduzione: collegamento tra promise per chaining asincrono.
- Metodi/Funzioni: propagazione resolve/reject tra promise correlate.
- Dipendenze interne: `Promise.hpp`.

---

## third_party/aasdk/include/aasdk/Messenger

_Sorgente: `third_party/aasdk/include/aasdk/Messenger/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/include/aasdk/Messenger`

## Scopo
Protocol framing/messaging asincrono su canali Android Auto.

## File
- `ChannelId.hpp`, `ServiceId.hpp`, `MessageType.hpp`, `EncryptionType.hpp`, `FrameType.hpp`, `FrameSizeType.hpp`:
  - Introduzione: enum/identificativi protocollo.
  - Metodi/Funzioni: tipi forti per framing/routing.
  - Dipendenze interne: `src/Messenger/*.cpp`, `Channel/*`.
- `FrameHeader.hpp`, `FrameSize.hpp`, `MessageId.hpp`, `Timestamp.hpp`:
  - Introduzione: strutture header/metadata messaggi.
  - Metodi/Funzioni: parse/build header e conversioni.
  - Dipendenze interne: `Message(In|Out)Stream`, `Messenger.cpp`.
- `Message.hpp`:
  - Introduzione: contenitore payload messaggio.
  - Metodi/Funzioni: insert/extract payload e metadata.
  - Dipendenze interne: `src/Messenger/Message.cpp`.
- `IMessageInStream.hpp`, `MessageInStream.hpp`, `IMessageOutStream.hpp`, `MessageOutStream.hpp`:
  - Introduzione: stream decode/encode messaggi.
  - Metodi/Funzioni: serialization/deserialization frame.
  - Dipendenze interne: implementazioni `src/Messenger/Message*Stream.cpp`.
- `IMessenger.hpp`, `Messenger.hpp`:
  - Introduzione: API e implementazione messenger centrale.
  - Metodi/Funzioni: enqueue send/receive, dispatch code paths.
  - Dipendenze interne: `src/Messenger/Messenger.cpp`, Channel layer.
- `ChannelReceiveMessageQueue.hpp`, `ChannelReceivePromiseQueue.hpp`:
  - Introduzione: code per ricezioni per canale.
  - Metodi/Funzioni: enqueue/dequeue e matching promise-message.
  - Dipendenze interne: `Messenger.cpp`.
- `ICryptor.hpp`, `Cryptor.hpp`:
  - Introduzione: cifratura/decifratura payload.
  - Metodi/Funzioni: encrypt/decrypt frame data.
  - Dipendenze interne: `src/Messenger/Cryptor.cpp`.
- `Promise.hpp`:
  - Introduzione: promise dedicate messenger operations.
  - Metodi/Funzioni: callback success/failure send/receive.
  - Dipendenze interne: `Channel`/`Messenger` runtime.

---

## third_party/aasdk/include/aasdk/TCP

_Sorgente: `third_party/aasdk/include/aasdk/TCP/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/include/aasdk/TCP`

## Scopo
Wrapper endpoint e trasporto TCP.

## File
### `ITCPEndpoint.hpp` / `TCPEndpoint.hpp`
- Introduzione: interfaccia e implementazione endpoint TCP.
- Metodi/Funzioni: connect/read/write/shutdown endpoint.
- Dipendenze interne: `src/TCP/TCPEndpoint.cpp`, `Transport/TCPTransport`.

### `ITCPWrapper.hpp` / `TCPWrapper.hpp`
- Introduzione: astrazione wrapper socket TCP.
- Metodi/Funzioni: factory endpoint e integrazione io_service.
- Dipendenze interne: `src/TCP/TCPWrapper.cpp`.

---

## third_party/aasdk/include/aasdk/Transport

_Sorgente: `third_party/aasdk/include/aasdk/Transport/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/include/aasdk/Transport`

## Scopo
Layer trasporto (TCP/USB) e TLS wrapper.

## File
### `ITransport.hpp` / `Transport.hpp`
- Introduzione: interfaccia e implementazione base trasporto.
- Metodi/Funzioni: start/stop trasporto, read/write frame.
- Dipendenze interne: `src/Transport/Transport.cpp`.

### `TCPTransport.hpp` / `USBTransport.hpp`
- Introduzione: trasporti concreti per TCP e USB.
- Metodi/Funzioni: bind endpoint/device e flusso dati.
- Dipendenze interne: `src/Transport/TCPTransport.cpp`, `USBTransport.cpp`.

### `DataSink.hpp`
- Introduzione: sink dati ricevuti dal trasporto.
- Metodi/Funzioni: callback consumatore dati.
- Dipendenze interne: `src/Transport/DataSink.cpp`.

### `ISSLWrapper.hpp` / `SSLWrapper.hpp`
- Introduzione: astrazione TLS/SSL.
- Metodi/Funzioni: handshake, encrypt/decrypt, session mgmt.
- Dipendenze interne: `src/Transport/SSLWrapper.cpp`.

---

## third_party/aasdk/include/aasdk/USB

_Sorgente: `third_party/aasdk/include/aasdk/USB/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/include/aasdk/USB`

## Scopo
Stack USB/AOAP per rilevamento device Android Auto e passaggio accessory mode.

## File
- `IUSBWrapper.hpp`, `USBWrapper.hpp`:
  - Introduzione: wrapper libusb.
  - Metodi/Funzioni: enumerazione/open/read/write endpoint.
  - Dipendenze interne: `src/USB/USBWrapper.cpp`.
- `IUSBEndpoint.hpp`, `USBEndpoint.hpp`:
  - Introduzione: endpoint USB astratto/concreto.
  - Metodi/Funzioni: trasferimenti bulk/control.
  - Dipendenze interne: `src/USB/USBEndpoint.cpp`.
- `IAOAPDevice.hpp`, `AOAPDevice.hpp`:
  - Introduzione: rappresentazione device AOAP.
  - Metodi/Funzioni: query capability e gestione mode switch.
  - Dipendenze interne: `src/USB/AOAPDevice.cpp`.
- `IAccessoryModeQuery*.hpp`, `AccessoryModeQuery*.hpp`, `AccessoryMode*Query*.hpp`:
  - Introduzione: query chain per protocollo Accessory Mode.
  - Metodi/Funzioni: costruzione/esecuzione step query (version, send string, start).
  - Dipendenze interne: `src/USB/AccessoryMode*.cpp`.
- `IConnectedAccessoriesEnumerator.hpp`, `ConnectedAccessoriesEnumerator.hpp`:
  - Introduzione: enumerazione accessori connessi.
  - Metodi/Funzioni: discovery device compatibili.
  - Dipendenze interne: `src/USB/ConnectedAccessoriesEnumerator.cpp`.
- `IUSBHub.hpp`, `USBHub.hpp`:
  - Introduzione: hub/controller connessioni USB.
  - Metodi/Funzioni: monitor attach/detach e callback eventi.
  - Dipendenze interne: `src/USB/USBHub.cpp`.
- enum header `AccessoryModeQueryType.hpp`, `AccessoryModeSendStringType.hpp`:
  - Introduzione: tipi query/stringhe protocollo AOAP.
  - Metodi/Funzioni: definizione costanti.
  - Dipendenze interne: query implementations.

---

## third_party/aasdk/protobuf

_Sorgente: `third_party/aasdk/protobuf/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf`

## Scopo
Definizioni Protocol Buffers Android Auto usate da aasdk.

## File
### `CMakeLists.txt`
- Introduzione: build/generazione codice protobuf.
- Metodi/Funzioni: target protoc e export.
- Dipendenze interne: `aap_protobuf/**`, include generated headers.

### `Config.cmake.in`
- Introduzione: template export config package protobuf.
- Metodi/Funzioni: variabili install/config.
- Dipendenze interne: packaging aasdk.

### `README.md`
- Introduzione: guida struttura protobuf aasdk.
- Metodi/Funzioni: n/a.
- Dipendenze interne: cartelle `aap_protobuf/*`.

---

## third_party/aasdk/protobuf/aap_protobuf

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf`

## Scopo
Namespace protobuf principale Android Auto Protocol.

## File
- Nessun file diretto oltre alla documentazione; sottocartelle:
  - `aaw`: handshake/wifi protocol add-ons
  - `channel`: messaggi canale control/vendor
  - `service`: messaggi per servizi AA (media, nav, phone, ...)
  - `shared`: tipi condivisi tra servizi

---

## third_party/aasdk/protobuf/aap_protobuf/aaw

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/aaw/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/aaw`

## Scopo
Messaggi protobuf AAW (wireless/wifi handshake).

## File
- `MessageId.proto`, `Status.proto`: enum/id e stati protocollo.
- `WifiConnectionStatus.proto`, `WifiInfoRequest.proto`, `WifiInfoResponse.proto`:
  - Introduzione: scambio informazioni connessione Wi-Fi.
- `WifiStartRequest.proto`, `WifiStartResponse.proto`:
  - Introduzione: avvio sessione Wi-Fi.
- `WifiVersionRequest.proto`, `WifiVersionResponse.proto`:
  - Introduzione: negoziazione versione protocollo.

Per tutti i file:
- Metodi/Funzioni: definizione schema messaggi protobuf.
- Dipendenze interne: canali/service wifi projection (`Channel/WifiProjection`).

---

## third_party/aasdk/protobuf/aap_protobuf/channel

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/channel/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/channel`

## Scopo
Messaggi protobuf livello channel.

## File
- Nessun file diretto; messaggi contenuti in `control/`.

---

## third_party/aasdk/protobuf/aap_protobuf/channel/control

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/channel/control/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/channel/control`

## Scopo
Schema control channel e diagnostica vendor/cluster.

## File
- `SessionConfiguration.proto`, `InstrumentClusterInput.proto`, `LocationCharacterization.proto`:
  - Introduzione: configurazione sessione e input cluster.
- `Gal*.proto`, `GoogleDiagnostics*.proto`:
  - Introduzione: messaggi diagnostica/verifica vendor Google Automotive Layer.
- `GalConstants.proto`, `GalVerification*proto`:
  - Introduzione: costanti e messaggi test/verification.

Per tutti i file:
- Metodi/Funzioni: definizione tipi protobuf.
- Dipendenze interne: `service/control/*`, `Channel/Control`.

---

## third_party/aasdk/protobuf/aap_protobuf/service

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service`

## Scopo
Schema protobuf per tutti i servizi Android Auto.

## File
### `Service.proto`
- Introduzione: definizione base service descriptor/message envelope.
- Metodi/Funzioni: schema comune servizi.
- Dipendenze interne: tutti i moduli in `service/*` e `Channel/*Service`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/bluetooth

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/bluetooth/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/bluetooth`

## Scopo
Schema protobuf del servizio `bluetooth`.

## File
### `BluetoothMessageId.proto`
- Introduzione: identificativi dei messaggi del servizio `bluetooth`.
- Metodi/Funzioni: enum/id protobuf.
- Dipendenze interne: parser nei moduli `Channel/*` e servizi runtime aasdk.

### `BluetoothService.proto`
- Introduzione: definizione service/message envelope per `bluetooth`.
- Metodi/Funzioni: schema protobuf richieste/risposte.
- Dipendenze interne: moduli channel/service runtime aasdk.

---

## third_party/aasdk/protobuf/aap_protobuf/service/bluetooth/message

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/bluetooth/message/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/bluetooth/message`

## Scopo
Schema messaggi protobuf della sotto-area `bluetooth/message`.

## File
- File presenti: BluetoothAuthenticationData.proto, BluetoothAuthenticationResult.proto, BluetoothPairingMethod.proto, BluetoothPairingRequest.proto, BluetoothPairingResponse.proto
- Introduzione: definiscono payload, eventi ed enum del dominio `bluetooth/message`.
- Metodi/Funzioni: n/a (schema `.proto`).
- Dipendenze interne: parser nei servizi `Channel/*` e runtime `src/Channel/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/control

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/control/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/protobuf/aap_protobuf/service/control

## Scopo
Schema protobuf del servizio control.

## File
### `ControlMessageType.proto`
- Introduzione: enum dei message type control.
- Metodi/Funzioni: id messaggi control channel.
- Dipendenze interne: `service/control/message/*`, `Channel/Control`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/control/message

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/control/message/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/control/message`

## Scopo
Schema messaggi protobuf della sotto-area `control/message`.

## File
- File presenti: AudioFocusNotification.proto, AudioFocusRequest.proto, AudioFocusRequestNotification.proto, AudioFocusRequestType.proto, AudioFocusStateType.proto, AuthResponse.proto, BatteryStatusNotification.proto, ByeByeReason.proto, ByeByeRequest.proto, ByeByeResponse.proto, CallAvailabilityStatus.proto, CarConnectedDevices.proto, CarConnectedDevicesRequest.proto, ChannelCloseNotification.proto, ChannelOpenRequest.proto, ChannelOpenResponse.proto, ConnectedDevice.proto, ConnectionConfiguration.proto, DriverPosition.proto, FragInfo.proto, HeadUnitInfo.proto, NavFocusNotification.proto, NavFocusRequestNotification.proto, NavFocusType.proto, PingConfiguration.proto, PingRequest.proto, PingResponse.proto, ServiceDiscoveryRequest.proto, ServiceDiscoveryResponse.proto, ServiceDiscoveryUpdate.proto, UpdateUiConfigReply.proto, UpdateUiConfigRequest.proto, UserSwitchRequest.proto, UserSwitchResponse.proto, UserSwitchStatus.proto, VersionRequestOptions.proto, VersionResponseOptions.proto, VoiceSessionNotification.proto, VoiceSessionStatus.proto, WirelessTcpConfiguration.proto
- Introduzione: definiscono payload, eventi ed enum del dominio `control/message`.
- Metodi/Funzioni: n/a (schema `.proto`).
- Dipendenze interne: parser nei servizi `Channel/*` e runtime `src/Channel/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/genericnotification

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/genericnotification/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/genericnotification`

## Scopo
Schema protobuf del servizio `genericnotification`.

## File
### `GenericNotificationMessageId.proto`
- Introduzione: identificativi dei messaggi del servizio `genericnotification`.
- Metodi/Funzioni: enum/id protobuf.
- Dipendenze interne: parser nei moduli `Channel/*` e servizi runtime aasdk.

### `GenericNotificationService.proto`
- Introduzione: definizione service/message envelope per `genericnotification`.
- Metodi/Funzioni: schema protobuf richieste/risposte.
- Dipendenze interne: moduli channel/service runtime aasdk.

---

## third_party/aasdk/protobuf/aap_protobuf/service/genericnotification/message

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/genericnotification/message/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/genericnotification/message`

## Scopo
Schema messaggi protobuf della sotto-area `genericnotification/message`.

## File
- File presenti: GenericNotificationAck.proto, GenericNotificationMessage.proto, GenericNotificationSubscribe.proto, GenericNotificationUnsubscribe.proto
- Introduzione: definiscono payload, eventi ed enum del dominio `genericnotification/message`.
- Metodi/Funzioni: n/a (schema `.proto`).
- Dipendenze interne: parser nei servizi `Channel/*` e runtime `src/Channel/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/inputsource

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/inputsource/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/inputsource`

## Scopo
Schema protobuf del servizio `inputsource`.

## File
### `InputMessageId.proto`
- Introduzione: identificativi dei messaggi del servizio `inputsource`.
- Metodi/Funzioni: enum/id protobuf.
- Dipendenze interne: parser nei moduli `Channel/*` e servizi runtime aasdk.

### `InputSourceService.proto`
- Introduzione: definizione service/message envelope per `inputsource`.
- Metodi/Funzioni: schema protobuf richieste/risposte.
- Dipendenze interne: moduli channel/service runtime aasdk.

---

## third_party/aasdk/protobuf/aap_protobuf/service/inputsource/message

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/inputsource/message/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/inputsource/message`

## Scopo
Schema messaggi protobuf della sotto-area `inputsource/message`.

## File
- File presenti: AbsoluteEvent.proto, FeedbackEvent.proto, InputFeedback.proto, InputReport.proto, KeyEvent.proto, PointerAction.proto, RelativeEvent.proto, TouchEvent.proto, TouchScreenType.proto
- Introduzione: definiscono payload, eventi ed enum del dominio `inputsource/message`.
- Metodi/Funzioni: n/a (schema `.proto`).
- Dipendenze interne: parser nei servizi `Channel/*` e runtime `src/Channel/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/media

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/media/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/protobuf/aap_protobuf/service/media

## Scopo
Namespace media per schema source/sink/shared/video.

## File
- Nessun file diretto oltre alla documentazione; contenuto in sottocartelle `shared/`, `sink/`, `source/`, `video/`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/media/shared

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/media/shared/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/protobuf/aap_protobuf/service/media/shared

## Scopo
Tipi protobuf condivisi tra media source/sink.

## File
- Definizioni in `message/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/media/shared/message

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/media/shared/message/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/media/shared/message`

## Scopo
Schema messaggi protobuf della sotto-area `media/shared/message`.

## File
- File presenti: AudioConfiguration.proto, Config.proto, Insets.proto, MediaCodecType.proto, Setup.proto, Start.proto, Stop.proto, UiConfig.proto, UiTheme.proto
- Introduzione: definiscono payload, eventi ed enum del dominio `media/shared/message`.
- Metodi/Funzioni: n/a (schema `.proto`).
- Dipendenze interne: parser nei servizi `Channel/*` e runtime `src/Channel/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/media/sink

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/media/sink/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/protobuf/aap_protobuf/service/media/sink

## Scopo
Schema protobuf MediaSink.

## File
### `MediaMessageId.proto`
- Introduzione: id messaggi media sink.
- Metodi/Funzioni: enum protobuf.
- Dipendenze interne: `Channel/MediaSink/*`.

### `MediaSinkService.proto`
- Introduzione: schema servizio sink.
- Metodi/Funzioni: definizione payload/control sink.
- Dipendenze interne: parser canali media sink.

---

## third_party/aasdk/protobuf/aap_protobuf/service/media/sink/message

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/media/sink/message/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/media/sink/message`

## Scopo
Schema messaggi protobuf della sotto-area `media/sink/message`.

## File
- File presenti: AudioStreamType.proto, AudioUnderflowNotification.proto, DisplayType.proto, KeyBindingRequest.proto, KeyBindingResponse.proto, KeyCode.proto, VideoCodecResolutionType.proto, VideoConfiguration.proto, VideoFrameRateType.proto
- Introduzione: definiscono payload, eventi ed enum del dominio `media/sink/message`.
- Metodi/Funzioni: n/a (schema `.proto`).
- Dipendenze interne: parser nei servizi `Channel/*` e runtime `src/Channel/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/media/source

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/media/source/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/protobuf/aap_protobuf/service/media/source

## Scopo
Schema protobuf MediaSource.

## File
### `MediaSourceService.proto`
- Introduzione: schema servizio source.
- Metodi/Funzioni: definizione messaggi source.
- Dipendenze interne: `Channel/MediaSource/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/media/source/message

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/media/source/message/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/media/source/message`

## Scopo
Schema messaggi protobuf della sotto-area `media/source/message`.

## File
- File presenti: Ack.proto, MicrophoneRequest.proto, MicrophoneResponse.proto
- Introduzione: definiscono payload, eventi ed enum del dominio `media/source/message`.
- Metodi/Funzioni: n/a (schema `.proto`).
- Dipendenze interne: parser nei servizi `Channel/*` e runtime `src/Channel/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/media/video

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/media/video/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/protobuf/aap_protobuf/service/media/video

## Scopo
Schema protobuf specifico video media.

## File
- Definizioni in `message/*` (frame/config/eventi video).

---

## third_party/aasdk/protobuf/aap_protobuf/service/media/video/message

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/media/video/message/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/media/video/message`

## Scopo
Schema messaggi protobuf della sotto-area `media/video/message`.

## File
- File presenti: VideoFocusMode.proto, VideoFocusNotification.proto, VideoFocusReason.proto, VideoFocusRequestNotification.proto
- Introduzione: definiscono payload, eventi ed enum del dominio `media/video/message`.
- Metodi/Funzioni: n/a (schema `.proto`).
- Dipendenze interne: parser nei servizi `Channel/*` e runtime `src/Channel/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/mediabrowser

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/mediabrowser/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/mediabrowser`

## Scopo
Schema protobuf del servizio `mediabrowser`.

## File
### `MediaBrowserMessageId.proto`
- Introduzione: identificativi dei messaggi del servizio `mediabrowser`.
- Metodi/Funzioni: enum/id protobuf.
- Dipendenze interne: parser nei moduli `Channel/*` e servizi runtime aasdk.

### `MediaBrowserService.proto`
- Introduzione: definizione service/message envelope per `mediabrowser`.
- Metodi/Funzioni: schema protobuf richieste/risposte.
- Dipendenze interne: moduli channel/service runtime aasdk.

---

## third_party/aasdk/protobuf/aap_protobuf/service/mediabrowser/message

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/mediabrowser/message/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/mediabrowser/message`

## Scopo
Schema messaggi protobuf della sotto-area `mediabrowser/message`.

## File
- File presenti: MediaBrowserInput.proto, MediaGetNode.proto, MediaList.proto, MediaListNode.proto, MediaRootNode.proto, MediaSong.proto, MediaSongNode.proto, MediaSource.proto, MediaSourceNode.proto
- Introduzione: definiscono payload, eventi ed enum del dominio `mediabrowser/message`.
- Metodi/Funzioni: n/a (schema `.proto`).
- Dipendenze interne: parser nei servizi `Channel/*` e runtime `src/Channel/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/mediaplayback

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/mediaplayback/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/mediaplayback`

## Scopo
Schema protobuf del servizio `mediaplayback`.

## File
### `MediaPlaybackStatusMessageId.proto`
- Introduzione: identificativi dei messaggi del servizio `mediaplayback`.
- Metodi/Funzioni: enum/id protobuf.
- Dipendenze interne: parser nei moduli `Channel/*` e servizi runtime aasdk.

### `MediaPlaybackStatusService.proto`
- Introduzione: definizione service/message envelope per `mediaplayback`.
- Metodi/Funzioni: schema protobuf richieste/risposte.
- Dipendenze interne: moduli channel/service runtime aasdk.

---

## third_party/aasdk/protobuf/aap_protobuf/service/mediaplayback/message

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/mediaplayback/message/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/mediaplayback/message`

## Scopo
Schema messaggi protobuf della sotto-area `mediaplayback/message`.

## File
- File presenti: MediaPlaybackMetadata.proto, MediaPlaybackStatus.proto
- Introduzione: definiscono payload, eventi ed enum del dominio `mediaplayback/message`.
- Metodi/Funzioni: n/a (schema `.proto`).
- Dipendenze interne: parser nei servizi `Channel/*` e runtime `src/Channel/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/navigationstatus

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/navigationstatus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/navigationstatus`

## Scopo
Schema protobuf del servizio `navigationstatus`.

## File
### `NavigationStatusMessageId.proto`
- Introduzione: identificativi dei messaggi del servizio `navigationstatus`.
- Metodi/Funzioni: enum/id protobuf.
- Dipendenze interne: parser nei moduli `Channel/*` e servizi runtime aasdk.

### `NavigationStatusService.proto`
- Introduzione: definizione service/message envelope per `navigationstatus`.
- Metodi/Funzioni: schema protobuf richieste/risposte.
- Dipendenze interne: moduli channel/service runtime aasdk.

---

## third_party/aasdk/protobuf/aap_protobuf/service/navigationstatus/message

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/navigationstatus/message/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/navigationstatus/message`

## Scopo
Schema messaggi protobuf della sotto-area `navigationstatus/message`.

## File
- File presenti: NavigationCue.proto, NavigationCurrentPosition.proto, NavigationDestination.proto, NavigationDestinationDistance.proto, NavigationDistance.proto, NavigationLane.proto, NavigationManeuver.proto, NavigationNextTurnDistanceEvent.proto, NavigationNextTurnEvent.proto, NavigationRoad.proto, NavigationState.proto, NavigationStatus.proto, NavigationStatusStart.proto, NavigationStatusStop.proto, NavigationStep.proto, NavigationStepDistance.proto
- Introduzione: definiscono payload, eventi ed enum del dominio `navigationstatus/message`.
- Metodi/Funzioni: n/a (schema `.proto`).
- Dipendenze interne: parser nei servizi `Channel/*` e runtime `src/Channel/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/phonestatus

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/phonestatus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/phonestatus`

## Scopo
Schema protobuf del servizio `phonestatus`.

## File
### `PhoneStatusMessageId.proto`
- Introduzione: identificativi dei messaggi del servizio `phonestatus`.
- Metodi/Funzioni: enum/id protobuf.
- Dipendenze interne: parser nei moduli `Channel/*` e servizi runtime aasdk.

### `PhoneStatusService.proto`
- Introduzione: definizione service/message envelope per `phonestatus`.
- Metodi/Funzioni: schema protobuf richieste/risposte.
- Dipendenze interne: moduli channel/service runtime aasdk.

---

## third_party/aasdk/protobuf/aap_protobuf/service/phonestatus/message

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/phonestatus/message/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/phonestatus/message`

## Scopo
Schema messaggi protobuf della sotto-area `phonestatus/message`.

## File
- File presenti: PhoneStatus.proto, PhoneStatusInput.proto
- Introduzione: definiscono payload, eventi ed enum del dominio `phonestatus/message`.
- Metodi/Funzioni: n/a (schema `.proto`).
- Dipendenze interne: parser nei servizi `Channel/*` e runtime `src/Channel/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/radio

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/radio/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/radio`

## Scopo
Schema protobuf del servizio `radio`.

## File
### `RadioMessageId.proto`
- Introduzione: identificativi dei messaggi del servizio `radio`.
- Metodi/Funzioni: enum/id protobuf.
- Dipendenze interne: parser nei moduli `Channel/*` e servizi runtime aasdk.

### `RadioService.proto`
- Introduzione: definizione service/message envelope per `radio`.
- Metodi/Funzioni: schema protobuf richieste/risposte.
- Dipendenze interne: moduli channel/service runtime aasdk.

---

## third_party/aasdk/protobuf/aap_protobuf/service/radio/message

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/radio/message/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/radio/message`

## Scopo
Schema messaggi protobuf della sotto-area `radio/message`.

## File
- File presenti: ActiveRadioNotification.proto, CancelRadioOperationsRequest.proto, CancelRadioOperationsResponse.proto, ConfigureChannelSpacingRequest.proto, ConfigureChannelSpacingResponse.proto, GetProgramListRequest.proto, GetProgramListResponse.proto, GetTrafficUpdateRequest.proto, GetTrafficUpdateResponse.proto, HdAcquisionState.proto, HdRadioArtistExperience.proto, HdRadioComment.proto, HdRadioCommercial.proto, HdRadioPsdData.proto, HdRadioSisData.proto, HdRadioStationInfo.proto, ItuRegion.proto, Location.proto, MuteRadioRequest.proto, MuteRadioResponse.proto, RadioProperties.proto, RadioSourceRequest.proto, RadioSourceResponse.proto, RadioStateNotification.proto, RadioStationInfo.proto, RadioStationInfoNotification.proto, RadioStationMetaData.proto, RadioType.proto, Range.proto, RdsData.proto, RdsType.proto, ScanStationsRequest.proto, ScanStationsResponse.proto, SeekStationRequest.proto, SeekStationResponse.proto, SelectActiveRadioRequest.proto, StationPreset.proto, StationPresetList.proto, StationPresetsNotification.proto, StepChannelRequest.proto, StepChannelResponse.proto, TrafficIncident.proto, TrafficServiceType.proto, TuneToStationRequest.proto, TuneToStationResponse.proto
- Introduzione: definiscono payload, eventi ed enum del dominio `radio/message`.
- Metodi/Funzioni: n/a (schema `.proto`).
- Dipendenze interne: parser nei servizi `Channel/*` e runtime `src/Channel/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/sensorsource

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/sensorsource/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/sensorsource`

## Scopo
Schema protobuf del servizio `sensorsource`.

## File
### `SensorMessageId.proto`
- Introduzione: identificativi dei messaggi del servizio `sensorsource`.
- Metodi/Funzioni: enum/id protobuf.
- Dipendenze interne: parser nei moduli `Channel/*` e servizi runtime aasdk.

### `SensorSourceService.proto`
- Introduzione: definizione service/message envelope per `sensorsource`.
- Metodi/Funzioni: schema protobuf richieste/risposte.
- Dipendenze interne: moduli channel/service runtime aasdk.

---

## third_party/aasdk/protobuf/aap_protobuf/service/sensorsource/message

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/sensorsource/message/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/sensorsource/message`

## Scopo
Schema messaggi protobuf della sotto-area `sensorsource/message`.

## File
- File presenti: AccelerometerData.proto, CompassData.proto, DeadReckoningData.proto, DiagnosticsData.proto, DoorData.proto, DrivingStatus.proto, DrivingStatusData.proto, EnvironmentData.proto, EvConnectorType.proto, FuelData.proto, FuelType.proto, Gear.proto, GearData.proto, GpsSatellite.proto, GyroscopeData.proto, HeadLightState.proto, HvacData.proto, LightData.proto, LocationData.proto, NightModeData.proto, OdometerData.proto, ParkingBrakeData.proto, PassengerData.proto, RpmData.proto, Sensor.proto, SensorBatch.proto, SensorError.proto, SensorErrorType.proto, SensorRequest.proto, SensorResponse.proto, SensorStartResponseMessage.proto, SensorType.proto, SpeedData.proto, TirePressureData.proto, TollCardData.proto, TurnIndicatorState.proto
- Introduzione: definiscono payload, eventi ed enum del dominio `sensorsource/message`.
- Metodi/Funzioni: n/a (schema `.proto`).
- Dipendenze interne: parser nei servizi `Channel/*` e runtime `src/Channel/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/vendorextension

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/vendorextension/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/protobuf/aap_protobuf/service/vendorextension

## Scopo
Schema protobuf per estensioni vendor.

## File
### `VendorExtensionService.proto`
- Introduzione: schema messaggi custom vendor extension.
- Metodi/Funzioni: definizione payload generico extension.
- Dipendenze interne: `Channel/VendorExtension`.

---

## third_party/aasdk/protobuf/aap_protobuf/service/wifiprojection

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/wifiprojection/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/wifiprojection`

## Scopo
Schema protobuf del servizio `wifiprojection`.

## File
### `WifiProjectionMessageId.proto`
- Introduzione: identificativi dei messaggi del servizio `wifiprojection`.
- Metodi/Funzioni: enum/id protobuf.
- Dipendenze interne: parser nei moduli `Channel/*` e servizi runtime aasdk.

### `WifiProjectionService.proto`
- Introduzione: definizione service/message envelope per `wifiprojection`.
- Metodi/Funzioni: schema protobuf richieste/risposte.
- Dipendenze interne: moduli channel/service runtime aasdk.

---

## third_party/aasdk/protobuf/aap_protobuf/service/wifiprojection/message

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/service/wifiprojection/message/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/service/wifiprojection/message`

## Scopo
Schema messaggi protobuf della sotto-area `wifiprojection/message`.

## File
- File presenti: AccessPointType.proto, WifiCredentialsRequest.proto, WifiCredentialsResponse.proto, WifiSecurityMode.proto
- Introduzione: definiscono payload, eventi ed enum del dominio `wifiprojection/message`.
- Metodi/Funzioni: n/a (schema `.proto`).
- Dipendenze interne: parser nei servizi `Channel/*` e runtime `src/Channel/*`.

---

## third_party/aasdk/protobuf/aap_protobuf/shared

_Sorgente: `third_party/aasdk/protobuf/aap_protobuf/shared/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/protobuf/aap_protobuf/shared`

## Scopo
Tipi protobuf condivisi tra servizi.

## File
### `InstrumentClusterInput.proto`
- Introduzione: input cluster condiviso tra moduli.
- Metodi/Funzioni: schema protobuf.
- Dipendenze interne: service control/navigation.

### `MessageStatus.proto`
- Introduzione: stati comuni messaggi.
- Metodi/Funzioni: schema enum/status.
- Dipendenze interne: servizi multipli.

### `PhoneInfo.proto`
- Introduzione: dati telefonia condivisi.
- Metodi/Funzioni: schema contact/phone info.
- Dipendenze interne: `service/phonestatus/*`.

---

## third_party/aasdk/scripts

_Sorgente: `third_party/aasdk/scripts/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/scripts`

## Scopo
Questa cartella contiene 1 file utili al repository.

## File
### `distro_release.sh`
- Introduzione: Script shell per build, installazione o automazione (`distro_release.sh`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/scripts/distro_release.sh`

---

## third_party/aasdk/src/Channel/Bluetooth

_Sorgente: `third_party/aasdk/src/Channel/Bluetooth/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/Bluetooth

## Scopo
Implementazione servizio canale Bluetooth.

## File
### `BluetoothService.cpp`
- Introduzione: implementa ricezione messaggi del canale Bluetooth, parse protobuf e dispatch a event handler.
- Metodi/Funzioni: `receive`, `messageHandler`, handler messaggi specifici, eventuali metodi `send*Response`.
- Dipendenze interne: header in `include/aasdk/Channel/Bluetooth/*`, `src/Channel/Channel.cpp`, protobuf `service/Bluetooth`.

---

## third_party/aasdk/src/Channel/Control

_Sorgente: `third_party/aasdk/src/Channel/Control/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/Control

## Scopo
Implementazione servizio canale Control.

## File
### `ControlServiceChannel.cpp`
- Introduzione: implementa ricezione messaggi del canale Control, parse protobuf e dispatch a event handler.
- Metodi/Funzioni: `receive`, `messageHandler`, handler messaggi specifici, eventuali metodi `send*Response`.
- Dipendenze interne: header in `include/aasdk/Channel/Control/*`, `src/Channel/Channel.cpp`, protobuf `service/Control`.

---

## third_party/aasdk/src/Channel

_Sorgente: `third_party/aasdk/src/Channel/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/src/Channel`

## Scopo
Implementazione base del layer Channel aasdk.

## File
### `Channel.cpp`
- Introduzione: classe base canale AA che incapsula messenger, channel id e logica send comune.
- Metodi/Funzioni: inizializzazione canale, invio messaggi e supporto receive path per classi derivate.
- Dipendenze interne: `include/aasdk/Channel/Channel.hpp`, servizi specifici in `src/Channel/*`.

---

## third_party/aasdk/src/Channel/GenericNotification

_Sorgente: `third_party/aasdk/src/Channel/GenericNotification/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/GenericNotification

## Scopo
Implementazione servizio canale GenericNotification.

## File
### `GenericNotification.cpp`
- Introduzione: implementa ricezione messaggi del canale GenericNotification, parse protobuf e dispatch a event handler.
- Metodi/Funzioni: `receive`, `messageHandler`, handler messaggi specifici, eventuali metodi `send*Response`.
- Dipendenze interne: header in `include/aasdk/Channel/GenericNotification/*`, `src/Channel/Channel.cpp`, protobuf `service/GenericNotification`.

---

## third_party/aasdk/src/Channel/InputSource

_Sorgente: `third_party/aasdk/src/Channel/InputSource/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/InputSource

## Scopo
Implementazione servizio canale InputSource.

## File
### `InputSourceService.cpp`
- Introduzione: implementa ricezione messaggi del canale InputSource, parse protobuf e dispatch a event handler.
- Metodi/Funzioni: `receive`, `messageHandler`, handler messaggi specifici, eventuali metodi `send*Response`.
- Dipendenze interne: header in `include/aasdk/Channel/InputSource/*`, `src/Channel/Channel.cpp`, protobuf `service/InputSource`.

---

## third_party/aasdk/src/Channel/MediaBrowser

_Sorgente: `third_party/aasdk/src/Channel/MediaBrowser/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/MediaBrowser

## Scopo
Implementazione servizio canale MediaBrowser.

## File
### `MediaBrowserService.cpp`
- Introduzione: implementa ricezione messaggi del canale MediaBrowser, parse protobuf e dispatch a event handler.
- Metodi/Funzioni: `receive`, `messageHandler`, handler messaggi specifici, eventuali metodi `send*Response`.
- Dipendenze interne: header in `include/aasdk/Channel/MediaBrowser/*`, `src/Channel/Channel.cpp`, protobuf `service/MediaBrowser`.

---

## third_party/aasdk/src/Channel/MediaPlaybackStatus

_Sorgente: `third_party/aasdk/src/Channel/MediaPlaybackStatus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/MediaPlaybackStatus

## Scopo
Implementazione servizio canale MediaPlaybackStatus.

## File
### `MediaPlaybackStatusService.cpp`
- Introduzione: implementa ricezione messaggi del canale MediaPlaybackStatus, parse protobuf e dispatch a event handler.
- Metodi/Funzioni: `receive`, `messageHandler`, handler messaggi specifici, eventuali metodi `send*Response`.
- Dipendenze interne: header in `include/aasdk/Channel/MediaPlaybackStatus/*`, `src/Channel/Channel.cpp`, protobuf `service/MediaPlaybackStatus`.

---

## third_party/aasdk/src/Channel/MediaSink/Audio/Channel

_Sorgente: `third_party/aasdk/src/Channel/MediaSink/Audio/Channel/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/MediaSink/Audio/Channel

## Scopo
Sottocartella supporto implementazioni audio sink.

## File
- Nessun file diretto oltre alla documentazione.

---

## third_party/aasdk/src/Channel/MediaSink/Audio

_Sorgente: `third_party/aasdk/src/Channel/MediaSink/Audio/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/MediaSink/Audio

## Scopo
Implementazione AudioMediaSink.

## File
### `AudioMediaSinkService.cpp`
- Introduzione: implementa receive e message handler per stream audio sink.
- Metodi/Funzioni: parsing chunk audio, callback event handler, gestione errori.
- Dipendenze interne: header omonimo, protobuf media sink message.

---

## third_party/aasdk/src/Channel/MediaSink

_Sorgente: `third_party/aasdk/src/Channel/MediaSink/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/MediaSink

## Scopo
Contenitore implementazioni MediaSink.

## File
- Nessun `.cpp` diretto oltre alla documentazione; implementazioni in `Audio/` e `Video/`.

---

## third_party/aasdk/src/Channel/MediaSink/Video/Channel

_Sorgente: `third_party/aasdk/src/Channel/MediaSink/Video/Channel/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/MediaSink/Video/Channel

## Scopo
Sottocartella placeholder implementazioni channel video.

## File
- Nessun file diretto oltre alla documentazione.

---

## third_party/aasdk/src/Channel/MediaSink/Video

_Sorgente: `third_party/aasdk/src/Channel/MediaSink/Video/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/MediaSink/Video

## Scopo
Implementazione servizio VideoMediaSink.

## File
### `VideoMediaSinkService.cpp`
- Introduzione: implementa receive/message handling stream video.
- Metodi/Funzioni: parse frame payload, invocazione event handler, gestione errori canale.
- Dipendenze interne: header omonimo, protobuf video message.

---

## third_party/aasdk/src/Channel/MediaSource/Audio

_Sorgente: `third_party/aasdk/src/Channel/MediaSource/Audio/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/MediaSource/Audio

## Scopo
Implementazione canale microfono source.

## File
### `MicrophoneAudioChannel.cpp`
- Introduzione: implementa invio stream audio microfono su channel media source.
- Metodi/Funzioni: start/stop streaming e invio chunk audio.
- Dipendenze interne: `MicrophoneAudioChannel.hpp`, media source service.

---

## third_party/aasdk/src/Channel/MediaSource

_Sorgente: `third_party/aasdk/src/Channel/MediaSource/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/MediaSource

## Scopo
Implementazione MediaSourceService.

## File
### `MediaSourceService.cpp`
- Introduzione: implementa protocollo media source canale.
- Metodi/Funzioni: receive/messageHandler/send source data.
- Dipendenze interne: header media source, protobuf media source.

---

## third_party/aasdk/src/Channel/NavigationStatus

_Sorgente: `third_party/aasdk/src/Channel/NavigationStatus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/NavigationStatus

## Scopo
Implementazione servizio canale NavigationStatus.

## File
### `NavigationStatusService.cpp`
- Introduzione: implementa ricezione messaggi del canale NavigationStatus, parse protobuf e dispatch a event handler.
- Metodi/Funzioni: `receive`, `messageHandler`, handler messaggi specifici, eventuali metodi `send*Response`.
- Dipendenze interne: header in `include/aasdk/Channel/NavigationStatus/*`, `src/Channel/Channel.cpp`, protobuf `service/NavigationStatus`.

---

## third_party/aasdk/src/Channel/PhoneStatus

_Sorgente: `third_party/aasdk/src/Channel/PhoneStatus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/PhoneStatus

## Scopo
Implementazione servizio canale PhoneStatus.

## File
### `PhoneStatusService.cpp`
- Introduzione: implementa ricezione messaggi del canale PhoneStatus, parse protobuf e dispatch a event handler.
- Metodi/Funzioni: `receive`, `messageHandler`, handler messaggi specifici, eventuali metodi `send*Response`.
- Dipendenze interne: header in `include/aasdk/Channel/PhoneStatus/*`, `src/Channel/Channel.cpp`, protobuf `service/PhoneStatus`.

---

## third_party/aasdk/src/Channel/Radio

_Sorgente: `third_party/aasdk/src/Channel/Radio/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/Radio

## Scopo
Implementazione servizio canale Radio.

## File
### `RadioService.cpp`
- Introduzione: implementa ricezione messaggi del canale Radio, parse protobuf e dispatch a event handler.
- Metodi/Funzioni: `receive`, `messageHandler`, handler messaggi specifici, eventuali metodi `send*Response`.
- Dipendenze interne: header in `include/aasdk/Channel/Radio/*`, `src/Channel/Channel.cpp`, protobuf `service/Radio`.

---

## third_party/aasdk/src/Channel/SensorSource

_Sorgente: `third_party/aasdk/src/Channel/SensorSource/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/SensorSource

## Scopo
Implementazione servizio canale SensorSource.

## File
### `SensorSourceService.cpp`
- Introduzione: implementa ricezione messaggi del canale SensorSource, parse protobuf e dispatch a event handler.
- Metodi/Funzioni: `receive`, `messageHandler`, handler messaggi specifici, eventuali metodi `send*Response`.
- Dipendenze interne: header in `include/aasdk/Channel/SensorSource/*`, `src/Channel/Channel.cpp`, protobuf `service/SensorSource`.

---

## third_party/aasdk/src/Channel/VendorExtension

_Sorgente: `third_party/aasdk/src/Channel/VendorExtension/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/VendorExtension

## Scopo
Implementazione servizio canale VendorExtension.

## File
### `VendorExtensionService.cpp`
- Introduzione: implementa ricezione messaggi del canale VendorExtension, parse protobuf e dispatch a event handler.
- Metodi/Funzioni: `receive`, `messageHandler`, handler messaggi specifici, eventuali metodi `send*Response`.
- Dipendenze interne: header in `include/aasdk/Channel/VendorExtension/*`, `src/Channel/Channel.cpp`, protobuf `service/VendorExtension`.

---

## third_party/aasdk/src/Channel/WifiProjection

_Sorgente: `third_party/aasdk/src/Channel/WifiProjection/DOCUMENTAZIONE.md`_

# Documentazione Cartella: 

aasdk/src/Channel/WifiProjection

## Scopo
Implementazione servizio canale WifiProjection.

## File
### `WifiProjectionService.cpp`
- Introduzione: implementa ricezione messaggi del canale WifiProjection, parse protobuf e dispatch a event handler.
- Metodi/Funzioni: `receive`, `messageHandler`, handler messaggi specifici, eventuali metodi `send*Response`.
- Dipendenze interne: header in `include/aasdk/Channel/WifiProjection/*`, `src/Channel/Channel.cpp`, protobuf `service/WifiProjection`.

---

## third_party/aasdk/src/Common

_Sorgente: `third_party/aasdk/src/Common/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/src/Common`

## Scopo
Implementazioni componenti comuni.

## File
### `Data.cpp`
- Introduzione: implementa utility buffer/data del core.
- Metodi/Funzioni: gestione copie/vista buffer e serializzazione.
- Dipendenze interne: `include/aasdk/Common/Data.hpp`.

### `ModernLogger.cpp`
- Introduzione: implementazione logger moderno.
- Metodi/Funzioni: init logger, formatting e sink output.
- Dipendenze interne: `include/aasdk/Common/ModernLogger.hpp`.

---

## third_party/aasdk/src

_Sorgente: `third_party/aasdk/src/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/src`

## Scopo
Implementazioni C++ principali della libreria aasdk.

## File
- Nessun file diretto oltre alla documentazione; logica distribuita nelle sottocartelle (`Channel`, `Messenger`, `Transport`, `USB`, ecc.).

---

## third_party/aasdk/src/Error

_Sorgente: `third_party/aasdk/src/Error/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/src/Error`

## Scopo
Implementazione classe errore.

## File
### `Error.cpp`
- Introduzione: implementa costruttori/accessor e utilità `Error`.
- Metodi/Funzioni: mapping codice errore e rappresentazione.
- Dipendenze interne: `include/aasdk/Error/Error.hpp`, `ErrorCode.hpp`.

---

## third_party/aasdk/src/IO

_Sorgente: `third_party/aasdk/src/IO/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/src/IO`

## Scopo
Implementazioni runtime delle primitive I/O asincrone aasdk.

## File
### `IOContextWrapper.cpp`
- Introduzione: implementa wrapper contesto I/O per dispatch task in modo coerente con la libreria.
- Metodi/Funzioni: esecuzione task post/dispatch/defer su loop I/O.
- Dipendenze interne: `include/aasdk/IO/IOContextWrapper.hpp`.

---

## third_party/aasdk/src/Messenger

_Sorgente: `third_party/aasdk/src/Messenger/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/src/Messenger`

## Scopo
Implementazioni framing/messaging.

## File
### `ChannelId.cpp`, `ServiceId.cpp`, `FrameType.cpp`, `FrameSize.cpp`, `FrameHeader.cpp`, `MessageId.cpp`, `Timestamp.cpp`
- Introduzione: implementazioni tipi/strutture protocollo.
- Metodi/Funzioni: conversione, parsing e utilità id/header.
- Dipendenze interne: header corrispondenti in `include/aasdk/Messenger`.

### `Message.cpp`
- Introduzione: implementazione contenitore messaggio.
- Metodi/Funzioni: inserimento payload e iterazione dati.
- Dipendenze interne: `Message.hpp`, stream classes.

### `MessageInStream.cpp`, `MessageOutStream.cpp`
- Introduzione: serializzazione/deserializzazione frame.
- Metodi/Funzioni: decode input bytes e encode output frames.
- Dipendenze interne: `IMessageInStream.hpp`, `IMessageOutStream.hpp`, `Frame*`.

### `ChannelReceiveMessageQueue.cpp`, `ChannelReceivePromiseQueue.cpp`
- Introduzione: implementa code ricezione per canale.
- Metodi/Funzioni: enqueue/dequeue e matching con promise.
- Dipendenze interne: `Messenger.cpp`.

### `Cryptor.cpp`
- Introduzione: implementazione cifratura/decifratura payload.
- Metodi/Funzioni: encrypt/decrypt.
- Dipendenze interne: `Cryptor.hpp`, `ICryptor.hpp`.

### `Messenger.cpp`
- Introduzione: orchestratore messaging asincrono.
- Metodi/Funzioni: send/receive queueing, dispatch, gestione errori.
- Dipendenze interne: tutti i componenti messenger e channel layer.

### `*.ut.cpp` (`MessageInStream.ut.cpp`, `MessageOutStream.ut.cpp`, `Messenger.ut.cpp`)
- Introduzione: unit test locali per stream/messenger.
- Metodi/Funzioni: casi test regressione protocollo.
- Dipendenze interne: implementazioni messenger.

---

## third_party/aasdk/src/TCP

_Sorgente: `third_party/aasdk/src/TCP/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/src/TCP`

## Scopo
Implementazioni TCP endpoint/wrapper.

## File
### `TCPEndpoint.cpp`
- Introduzione: implementa endpoint TCP concreto.
- Metodi/Funzioni: connect, transfer I/O, close lifecycle.
- Dipendenze interne: `include/aasdk/TCP/TCPEndpoint.hpp`.

### `TCPWrapper.cpp`
- Introduzione: implementa wrapper/factory endpoint TCP.
- Metodi/Funzioni: creazione endpoint su io_service.
- Dipendenze interne: `include/aasdk/TCP/TCPWrapper.hpp`.

### `TCPEndpoint.ut.cpp`
- Introduzione: test unitari endpoint TCP.
- Metodi/Funzioni: verifica connessione e I/O flow.
- Dipendenze interne: `TCPEndpoint.cpp`.

---

## third_party/aasdk/src/Transport

_Sorgente: `third_party/aasdk/src/Transport/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/src/Transport`

## Scopo
Implementazioni layer transport e TLS.

## File
### `Transport.cpp`
- Introduzione: implementazione base trasporto.
- Metodi/Funzioni: orchestrazione read/write e callbacks.
- Dipendenze interne: `include/aasdk/Transport/Transport.hpp`.

### `TCPTransport.cpp`, `USBTransport.cpp`
- Introduzione: trasporti concreti TCP e USB.
- Metodi/Funzioni: collegamento endpoint/device al messaging layer.
- Dipendenze interne: `TCPTransport.hpp`, `USBTransport.hpp`, TCP/USB modules.

### `DataSink.cpp`
- Introduzione: implementa sink dati trasporto.
- Metodi/Funzioni: buffering e callback consumption.
- Dipendenze interne: `DataSink.hpp`.

### `SSLWrapper.cpp`
- Introduzione: implementazione wrapper TLS.
- Metodi/Funzioni: handshake e pipeline crypto.
- Dipendenze interne: `SSLWrapper.hpp`, OpenSSL deps.

### `TCPTransport.ut.cpp`, `USBTransport.ut.cpp`
- Introduzione: unit test trasporti.
- Metodi/Funzioni: casi regressione data flow transport.
- Dipendenze interne: implementazioni trasporto.

---

## third_party/aasdk/src/USB

_Sorgente: `third_party/aasdk/src/USB/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/src/USB`

## Scopo
Implementazioni AOAP/USB stack.

## File
### `USBWrapper.cpp`, `USBEndpoint.cpp`, `USBHub.cpp`
- Introduzione: implementazioni core libusb wrapper/endpoint/hub.
- Metodi/Funzioni: I/O USB, monitor connessioni e dispatch eventi.
- Dipendenze interne: header `include/aasdk/USB/*`.

### `AOAPDevice.cpp`
- Introduzione: gestione device Android in Accessory Mode.
- Metodi/Funzioni: query stato/protocol version e transition mode.
- Dipendenze interne: `AOAPDevice.hpp`, query chain classes.

### `AccessoryModeQuery.cpp`, `AccessoryModeProtocolVersionQuery.cpp`, `AccessoryModeSendStringQuery.cpp`, `AccessoryModeStartQuery.cpp`
- Introduzione: singoli step query AOAP.
- Metodi/Funzioni: build/esecuzione query USB control.
- Dipendenze interne: relative interfacce query.

### `AccessoryModeQueryChain.cpp`, `AccessoryModeQueryChainFactory.cpp`, `AccessoryModeQueryFactory.cpp`
- Introduzione: composizione catena query AOAP.
- Metodi/Funzioni: creazione sequenze query per enter accessory mode.
- Dipendenze interne: query classes e USB wrapper.

### `ConnectedAccessoriesEnumerator.cpp`
- Introduzione: enumerazione device accessori collegati.
- Metodi/Funzioni: scan/filter dispositivi compatibili.
- Dipendenze interne: `ConnectedAccessoriesEnumerator.hpp`.

### `*.ut.cpp` (AOAP/Accessory/USB endpoint/hub/enumerator)
- Introduzione: unit test stack USB/AOAP.
- Metodi/Funzioni: regressione query chain, endpoint transfer e device handling.
- Dipendenze interne: implementazioni USB sopra.

---

## third_party/aasdk/test_package_build

_Sorgente: `third_party/aasdk/test_package_build/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/test_package_build`

## Scopo
Questa cartella contiene 1 file utili al repository.

## File
### `test_package_deps.sh`
- Introduzione: Script shell per build, installazione o automazione (`test_package_deps.sh`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/aasdk/test_package_build/test_package_deps.sh`

---

## third_party/aasdk/unit_test

_Sorgente: `third_party/aasdk/unit_test/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/unit_test`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/aasdk/unit_test/aasdk

_Sorgente: `third_party/aasdk/unit_test/aasdk/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/unit_test/aasdk`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/aasdk/unit_test/aasdk/Messenger

_Sorgente: `third_party/aasdk/unit_test/aasdk/Messenger/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/unit_test/aasdk/Messenger`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/aasdk/unit_test/aasdk/Messenger/UT

_Sorgente: `third_party/aasdk/unit_test/aasdk/Messenger/UT/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/unit_test/aasdk/Messenger/UT`

## Scopo
Questa cartella contiene 5 file utili al repository.

## File
### `Cryptor.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `Cryptor.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/Messenger/ICryptor.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/Messenger/UT/Cryptor.mock.hpp`

### `MessageInStream.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `MessageInStream.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/Messenger/IMessageInStream.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/Messenger/UT/MessageInStream.mock.hpp`

### `MessageOutStream.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `MessageOutStream.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/Messenger/IMessageOutStream.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/Messenger/UT/MessageOutStream.mock.hpp`

### `ReceivePromiseHandler.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `ReceivePromiseHandler.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/Error/Error.hpp`
  - `aasdk/Messenger/Message.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/Messenger/UT/ReceivePromiseHandler.mock.hpp`

### `SendPromiseHandler.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `SendPromiseHandler.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/Error/Error.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/Messenger/UT/SendPromiseHandler.mock.hpp`

---

## third_party/aasdk/unit_test/aasdk/TCP

_Sorgente: `third_party/aasdk/unit_test/aasdk/TCP/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/unit_test/aasdk/TCP`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/aasdk/unit_test/aasdk/TCP/UT

_Sorgente: `third_party/aasdk/unit_test/aasdk/TCP/UT/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/unit_test/aasdk/TCP/UT`

## Scopo
Questa cartella contiene 3 file utili al repository.

## File
### `TCPEndpoint.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `TCPEndpoint.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/TCP/ITCPEndpoint.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/TCP/UT/TCPEndpoint.mock.hpp`

### `TCPEndpointPromiseHandler.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `TCPEndpointPromiseHandler.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/TCP/ITCPEndpoint.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/TCP/UT/TCPEndpointPromiseHandler.mock.hpp`

### `TCPWrapper.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `TCPWrapper.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/TCP/ITCPWrapper.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/TCP/UT/TCPWrapper.mock.hpp`

---

## third_party/aasdk/unit_test/aasdk/Transport

_Sorgente: `third_party/aasdk/unit_test/aasdk/Transport/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/unit_test/aasdk/Transport`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/aasdk/unit_test/aasdk/Transport/UT

_Sorgente: `third_party/aasdk/unit_test/aasdk/Transport/UT/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/unit_test/aasdk/Transport/UT`

## Scopo
Questa cartella contiene 3 file utili al repository.

## File
### `Transport.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `Transport.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/Transport/ITransport.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/Transport/UT/Transport.mock.hpp`

### `TransportReceivePromiseHandler.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `TransportReceivePromiseHandler.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/Common/Data.hpp`
  - `aasdk/Error/Error.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/Transport/UT/TransportReceivePromiseHandler.mock.hpp`

### `TransportSendPromiseHandler.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `TransportSendPromiseHandler.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/Error/Error.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/Transport/UT/TransportSendPromiseHandler.mock.hpp`

---

## third_party/aasdk/unit_test/aasdk/USB

_Sorgente: `third_party/aasdk/unit_test/aasdk/USB/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/unit_test/aasdk/USB`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/aasdk/unit_test/aasdk/USB/UT

_Sorgente: `third_party/aasdk/unit_test/aasdk/USB/UT/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/aasdk/unit_test/aasdk/USB/UT`

## Scopo
Questa cartella contiene 13 file utili al repository.

## File
### `AccessoryModeQuery.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `AccessoryModeQuery.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/USB/IAccessoryModeQuery.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/USB/UT/AccessoryModeQuery.mock.hpp`

### `AccessoryModeQueryChain.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `AccessoryModeQueryChain.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/USB/IAccessoryModeQueryChain.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/USB/UT/AccessoryModeQueryChain.mock.hpp`

### `AccessoryModeQueryChainFactory.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `AccessoryModeQueryChainFactory.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/USB/IAccessoryModeQueryChainFactory.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/USB/UT/AccessoryModeQueryChainFactory.mock.hpp`

### `AccessoryModeQueryChainPromiseHandler.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `AccessoryModeQueryChainPromiseHandler.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/USB/IUSBWrapper.hpp`
  - `aasdk/Error/Error.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/USB/UT/AccessoryModeQueryChainPromiseHandler.mock.hpp`

### `AccessoryModeQueryFactory.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `AccessoryModeQueryFactory.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/USB/IAccessoryModeQueryFactory.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/USB/UT/AccessoryModeQueryFactory.mock.hpp`

### `AccessoryModeQueryPromiseHandler.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `AccessoryModeQueryPromiseHandler.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/USB/IUSBEndpoint.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/USB/UT/AccessoryModeQueryPromiseHandler.mock.hpp`

### `AOAPDevice.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `AOAPDevice.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/USB/IAOAPDevice.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/USB/UT/AOAPDevice.mock.hpp`

### `ConnectedAccessoriesEnumeratorPromiseHandler.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `ConnectedAccessoriesEnumeratorPromiseHandler.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/USB/IUSBWrapper.hpp`
  - `aasdk/Error/Error.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/USB/UT/ConnectedAccessoriesEnumeratorPromiseHandler.mock.hpp`

### `USBEndpoint.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `USBEndpoint.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/USB/IUSBEndpoint.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/USB/UT/USBEndpoint.mock.hpp`

### `USBEndpointPromiseHandler.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `USBEndpointPromiseHandler.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/USB/IUSBEndpoint.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/USB/UT/USBEndpointPromiseHandler.mock.hpp`

### `USBHub.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `USBHub.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/USB/IUSBHub.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/USB/UT/USBHub.mock.hpp`

### `USBHubPromiseHandler.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `USBHubPromiseHandler.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/USB/IUSBWrapper.hpp`
  - `aasdk/Error/Error.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/USB/UT/USBHubPromiseHandler.mock.hpp`

### `USBWrapper.mock.hpp`
- Introduzione: Header C/C++ che dichiara interfacce, tipi o costanti per `USBWrapper.mock.hpp`.
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne:
  - `gmock/gmock.h`
  - `aasdk/USB/IUSBWrapper.hpp`
- Percorso: `third_party/aasdk/unit_test/aasdk/USB/UT/USBWrapper.mock.hpp`

---

## third_party/openauto/.github

_Sorgente: `third_party/openauto/.github/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/.github`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/openauto/.github/workflows

_Sorgente: `third_party/openauto/.github/workflows/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/.github/workflows`

## Scopo
Questa cartella contiene 3 file utili al repository.

## File
### `build_native.yml`
- Introduzione: File di configurazione/dati usato dal progetto (`build_native.yml`).
- Metodi/Funzioni:
  - `platform_for_arch`: funzione/metodo definito nel file per supportare la logica descritta.
  - `success`: funzione/metodo definito nel file per supportare la logica descritta.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/.github/workflows/build_native.yml`

### `release.yml`
- Introduzione: File di configurazione/dati usato dal progetto (`release.yml`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/.github/workflows/release.yml`

### `trigger-apt-publish.yml`
- Introduzione: File di configurazione/dati usato dal progetto (`trigger-apt-publish.yml`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/.github/workflows/trigger-apt-publish.yml`

---

## third_party/openauto

_Sorgente: `third_party/openauto/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto`

## Scopo
Libreria OpenAuto vendorizzata: componenti applicativi e servizi per Android Auto projection.

## File
### `CMakeLists.txt`
- Introduzione: build principale openauto.
- Metodi/Funzioni: definizione target app/lib/test.
- Dipendenze interne: `src/`, `include/`, `assets/`, `cmake_modules/`.

### `README.md`, `TESTPLAN.md`, `RELEASE.txt`, `LICENSE`
- Introduzione: documentazione, piano test, note release e licenza.
- Metodi/Funzioni: n/a.
- Dipendenze interne: riferimenti a moduli openauto.

### `build.sh`, `Dockerfile`, `Dockerfile.rootfs`
- Introduzione: automazione build locale/container.
- Metodi/Funzioni: orchestration compilazione e immagini.
- Dipendenze interne: toolchain openauto e sottocartelle buildenv/scripts.

### `code_of_conduct.md`
- Introduzione: linee guida contributi comunità.
- Metodi/Funzioni: n/a.
- Dipendenze interne: nessuna.

---

## third_party/openauto/assets

_Sorgente: `third_party/openauto/assets/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/assets`

## Scopo
Questa cartella contiene 41 file utili al repository.

## File
### `aausb-hot.png`
- Introduzione: File di supporto del repository (`aausb-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/aausb-hot.png`

### `aawifi-hot.png`
- Introduzione: File di supporto del repository (`aawifi-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/aawifi-hot.png`

### `album-hot.png`
- Introduzione: File di supporto del repository (`album-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/album-hot.png`

### `back-hot.png`
- Introduzione: File di supporto del repository (`back-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/back-hot.png`

### `black.png`
- Introduzione: File di supporto del repository (`black.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/black.png`

### `brightness-hot.png`
- Introduzione: File di supporto del repository (`brightness-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/brightness-hot.png`

### `bug-hot.png`
- Introduzione: File di supporto del repository (`bug-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/bug-hot.png`

### `camera-hot.png`
- Introduzione: File di supporto del repository (`camera-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/camera-hot.png`

### `coverlogo.png`
- Introduzione: File di supporto del repository (`coverlogo.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/coverlogo.png`

### `cursor-hot.png`
- Introduzione: File di supporto del repository (`cursor-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/cursor-hot.png`

### `day-hot.png`
- Introduzione: File di supporto del repository (`day-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/day-hot.png`

### `eye-hot.png`
- Introduzione: File di supporto del repository (`eye-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/eye-hot.png`

### `home-hot.png`
- Introduzione: File di supporto del repository (`home-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/home-hot.png`

### `ico_info.png`
- Introduzione: File di supporto del repository (`ico_info.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/ico_info.png`

### `ico_warning.png`
- Introduzione: File di supporto del repository (`ico_warning.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/ico_warning.png`

### `journey.jpg`
- Introduzione: File di supporto del repository (`journey.jpg`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/journey.jpg`

### `list-hot.png`
- Introduzione: File di supporto del repository (`list-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/list-hot.png`

### `lock-hot.png`
- Introduzione: File di supporto del repository (`lock-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/lock-hot.png`

### `mp3-hot.png`
- Introduzione: File di supporto del repository (`mp3-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/mp3-hot.png`

### `next-hot.png`
- Introduzione: File di supporto del repository (`next-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/next-hot.png`

### `nextbig-hot.png`
- Introduzione: File di supporto del repository (`nextbig-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/nextbig-hot.png`

### `night-hot.png`
- Introduzione: File di supporto del repository (`night-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/night-hot.png`

### `pause-hot.png`
- Introduzione: File di supporto del repository (`pause-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/pause-hot.png`

### `play-hot.png`
- Introduzione: File di supporto del repository (`play-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/play-hot.png`

### `player-hot.png`
- Introduzione: File di supporto del repository (`player-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/player-hot.png`

### `power-hot.png`
- Introduzione: File di supporto del repository (`power-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/power-hot.png`

### `prev-hot.png`
- Introduzione: File di supporto del repository (`prev-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/prev-hot.png`

### `prevbig-hot.png`
- Introduzione: File di supporto del repository (`prevbig-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/prevbig-hot.png`

### `rearcam-hot.png`
- Introduzione: File di supporto del repository (`rearcam-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/rearcam-hot.png`

### `reboot-hot.png`
- Introduzione: File di supporto del repository (`reboot-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/reboot-hot.png`

### `record-hot.png`
- Introduzione: File di supporto del repository (`record-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/record-hot.png`

### `recordactive-hot.png`
- Introduzione: File di supporto del repository (`recordactive-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/recordactive-hot.png`

### `resources.qrc`
- Introduzione: File di supporto del repository (`resources.qrc`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/resources.qrc`

### `Roboto-Regular.ttf`
- Introduzione: File di supporto del repository (`Roboto-Regular.ttf`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/Roboto-Regular.ttf`

### `save-hot.png`
- Introduzione: File di supporto del repository (`save-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/save-hot.png`

### `settings-hot.png`
- Introduzione: File di supporto del repository (`settings-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/settings-hot.png`

### `skin-hot.png`
- Introduzione: File di supporto del repository (`skin-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/skin-hot.png`

### `sleep-hot.png`
- Introduzione: File di supporto del repository (`sleep-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/sleep-hot.png`

### `stop-hot.png`
- Introduzione: File di supporto del repository (`stop-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/stop-hot.png`

### `volume-hot.png`
- Introduzione: File di supporto del repository (`volume-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/volume-hot.png`

### `wifi-hot.png`
- Introduzione: File di supporto del repository (`wifi-hot.png`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/assets/wifi-hot.png`

---

## third_party/openauto/buildenv

_Sorgente: `third_party/openauto/buildenv/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/buildenv`

## Scopo
Questa cartella contiene 5 file utili al repository.

## File
### `cross-compile.md`
- Introduzione: Documentazione testuale o note operative (`cross-compile.md`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/buildenv/cross-compile.md`

### `docker-compose.yml`
- Introduzione: File di configurazione/dati usato dal progetto (`docker-compose.yml`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/buildenv/docker-compose.yml`

### `Dockerfile`
- Introduzione: File di supporto del repository (`Dockerfile`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/buildenv/Dockerfile`

### `entrypoint.sh`
- Introduzione: Script shell per build, installazione o automazione (`entrypoint.sh`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/buildenv/entrypoint.sh`

### `patch-libboost-log-deb.sh`
- Introduzione: Script shell per build, installazione o automazione (`patch-libboost-log-deb.sh`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/buildenv/patch-libboost-log-deb.sh`

---

## third_party/openauto/buildenv/pi_binaries

_Sorgente: `third_party/openauto/buildenv/pi_binaries/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/buildenv/pi_binaries`

## Scopo
Questa cartella contiene 1 file utili al repository.

## File
### `.gitignore`
- Introduzione: File di supporto del repository (`.gitignore`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/buildenv/pi_binaries/.gitignore`

---

## third_party/openauto/buildenv/release

_Sorgente: `third_party/openauto/buildenv/release/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/buildenv/release`

## Scopo
Questa cartella contiene 1 file utili al repository.

## File
### `.gitignore`
- Introduzione: File di supporto del repository (`.gitignore`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/buildenv/release/.gitignore`

---

## third_party/openauto/cmake_modules

_Sorgente: `third_party/openauto/cmake_modules/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/cmake_modules`

## Scopo
Moduli CMake custom del progetto openauto.

## File
- `Find*.cmake`:
  - Introduzione: discovery librerie esterne richieste da openauto.
  - Metodi/Funzioni: definizione variabili e import target.
  - Dipendenze interne: `third_party/openauto/CMakeLists.txt`.
- eventuali helper CMake:
  - Introduzione: macro/funzioni di supporto build.
  - Metodi/Funzioni: utility configurazione target e opzioni.
  - Dipendenze interne: build `src/`, `tests/`, `packaging/`.

---

## third_party/openauto/docs

_Sorgente: `third_party/openauto/docs/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/docs`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/openauto/docs/fix_summaries

_Sorgente: `third_party/openauto/docs/fix_summaries/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/docs/fix_summaries`

## Scopo
Raccolta riepiloghi di fix applicati a openauto.

## File
- file `*.md` nella cartella:
  - Introduzione: changelog tecnico di fix, workaround e regressioni risolte.
  - Metodi/Funzioni: n/a.
  - Dipendenze interne: riferimenti a file in `src/`, `include/`, `buildenv/`.

---

## third_party/openauto/docs/fix_summaries/fix_summaries

_Sorgente: `third_party/openauto/docs/fix_summaries/fix_summaries/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/docs/fix_summaries/fix_summaries`

## Scopo
Sotto-raccolta specifica dei riepiloghi fix storicizzati.

## File
- file `*.md` presenti:
  - Introduzione: dettagli puntuali sui fix (causa, patch, impatto).
  - Metodi/Funzioni: n/a.
  - Dipendenze interne: rinvii a moduli openauto coinvolti.

---

## third_party/openauto/docs/troubleshooting

_Sorgente: `third_party/openauto/docs/troubleshooting/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/docs/troubleshooting`

## Scopo
Questa cartella contiene 4 file utili al repository.

## File
### `DEBUG_QUICKREF.md`
- Introduzione: Documentazione testuale o note operative (`DEBUG_QUICKREF.md`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/docs/troubleshooting/DEBUG_QUICKREF.md`

### `remote-debugging.md`
- Introduzione: Documentazione testuale o note operative (`remote-debugging.md`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/docs/troubleshooting/remote-debugging.md`

### `template.md`
- Introduzione: Documentazione testuale o note operative (`template.md`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/docs/troubleshooting/template.md`

### `whitescreen-autoapp.md`
- Introduzione: Documentazione testuale o note operative (`whitescreen-autoapp.md`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/docs/troubleshooting/whitescreen-autoapp.md`

---

## third_party/openauto/helpers

_Sorgente: `third_party/openauto/helpers/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/helpers`

## Scopo
Questa cartella contiene 2 file utili al repository.

## File
### `autoapp_helper`
- Introduzione: File di supporto del repository (`autoapp_helper`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/helpers/autoapp_helper`

### `crankshaft`
- Introduzione: File di supporto del repository (`crankshaft`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/helpers/crankshaft`

---

## third_party/openauto/include

_Sorgente: `third_party/openauto/include/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/openauto/include/f1x

_Sorgente: `third_party/openauto/include/f1x/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/openauto/include/f1x/openauto/Common

_Sorgente: `third_party/openauto/include/f1x/openauto/Common/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/Common`

## Scopo
Utility comuni OpenAuto.

## File
### `Log.hpp`
- Introduzione: definizioni macro/adapter logging usati trasversalmente.
- Metodi/Funzioni: macro di logging e helper stream.
- Dipendenze interne: implementazioni in `third_party/openauto/src/autoapp/*`.

---

## third_party/openauto/include/f1x/openauto

_Sorgente: `third_party/openauto/include/f1x/openauto/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/openauto/include/f1x/openauto/autoapp/Configuration

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Configuration/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Configuration`

## Scopo
Interfacce e tipi configurazione dell'app OpenAuto.

## File
### `AudioOutputBackendType.hpp`
- Introduzione: enum backend audio output.
- Metodi/Funzioni: definizione tipi.
- Dipendenze interne: `Projection/RtAudioOutput`, `QtAudioOutput`, `Configuration.cpp`.

### `BluetoothAdapterType.hpp`
- Introduzione: enum tipologia adapter Bluetooth.
- Metodi/Funzioni: definizione tipi.
- Dipendenze interne: `Service/BluetoothService`.

### `HandednessOfTrafficType.hpp`
- Introduzione: enum guida destra/sinistra.
- Metodi/Funzioni: definizione tipi.
- Dipendenze interne: UI settings e gesture mapping.

### `IConfiguration.hpp`
- Introduzione: contratto configurazione OpenAuto.
- Metodi/Funzioni: getter/setter parametri audio/video/connessione/input.
- Dipendenze interne: `Configuration.hpp`, `Configuration.cpp`.

### `Configuration.hpp`
- Introduzione: implementazione concreta stato configurazione.
- Metodi/Funzioni: persistenza valori runtime e accessori.
- Dipendenze interne: `src/autoapp/Configuration/Configuration.cpp`.

### `IRecentAddressesList.hpp`
- Introduzione: interfaccia storico indirizzi recenti.
- Metodi/Funzioni: add/remove/list.
- Dipendenze interne: `RecentAddressesList.hpp/.cpp`.

### `RecentAddressesList.hpp`
- Introduzione: implementazione lista indirizzi recenti.
- Metodi/Funzioni: gestione capacità massima e ordine recente.
- Dipendenze interne: `src/autoapp/Configuration/RecentAddressesList.cpp`.

---

## third_party/openauto/include/f1x/openauto/autoapp

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp`

## Scopo
Header top-level dell'app OpenAuto (entry API applicativa).

## File
### `App.hpp`
- Introduzione: definisce classe `openauto::App` che orchestri USB/TCP wrappers, entity factory e ciclo connessione Android Auto.
- Metodi/Funzioni: bootstrap app, attesa device USB, avvio/stop sessione e gestione callback di errore.
- Dipendenze interne: `src/autoapp/App.cpp`, `autoapp/Service/*`, `autoapp/Projection/*`, configurazione.

---

## third_party/openauto/include/f1x/openauto/autoapp/Projection

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Projection/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Projection`

## Scopo
Astrazioni projection OpenAuto per input/audio/video e dispositivi Bluetooth.

## File
### `InputEvent.hpp`
- Introduzione: modello eventi input (touch/key/button).
- Metodi/Funzioni: tipi evento e payload.
- Dipendenze interne: `InputDevice.*`, `Service/InputSource*`.

### `IInputDevice.hpp` / `IInputDeviceEventHandler.hpp` / `InputDevice.hpp`
- Introduzione: interfacce e implementazione bridge eventi input.
- Metodi/Funzioni: subscribe/dispatch eventi verso handler.
- Dipendenze interne: `src/autoapp/Projection/InputDevice.cpp`.

### `IAudioInput.hpp`, `IAudioOutput.hpp`, `IVideoOutput.hpp`
- Introduzione: interfacce backend media I/O.
- Metodi/Funzioni: avvio/stop stream, write/read frame, configurazione.
- Dipendenze interne: implementazioni Qt/OMX/RtAudio.

### `QtAudioInput.hpp`, `QtAudioOutput.hpp`, `QtVideoOutput.hpp`, `OMXVideoOutput.hpp`, `RtAudioOutput.hpp`, `VideoOutput.hpp`
- Introduzione: backend concreti projection per ambienti Qt/OMX/RtAudio.
- Metodi/Funzioni: pipeline I/O, buffering, sync frame.
- Dipendenze interne: `src/autoapp/Projection/*.cpp` corrispondenti.

### `IBluetoothDevice.hpp`, `DummyBluetoothDevice.hpp`, `LocalBluetoothDevice.hpp`
- Introduzione: astrazione dispositivo BT per handshake/projection.
- Metodi/Funzioni: pairing info, address/name, capability.
- Dipendenze interne: `src/autoapp/Projection/*BluetoothDevice.cpp`.

### `SequentialBuffer.hpp`
- Introduzione: buffer FIFO sequenziale per stream media.
- Metodi/Funzioni: push/pop/sync.
- Dipendenze interne: backend audio/video projection.

---

## third_party/openauto/include/f1x/openauto/autoapp/Service/Bluetooth

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Service/Bluetooth/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Service/Bluetooth`

## Scopo
Dichiarazioni servizio canale Bluetooth Android Auto.

## File
### `BluetoothService.hpp`
- Introduzione: servizio gestione messaggi/procedure Bluetooth channel.
- Metodi/Funzioni: handle richieste canale e callback verso event handler.
- Dipendenze interne: `src/autoapp/Service/Bluetooth/BluetoothService.cpp`, `Service/Service.hpp`.

---

## third_party/openauto/include/f1x/openauto/autoapp/Service

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Service/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Service`

## Scopo
Service layer OpenAuto: entità Android Auto, factory, pinger e callback.

## File
### `IService.hpp`, `Service.hpp`
- Introduzione: contratto base e implementazione base servizio canale.
- Metodi/Funzioni: lifecycle servizio, send/receive, gestione errori.
- Dipendenze interne: tutti i servizi specializzati in sottocartelle.

### `IPinger.hpp`, `Pinger.hpp`
- Introduzione: keepalive sessione Android Auto.
- Metodi/Funzioni: scheduling ping e controllo timeout.
- Dipendenze interne: `src/autoapp/Service/Pinger.cpp`.

### `IServiceFactory.hpp`, `ServiceFactory.hpp`
- Introduzione: factory servizi runtime.
- Metodi/Funzioni: costruzione servizi media/nav/input/phone e binding dipendenze.
- Dipendenze interne: `src/autoapp/Service/ServiceFactory.cpp`, `AndroidAutoEntityFactory`.

### `IAndroidAutoEntity.hpp`, `AndroidAutoEntity.hpp`
- Introduzione: interfaccia e implementazione entità sessione Android Auto.
- Metodi/Funzioni: avvio sessione, gestione canali e routing servizi.
- Dipendenze interne: `src/autoapp/Service/AndroidAutoEntity.cpp`.

### `IAndroidAutoEntityFactory.hpp`, `AndroidAutoEntityFactory.hpp`
- Introduzione: factory entità Android Auto.
- Metodi/Funzioni: creazione entità con configurazione e backend I/O.
- Dipendenze interne: `src/autoapp/Service/AndroidAutoEntityFactory.cpp`.

### `IAndroidAutoEntityEventHandler.hpp`
- Introduzione: callback eventi alto livello entità.
- Metodi/Funzioni: notifiche connessione/stato/errori.
- Dipendenze interne: `AndroidAutoEntity`.

### `Callbacks.hpp`
- Introduzione: callback globali/event hooks per integrazione con host app.
- Metodi/Funzioni: registrazione callback eventi media/navigation.
- Dipendenze interne: `src/autoapp/Service/Callbacks.cpp`, integrazione Dash `src/app/pages/openauto.cpp`.

---

## third_party/openauto/include/f1x/openauto/autoapp/Service/GenericNotification

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Service/GenericNotification/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Service/GenericNotification`

## Scopo
Servizio notifiche generiche Android Auto.

## File
### `GenericNotificationService.hpp`
- Introduzione: interfaccia servizio notifiche generiche.
- Metodi/Funzioni: receive e dispatch notifiche al livello app.
- Dipendenze interne: `src/autoapp/Service/GenericNotification/GenericNotificationService.cpp`.

---

## third_party/openauto/include/f1x/openauto/autoapp/Service/InputSource

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Service/InputSource/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Service/InputSource`

## Scopo
Servizio input source (eventi input da/verso Android Auto).

## File
### `InputSourceService.hpp`
- Introduzione: dichiarazione servizio input source.
- Metodi/Funzioni: ricezione e inoltro eventi input.
- Dipendenze interne: `src/autoapp/Service/InputSource/InputSourceService.cpp`, `Projection/InputEvent`.

---

## third_party/openauto/include/f1x/openauto/autoapp/Service/MediaBrowser

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Service/MediaBrowser/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Service/MediaBrowser`

## Scopo
Servizio media browser.

## File
### `MediaBrowserService.hpp`
- Introduzione: dichiarazione servizio navigazione catalogo media.
- Metodi/Funzioni: gestione richieste browse/list items.
- Dipendenze interne: `src/autoapp/Service/MediaBrowser/MediaBrowserService.cpp`.

---

## third_party/openauto/include/f1x/openauto/autoapp/Service/MediaPlaybackStatus

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Service/MediaPlaybackStatus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Service/MediaPlaybackStatus`

## Scopo
Servizio stato playback media.

## File
### `MediaPlaybackStatusService.hpp`
- Introduzione: dichiarazione servizio stato player.
- Metodi/Funzioni: receive/update stato playback e metadata status.
- Dipendenze interne: `src/autoapp/Service/MediaPlaybackStatus/MediaPlaybackStatusService.cpp`.

---

## third_party/openauto/include/f1x/openauto/autoapp/Service/MediaSink

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Service/MediaSink/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Service/MediaSink`

## Scopo
Servizi sink media/audio/video.

## File
### `AudioMediaSinkService.hpp`
- Introduzione: base servizio sink audio.
- Metodi/Funzioni: ricezione pacchetti audio e routing backend output.
- Dipendenze interne: `src/autoapp/Service/MediaSink/AudioMediaSinkService.cpp`.

### `MediaAudioService.hpp`, `SystemAudioService.hpp`, `GuidanceAudioService.hpp`, `TelephonyAudioService.hpp`
- Introduzione: servizi audio specializzati per stream media/sistema/guida/telefonia.
- Metodi/Funzioni: gestione canali audio dedicati.
- Dipendenze interne: `src/autoapp/Service/MediaSink/*AudioService.cpp`.

### `VideoMediaSinkService.hpp`, `VideoService.hpp`
- Introduzione: servizi sink video.
- Metodi/Funzioni: ricezione frame video e forwarding a output renderer.
- Dipendenze interne: `src/autoapp/Service/MediaSink/Video*.cpp`, Projection video output.

---

## third_party/openauto/include/f1x/openauto/autoapp/Service/MediaSource

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Service/MediaSource/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Service/MediaSource`

## Scopo
Servizi source media verso Android Auto.

## File
### `MediaSourceService.hpp`
- Introduzione: servizio source base.
- Metodi/Funzioni: gestione invio stream source.
- Dipendenze interne: `src/autoapp/Service/MediaSource/MediaSourceService.cpp`.

### `MicrophoneMediaSourceService.hpp`
- Introduzione: servizio source microfono.
- Metodi/Funzioni: acquisizione audio input e invio pacchetti.
- Dipendenze interne: `src/autoapp/Service/MediaSource/MicrophoneMediaSourceService.cpp`, Projection audio input.

---

## third_party/openauto/include/f1x/openauto/autoapp/Service/NavigationStatus

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Service/NavigationStatus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Service/NavigationStatus`

## Scopo
Servizio stato navigazione.

## File
### `NavigationStatusService.hpp`
- Introduzione: dichiarazione servizio eventi navigation status.
- Metodi/Funzioni: ricezione status, next turn e distanze.
- Dipendenze interne: `src/autoapp/Service/NavigationStatus/NavigationStatusService.cpp`.

---

## third_party/openauto/include/f1x/openauto/autoapp/Service/PhoneStatus

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Service/PhoneStatus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Service/PhoneStatus`

## Scopo
Servizio stato telefonia.

## File
### `PhoneStatusService.hpp`
- Introduzione: dichiarazione servizio phone status.
- Metodi/Funzioni: ricezione stato telefonia/call.
- Dipendenze interne: `src/autoapp/Service/PhoneStatus/PhoneStatusService.cpp`.

---

## third_party/openauto/include/f1x/openauto/autoapp/Service/Radio

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Service/Radio/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Service/Radio`

## Scopo
Servizio eventi radio.

## File
### `RadioService.hpp`
- Introduzione: dichiarazione servizio radio.
- Metodi/Funzioni: receive eventi radio channel.
- Dipendenze interne: `src/autoapp/Service/Radio/RadioService.cpp`.

---

## third_party/openauto/include/f1x/openauto/autoapp/Service/Sensor

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Service/Sensor/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Service/Sensor`

## Scopo
Servizio sensori dispositivo/veicolo.

## File
### `SensorService.hpp`
- Introduzione: dichiarazione servizio sensor source.
- Metodi/Funzioni: gestione messaggi sensori.
- Dipendenze interne: `src/autoapp/Service/Sensor/SensorService.cpp`.

---

## third_party/openauto/include/f1x/openauto/autoapp/Service/VendorExtension

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Service/VendorExtension/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Service/VendorExtension`

## Scopo
Servizio estensioni vendor.

## File
### `VendorExtensionService.hpp`
- Introduzione: dichiarazione servizio vendor extension.
- Metodi/Funzioni: dispatch messaggi custom vendor.
- Dipendenze interne: `src/autoapp/Service/VendorExtension/VendorExtensionService.cpp`.

---

## third_party/openauto/include/f1x/openauto/autoapp/Service/WifiProjection

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/Service/WifiProjection/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/Service/WifiProjection`

## Scopo
Servizio WifiProjection.

## File
### `WifiProjectionService.hpp`
- Introduzione: dichiarazione servizio richieste credenziali Wi-Fi/projection.
- Metodi/Funzioni: receive richieste e invio risposte.
- Dipendenze interne: `src/autoapp/Service/WifiProjection/WifiProjectionService.cpp`.

---

## third_party/openauto/include/f1x/openauto/autoapp/UI

_Sorgente: `third_party/openauto/include/f1x/openauto/autoapp/UI/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/autoapp/UI`

## Scopo
Header componenti UI desktop dell'app OpenAuto standalone.

## File
### `MainWindow.hpp`
- Introduzione: finestra principale UI OpenAuto.
- Metodi/Funzioni: init layout, bind servizi e azioni utente.
- Dipendenze interne: `src/autoapp/UI/MainWindow.cpp`, `.ui` files.

### `SettingsWindow.hpp`
- Introduzione: finestra configurazione.
- Metodi/Funzioni: lettura/scrittura parametri e validazione input.
- Dipendenze interne: `src/autoapp/UI/SettingsWindow.cpp`, `Configuration`.

### `ConnectDialog.hpp`, `UpdateDialog.hpp`, `WarningDialog.hpp`
- Introduzione: dialog di connessione, aggiornamento e warning.
- Metodi/Funzioni: show/update stato e azioni conferma.
- Dipendenze interne: `src/autoapp/UI/*Dialog.cpp`, file `.ui`.

---

## third_party/openauto/include/f1x/openauto/btservice

_Sorgente: `third_party/openauto/include/f1x/openauto/btservice/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/include/f1x/openauto/btservice`

## Scopo
Interfacce servizio Bluetooth lato OpenAuto.

## File
### `IAndroidBluetoothServer.hpp` / `AndroidBluetoothServer.hpp`
- Introduzione: server Bluetooth per handshake/discovery Android Auto.
- Metodi/Funzioni: avvio server, accept connessioni, lifecycle.
- Dipendenze interne: `src/btservice/AndroidBluetoothServer.cpp`.

### `IAndroidBluetoothService.hpp` / `AndroidBluetoothService.hpp`
- Introduzione: servizio Bluetooth completo.
- Metodi/Funzioni: setup canali/profili e integrazione con handler.
- Dipendenze interne: `src/btservice/AndroidBluetoothService.cpp`.

### `IBluetoothHandler.hpp` / `BluetoothHandler.hpp`
- Introduzione: astrazione handler eventi BT.
- Metodi/Funzioni: callback connessione/disconnessione/errore.
- Dipendenze interne: `src/btservice/BluetoothHandler.cpp`.

---

## third_party/openauto/packaging

_Sorgente: `third_party/openauto/packaging/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/packaging`

## Scopo
Questa cartella contiene 1 file utili al repository.

## File
### `README.md`
- Introduzione: Documentazione testuale o note operative (`README.md`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/packaging/README.md`

---

## third_party/openauto/packaging/debian

_Sorgente: `third_party/openauto/packaging/debian/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/packaging/debian`

## Scopo
Questa cartella contiene 4 file utili al repository.

## File
### `postinst`
- Introduzione: File di supporto del repository (`postinst`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/packaging/debian/postinst`

### `postrm`
- Introduzione: File di supporto del repository (`postrm`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/packaging/debian/postrm`

### `preinst`
- Introduzione: File di supporto del repository (`preinst`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/packaging/debian/preinst`

### `prerm`
- Introduzione: File di supporto del repository (`prerm`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/packaging/debian/prerm`

---

## third_party/openauto/packaging/opt

_Sorgente: `third_party/openauto/packaging/opt/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/packaging/opt`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/openauto/packaging/opt/crankshaft

_Sorgente: `third_party/openauto/packaging/opt/crankshaft/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/packaging/opt/crankshaft`

## Scopo
Questa cartella contiene 3 file utili al repository.

## File
### `crankshaft_default_env.sh`
- Introduzione: Script shell per build, installazione o automazione (`crankshaft_default_env.sh`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/packaging/opt/crankshaft/crankshaft_default_env.sh`

### `crankshaft_system_env.sh`
- Introduzione: Script shell per build, installazione o automazione (`crankshaft_system_env.sh`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/packaging/opt/crankshaft/crankshaft_system_env.sh`

### `usb_action.sh`
- Introduzione: Script shell per build, installazione o automazione (`usb_action.sh`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/packaging/opt/crankshaft/usb_action.sh`

---

## third_party/openauto/packaging/systemd

_Sorgente: `third_party/openauto/packaging/systemd/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/packaging/systemd`

## Scopo
Questa cartella contiene 2 file utili al repository.

## File
### `openauto-btservice.service`
- Introduzione: File di supporto del repository (`openauto-btservice.service`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/packaging/systemd/openauto-btservice.service`

### `openauto.service`
- Introduzione: File di supporto del repository (`openauto.service`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/packaging/systemd/openauto.service`

---

## third_party/openauto/packaging/udev

_Sorgente: `third_party/openauto/packaging/udev/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/packaging/udev`

## Scopo
Questa cartella contiene 1 file utili al repository.

## File
### `99-openauto.rules`
- Introduzione: File di supporto del repository (`99-openauto.rules`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/packaging/udev/99-openauto.rules`

---

## third_party/openauto/scripts

_Sorgente: `third_party/openauto/scripts/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/scripts`

## Scopo
Questa cartella contiene 3 file utili al repository.

## File
### `distro_release.sh`
- Introduzione: Script shell per build, installazione o automazione (`distro_release.sh`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/scripts/distro_release.sh`

### `setup-remote-debug.ps1`
- Introduzione: File di supporto del repository (`setup-remote-debug.ps1`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/scripts/setup-remote-debug.ps1`

### `setup-remote-debug.sh`
- Introduzione: Script shell per build, installazione o automazione (`setup-remote-debug.sh`).
- Metodi/Funzioni: nessun metodo rilevato automaticamente o file non sorgente.
- Dipendenze interne: nessuna dipendenza interna rilevata automaticamente.
- Percorso: `third_party/openauto/scripts/setup-remote-debug.sh`

---

## third_party/openauto/src

_Sorgente: `third_party/openauto/src/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src`

## Scopo
Questa cartella non contiene file diretti; ospita solo sottocartelle.

## File
- Nessun file diretto da documentare.

---

## third_party/openauto/src/autoapp/Configuration

_Sorgente: `third_party/openauto/src/autoapp/Configuration/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Configuration`

## Scopo
Implementazioni concrete configurazione OpenAuto.

## File
### `Configuration.cpp`
- Introduzione: implementa storage/accesso parametri configurazione.
- Metodi/Funzioni: getter/setter impostazioni e serializzazione stato.
- Dipendenze interne: header `include/.../Configuration/*`.

### `RecentAddressesList.cpp`
- Introduzione: implementa storico indirizzi recenti.
- Metodi/Funzioni: inserimento, deduplica, trimming lista.
- Dipendenze interne: `IRecentAddressesList.hpp`, `RecentAddressesList.hpp`.

---

## third_party/openauto/src/autoapp

_Sorgente: `third_party/openauto/src/autoapp/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp`

## Scopo
Implementazioni centrali applicazione OpenAuto.

## File
### `App.cpp`
- Introduzione: implementazione classe `App`, punto di orchestrazione sessione Android Auto (USB attach, entity creation, start/stop).
- Metodi/Funzioni: inizializzazione componenti, `waitForUSBDevice`, gestione connessioni/disconnessioni e forwarding eventi a service layer.
- Dipendenze interne: `include/f1x/openauto/autoapp/App.hpp`, `Configuration/*`, `Projection/*`, `Service/*`.

### `autoapp.cpp`
- Introduzione: entrypoint eseguibile OpenAuto standalone.
- Metodi/Funzioni: setup runtime (log/config/thread workers), creazione finestra e loop applicazione.
- Dipendenze interne: `UI/MainWindow.*`, `ServiceFactory`, `Configuration`.

---

## third_party/openauto/src/autoapp/Projection

_Sorgente: `third_party/openauto/src/autoapp/Projection/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Projection`

## Scopo
Implementazioni backend projection input/audio/video.

## File
### `InputDevice.cpp`
- Introduzione: bridge eventi input verso stack projection.
- Metodi/Funzioni: inoltro eventi e notifica handler.
- Dipendenze interne: `include/.../Projection/InputDevice.hpp`.

### `DummyBluetoothDevice.cpp` / `LocalBluetoothDevice.cpp`
- Introduzione: implementazioni dispositivi BT (dummy/locale).
- Metodi/Funzioni: esposizione metadati device/capability.
- Dipendenze interne: `IBluetoothDevice.hpp`.

### `QtAudioInput.cpp`, `QtAudioOutput.cpp`, `QtVideoOutput.cpp`
- Introduzione: backend media I/O basati su Qt.
- Metodi/Funzioni: apertura stream, scrittura/lettura buffer, controllo stato.
- Dipendenze interne: interfacce `IAudio*`/`IVideoOutput`.

### `OMXVideoOutput.cpp`
- Introduzione: backend video output via OpenMAX.
- Metodi/Funzioni: gestione pipeline video embedded.
- Dipendenze interne: `OMXVideoOutput.hpp`.

### `RtAudioOutput.cpp`
- Introduzione: backend audio output con RtAudio.
- Metodi/Funzioni: callback stream audio e buffering.
- Dipendenze interne: `RtAudioOutput.hpp`.

### `VideoOutput.cpp`
- Introduzione: implementazione video output wrapper/comune.
- Metodi/Funzioni: gestione frame e sincronizzazione rendering.
- Dipendenze interne: `VideoOutput.hpp`, backend specifici.

### `SequentialBuffer.cpp`
- Introduzione: implementazione buffer sequenziale thread-safe.
- Metodi/Funzioni: push/pop e gestione capacità.
- Dipendenze interne: `SequentialBuffer.hpp`, backend media.

---

## third_party/openauto/src/autoapp/Service/Bluetooth

_Sorgente: `third_party/openauto/src/autoapp/Service/Bluetooth/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Service/Bluetooth`

## Scopo
Implementazione servizio canale Bluetooth.

## File
### `BluetoothService.cpp`
- Introduzione: implementa ricezione/dispatch messaggi Bluetooth Android Auto.
- Metodi/Funzioni: receive loop, handler messaggi e gestione errori canale.
- Dipendenze interne: `include/.../Service/Bluetooth/BluetoothService.hpp`, `Service/Service.hpp`.

---

## third_party/openauto/src/autoapp/Service

_Sorgente: `third_party/openauto/src/autoapp/Service/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Service`

## Scopo
Implementazioni service layer OpenAuto.

## File
### `AndroidAutoEntity.cpp`
- Introduzione: gestione sessione Android Auto e orchestrazione servizi.
- Metodi/Funzioni: start/stop entity, bind canali, dispatch eventi.
- Dipendenze interne: `include/.../Service/AndroidAutoEntity.hpp`.

### `AndroidAutoEntityFactory.cpp`
- Introduzione: costruzione entità Android Auto con dipendenze runtime.
- Metodi/Funzioni: factory methods per entity.
- Dipendenze interne: `AndroidAutoEntityFactory.hpp`, `ServiceFactory`.

### `Callbacks.cpp`
- Introduzione: registry callback globali esposti all'host.
- Metodi/Funzioni: set/get/invoke callback.
- Dipendenze interne: `Callbacks.hpp`, integrazione Dash openauto page.

### `Pinger.cpp`
- Introduzione: keepalive periodico sessione.
- Metodi/Funzioni: timer ping, timeout handling.
- Dipendenze interne: `Pinger.hpp`.

### `ServiceFactory.cpp`
- Introduzione: creazione servizi specifici media/nav/phone/input.
- Metodi/Funzioni: compose dependency graph servizi.
- Dipendenze interne: sottocartelle service e `Configuration`.

---

## third_party/openauto/src/autoapp/Service/GenericNotification

_Sorgente: `third_party/openauto/src/autoapp/Service/GenericNotification/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Service/GenericNotification`

## Scopo
Implementazione servizio notifiche generiche.

## File
### `GenericNotificationService.cpp`
- Introduzione: parse messaggi notifica e inoltro event handler.
- Metodi/Funzioni: receive, messageHandler e callback notifica.
- Dipendenze interne: `include/.../GenericNotificationService.hpp`.

---

## third_party/openauto/src/autoapp/Service/InputSource

_Sorgente: `third_party/openauto/src/autoapp/Service/InputSource/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Service/InputSource`

## Scopo
Implementazione servizio input source.

## File
### `InputSourceService.cpp`
- Introduzione: gestione input events in/out canale InputSource.
- Metodi/Funzioni: receive, handle input message, invio eventi.
- Dipendenze interne: `include/.../InputSourceService.hpp`, `Projection/InputEvent`.

---

## third_party/openauto/src/autoapp/Service/MediaBrowser

_Sorgente: `third_party/openauto/src/autoapp/Service/MediaBrowser/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Service/MediaBrowser`

## Scopo
Implementazione servizio media browser.

## File
### `MediaBrowserService.cpp`
- Introduzione: dispatch richieste browse contenuti media.
- Metodi/Funzioni: receive message e callback browse events.
- Dipendenze interne: `include/.../MediaBrowserService.hpp`.

---

## third_party/openauto/src/autoapp/Service/MediaPlaybackStatus

_Sorgente: `third_party/openauto/src/autoapp/Service/MediaPlaybackStatus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Service/MediaPlaybackStatus`

## Scopo
Implementazione servizio stato riproduzione.

## File
### `MediaPlaybackStatusService.cpp`
- Introduzione: parse status playback e notifica handler.
- Metodi/Funzioni: receive, messageHandler stato media.
- Dipendenze interne: `include/.../MediaPlaybackStatusService.hpp`.

---

## third_party/openauto/src/autoapp/Service/MediaSink

_Sorgente: `third_party/openauto/src/autoapp/Service/MediaSink/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Service/MediaSink`

## Scopo
Implementazioni sink audio/video Android Auto.

## File
### `AudioMediaSinkService.cpp`
- Introduzione: base sink audio con logica ricezione payload.
- Metodi/Funzioni: receive pacchetti audio e forward output.
- Dipendenze interne: `AudioMediaSinkService.hpp`, Projection audio output.

### `MediaAudioService.cpp`, `SystemAudioService.cpp`, `GuidanceAudioService.cpp`, `TelephonyAudioService.cpp`
- Introduzione: servizi specifici per stream audio diversi.
- Metodi/Funzioni: specializzazione channel id/message routing.
- Dipendenze interne: rispettivi header `include/.../MediaSink/*`.

### `VideoMediaSinkService.cpp`, `VideoService.cpp`
- Introduzione: sink video e servizio video.
- Metodi/Funzioni: ricezione frame video e dispatch output.
- Dipendenze interne: Projection video output e header media sink.

---

## third_party/openauto/src/autoapp/Service/MediaSource

_Sorgente: `third_party/openauto/src/autoapp/Service/MediaSource/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Service/MediaSource`

## Scopo
Implementazioni source media verso Android Auto.

## File
### `MediaSourceService.cpp`
- Introduzione: implementazione base source service.
- Metodi/Funzioni: send/receive control per source.
- Dipendenze interne: `MediaSourceService.hpp`.

### `MicrophoneMediaSourceService.cpp`
- Introduzione: sorgente audio microfono.
- Metodi/Funzioni: acquisizione audio input e invio stream.
- Dipendenze interne: `MicrophoneMediaSourceService.hpp`, Projection audio input.

---

## third_party/openauto/src/autoapp/Service/NavigationStatus

_Sorgente: `third_party/openauto/src/autoapp/Service/NavigationStatus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Service/NavigationStatus`

## Scopo
Implementazione servizio navigation status.

## File
### `NavigationStatusService.cpp`
- Introduzione: parse eventi stato/navigazione prossima svolta.
- Metodi/Funzioni: receive, handler status/turn/distance.
- Dipendenze interne: `NavigationStatusService.hpp`.

---

## third_party/openauto/src/autoapp/Service/PhoneStatus

_Sorgente: `third_party/openauto/src/autoapp/Service/PhoneStatus/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Service/PhoneStatus`

## Scopo
Implementazione servizio stato telefonia.

## File
### `PhoneStatusService.cpp`
- Introduzione: gestione messaggi stato telefonico.
- Metodi/Funzioni: receive, parse status e callback handler.
- Dipendenze interne: `PhoneStatusService.hpp`.

---

## third_party/openauto/src/autoapp/Service/Radio

_Sorgente: `third_party/openauto/src/autoapp/Service/Radio/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Service/Radio`

## Scopo
Implementazione servizio radio.

## File
### `RadioService.cpp`
- Introduzione: gestione messaggi radio channel.
- Metodi/Funzioni: receive e dispatch eventi radio.
- Dipendenze interne: `RadioService.hpp`.

---

## third_party/openauto/src/autoapp/Service/Sensor

_Sorgente: `third_party/openauto/src/autoapp/Service/Sensor/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Service/Sensor`

## Scopo
Implementazione servizio sensori.

## File
### `SensorService.cpp`
- Introduzione: gestione messaggi sensor source.
- Metodi/Funzioni: receive/parse eventi sensore.
- Dipendenze interne: `SensorService.hpp`.

---

## third_party/openauto/src/autoapp/Service/VendorExtension

_Sorgente: `third_party/openauto/src/autoapp/Service/VendorExtension/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Service/VendorExtension`

## Scopo
Implementazione servizio vendor extension.

## File
### `VendorExtensionService.cpp`
- Introduzione: gestione messaggi custom vendor-specific.
- Metodi/Funzioni: receive, parse payload e callback.
- Dipendenze interne: `VendorExtensionService.hpp`.

---

## third_party/openauto/src/autoapp/Service/WifiProjection

_Sorgente: `third_party/openauto/src/autoapp/Service/WifiProjection/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/Service/WifiProjection`

## Scopo
Implementazione servizio WifiProjection.

## File
### `WifiProjectionService.cpp`
- Introduzione: gestisce richieste credenziali Wi-Fi e apertura canale projection.
- Metodi/Funzioni: receive, message dispatch e invio risposte.
- Dipendenze interne: `WifiProjectionService.hpp`, protobuf wifi projection.

---

## third_party/openauto/src/autoapp/UI

_Sorgente: `third_party/openauto/src/autoapp/UI/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/UI`

## Scopo
Implementazioni UI Qt dell'app OpenAuto standalone.

## File
### `MainWindow.cpp`
- Introduzione: finestra principale con wiring servizi/projection.
- Metodi/Funzioni: init UI, connect segnali UI->servizi.
- Dipendenze interne: `include/.../UI/MainWindow.hpp`, `ServiceFactory`.

### `SettingsWindow.cpp`
- Introduzione: gestione UI impostazioni e bind configurazione.
- Metodi/Funzioni: populate controls, apply/save settings.
- Dipendenze interne: `SettingsWindow.hpp`, `Configuration`.

### `ConnectDialog.cpp`, `UpdateDialog.cpp`, `WarningDialog.cpp`
- Introduzione: logica dei dialog modali.
- Metodi/Funzioni: aggiornamento stato visuale e gestione input utente.
- Dipendenze interne: header UI omonimi.

### `dialog.cpp`, `dialog.h`, `dialog.ui`
- Introduzione: dialog Qt generici e relativo designer file.
- Metodi/Funzioni: setup componenti base dialog.
- Dipendenze interne: `mainwindow.ui`, `settingswindow.ui`, altri dialog.

### `connectdialog.ui`, `mainwindow.ui`, `settingswindow.ui`, `updatedialog.ui`, `warningdialog.ui`
- Introduzione: definizioni layout Qt Designer.
- Metodi/Funzioni: n/a.
- Dipendenze interne: classi C++ UI corrispondenti.

---

## third_party/openauto/src/autoapp/UI/assets

_Sorgente: `third_party/openauto/src/autoapp/UI/assets/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/autoapp/UI/assets`

## Scopo
Asset grafici per UI OpenAuto standalone.

## File
### `journey.jpg`
- Introduzione: immagine decorativa usata da schermate/dialog UI.
- Metodi/Funzioni: n/a.
- Dipendenze interne: referenziata da `.ui` e/o classi `UI/*Dialog`.

---

## third_party/openauto/src/btservice

_Sorgente: `third_party/openauto/src/btservice/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/src/btservice`

## Scopo
Implementazioni Bluetooth service OpenAuto.

## File
### `AndroidBluetoothServer.cpp`
- Introduzione: implementa server Bluetooth.
- Metodi/Funzioni: start listening, accept e lifecycle.
- Dipendenze interne: `include/.../btservice/AndroidBluetoothServer.hpp`.

### `AndroidBluetoothService.cpp`
- Introduzione: implementa servizio Bluetooth completo.
- Metodi/Funzioni: setup stack/profili e gestione sessione.
- Dipendenze interne: `AndroidBluetoothService.hpp`, `BluetoothHandler`.

### `BluetoothHandler.cpp`
- Introduzione: implementa callback handler Bluetooth.
- Metodi/Funzioni: on connect/disconnect/error.
- Dipendenze interne: `BluetoothHandler.hpp`.

### `btservice.cpp`
- Introduzione: entrypoint eseguibile del servizio BT standalone.
- Metodi/Funzioni: bootstrap servizio e event loop.
- Dipendenze interne: classi btservice sopra.

---

## third_party/openauto/tests

_Sorgente: `third_party/openauto/tests/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/tests`

## Scopo
Suite test OpenAuto (unit e integration).

## File
### `CMakeLists.txt`
- Introduzione: definizione target test.
- Metodi/Funzioni: registrazione executable e linkage test deps.
- Dipendenze interne: `tests/unit/*`, `tests/integration/*`, `tests/mocks/*`.

---

## third_party/openauto/tests/integration

_Sorgente: `third_party/openauto/tests/integration/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/tests/integration`

## Scopo
Test integrazione end-to-end tra entity, BT e UI.

## File
### `main.cpp`
- Introduzione: bootstrap runner test integrazione.
- Metodi/Funzioni: init framework test.
- Dipendenze interne: test file cartella.

### `AndroidAutoIntegrationTests.cpp`
- Introduzione: casi integrazione sessione Android Auto.
- Metodi/Funzioni: verifica handshake, lifecycle entity, callback.
- Dipendenze interne: service/projection layer openauto.

### `BluetoothIntegrationTests.cpp`
- Introduzione: casi integrazione stack Bluetooth.
- Metodi/Funzioni: connessione, discovery e percorso servizio.
- Dipendenze interne: btservice openauto.

### `UIIntegrationTests.cpp`
- Introduzione: casi integrazione componenti UI.
- Metodi/Funzioni: wiring finestre/dialog e reazioni stato.
- Dipendenze interne: `src/autoapp/UI/*`.

---

## third_party/openauto/tests/mocks

_Sorgente: `third_party/openauto/tests/mocks/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/tests/mocks`

## Scopo
Mock per isolare dipendenze nei test.

## File
### `MockAndroidAutoEntity.hpp`
- Introduzione: mock entità Android Auto.
- Metodi/Funzioni: override metodi entity per assertion.
- Dipendenze interne: interfacce service layer.

### `MockAndroidAutoEntityFactory.hpp`
- Introduzione: mock factory entità.
- Metodi/Funzioni: creazione entity fake.
- Dipendenze interne: `IAndroidAutoEntityFactory`.

### `MockAudioOutput.hpp`
- Introduzione: mock backend audio output.
- Metodi/Funzioni: cattura/simulazione stream audio.
- Dipendenze interne: `Projection/IAudioOutput`.

### `MockConfiguration.hpp`
- Introduzione: mock configurazione runtime.
- Metodi/Funzioni: getter/setter fake per test.
- Dipendenze interne: `Configuration/IConfiguration`.

---

## third_party/openauto/tests/unit

_Sorgente: `third_party/openauto/tests/unit/DOCUMENTAZIONE.md`_

# Documentazione Cartella: `third_party/openauto/tests/unit`

## Scopo
Test unitari moduli OpenAuto.

## File
### `main.cpp`
- Introduzione: entrypoint runner unit test.
- Metodi/Funzioni: init framework.
- Dipendenze interne: file test cartella.

### `ConfigurationTests.cpp`
- Introduzione: test logica configurazione.
- Metodi/Funzioni: verifica default, mutazioni, persistenza.
- Dipendenze interne: `Configuration.*`.

### `ConnectionTests.cpp`
- Introduzione: test gestione connessione/sessione.
- Metodi/Funzioni: casi stato connessione/error handling.
- Dipendenze interne: service/entity.

### `ProjectionTests.cpp`
- Introduzione: test backend projection input/audio/video.
- Metodi/Funzioni: validazione buffer/eventi/stream.
- Dipendenze interne: `Projection/*`.

### `ServiceTests.cpp`
- Introduzione: test service layer e dispatch callback.
- Metodi/Funzioni: lifecycle servizi e routing messaggi.
- Dipendenze interne: `Service/*`.

---

## tools

_Sorgente: `tools/DOCUMENTAZIONE.md`_

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

---
