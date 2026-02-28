#pragma once

#include <QApplication>
#include <QCoreApplication>
#include <QEvent>
#include <QKeyEvent>
#include <QWidget>
#include <functional>

#include <f1x/openauto/autoapp/Service/ServiceFactory.hpp>

#include "openauto/Projection/InputEvent.hpp"

namespace openauto {
namespace service {

class IAndroidAutoInterface;

class ServiceFactory : public f1x::openauto::autoapp::service::ServiceFactory {
public:
    ServiceFactory(boost::asio::io_service& ioService,
                   f1x::openauto::autoapp::configuration::IConfiguration::Pointer configuration,
                   QWidget* frame,
                   std::function<void(bool)> callback,
                   bool nightMode)
        : f1x::openauto::autoapp::service::ServiceFactory(ioService, std::move(configuration)),
          frame_(frame), callback_(std::move(callback)), nightMode_(nightMode) {}

    void setAndroidAutoInterface(IAndroidAutoInterface* iface) { androidAutoInterface_ = iface; }
    void setOpacity(unsigned int alpha)
    {
        if (frame_ != nullptr) {
            frame_->setWindowOpacity(static_cast<double>(alpha) / 255.0);
        }
    }
    void resize()
    {
        if (frame_ != nullptr) {
            frame_->updateGeometry();
            frame_->update();
        }
    }
    void sendKeyEvent(QKeyEvent* event)
    {
        if (event == nullptr || qApp == nullptr) {
            return;
        }

        auto* copied = new QKeyEvent(event->type(), event->key(), event->modifiers(), event->text(), event->isAutoRepeat(), event->count());
        QCoreApplication::postEvent(qApp, copied);
    }
    void injectButtonPress(aap_protobuf::service::media::sink::message::KeyCode buttonCode,
                           projection::ButtonEventType eventType,
                           projection::WheelDirection wheelDirection)
    {
        if (qApp == nullptr) {
            return;
        }

        const int qtKey = mapButtonCode(buttonCode, wheelDirection);
        if (qtKey == Qt::Key_unknown) {
            return;
        }

        if (eventType == projection::ButtonEventType::NONE) {
            QCoreApplication::postEvent(qApp, new QKeyEvent(QEvent::KeyPress, qtKey, Qt::NoModifier));
            QCoreApplication::postEvent(qApp, new QKeyEvent(QEvent::KeyRelease, qtKey, Qt::NoModifier));
            return;
        }

        const QEvent::Type qtType = eventType == projection::ButtonEventType::PRESS ? QEvent::KeyPress : QEvent::KeyRelease;
        QCoreApplication::postEvent(qApp, new QKeyEvent(qtType, qtKey, Qt::NoModifier));
    }
    void setNightMode(bool enabled)
    {
        nightMode_ = enabled;
        if (qApp != nullptr) {
            qApp->setProperty("openauto.night_mode", enabled);
        }
    }

private:
    static int mapButtonCode(aap_protobuf::service::media::sink::message::KeyCode buttonCode,
                             projection::WheelDirection wheelDirection)
    {
        using KC = aap_protobuf::service::media::sink::message::KeyCode;
        switch (buttonCode) {
        case KC::KEYCODE_DPAD_CENTER: return Qt::Key_Return;
        case KC::KEYCODE_DPAD_LEFT: return Qt::Key_Left;
        case KC::KEYCODE_DPAD_RIGHT: return Qt::Key_Right;
        case KC::KEYCODE_DPAD_UP: return Qt::Key_Up;
        case KC::KEYCODE_DPAD_DOWN: return Qt::Key_Down;
        case KC::KEYCODE_BACK: return Qt::Key_Escape;
        case KC::KEYCODE_HOME: return Qt::Key_H;
        case KC::KEYCODE_CALL: return Qt::Key_P;
        case KC::KEYCODE_ENDCALL: return Qt::Key_O;
        case KC::KEYCODE_MEDIA_PLAY: return Qt::Key_X;
        case KC::KEYCODE_MEDIA_PAUSE: return Qt::Key_C;
        case KC::KEYCODE_MEDIA_PREVIOUS: return Qt::Key_V;
        case KC::KEYCODE_MEDIA_NEXT: return Qt::Key_N;
        case KC::KEYCODE_MEDIA_PLAY_PAUSE: return Qt::Key_B;
        case KC::KEYCODE_SEARCH: return Qt::Key_M;
        case KC::KEYCODE_ROTARY_CONTROLLER:
        case KC::KEYCODE_UNKNOWN:
            return wheelDirection == projection::WheelDirection::RIGHT ? Qt::Key_2 : Qt::Key_1;
        default:
            return Qt::Key_unknown;
        }
    }

    QWidget* frame_ = nullptr;
    std::function<void(bool)> callback_;
    bool nightMode_ = false;
    IAndroidAutoInterface* androidAutoInterface_ = nullptr;
};

}  // namespace service
}  // namespace openauto
