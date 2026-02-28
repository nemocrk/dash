#include "openauto/Service/IAndroidAutoInterface.hpp"

#include "openauto/Service/ServiceFactory.hpp"

namespace openauto {
namespace service {

void IAndroidAutoInterface::injectButtonPress(aap_protobuf::service::media::sink::message::KeyCode buttonCode,
                                              projection::ButtonEventType eventType,
                                              projection::WheelDirection wheelDirection) {
    if (serviceFactory_ != nullptr) {
        serviceFactory_->injectButtonPress(buttonCode, eventType, wheelDirection);
    }
}

void IAndroidAutoInterface::setNightMode(bool enabled) {
    if (serviceFactory_ != nullptr) {
        serviceFactory_->setNightMode(enabled);
    }
}

}  // namespace service
}  // namespace openauto
