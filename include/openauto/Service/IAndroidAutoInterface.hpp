#pragma once

#include <aap_protobuf/service/mediaplayback/message/MediaPlaybackMetadata.pb.h>
#include <aap_protobuf/service/mediaplayback/message/MediaPlaybackStatus.pb.h>
#include <aap_protobuf/service/navigationstatus/message/NavigationNextTurnDistanceEvent.pb.h>
#include <aap_protobuf/service/navigationstatus/message/NavigationNextTurnEvent.pb.h>
#include <aap_protobuf/service/navigationstatus/message/NavigationStatus.pb.h>
#include <aap_protobuf/service/media/sink/message/KeyCode.pb.h>
#include <aasdk_proto/ButtonCodeEnum.pb.h>
#include "openauto/Projection/InputEvent.hpp"

namespace aasdk {
namespace proto {
namespace messages {
using MediaInfoChannelMetadataData = aap_protobuf::service::mediaplayback::message::MediaPlaybackMetadata;
using MediaInfoChannelPlaybackData = aap_protobuf::service::mediaplayback::message::MediaPlaybackStatus;
using NavigationStatus = aap_protobuf::service::navigationstatus::message::NavigationStatus;
using NavigationTurnEvent = aap_protobuf::service::navigationstatus::message::NavigationNextTurnEvent;
using NavigationDistanceEvent = aap_protobuf::service::navigationstatus::message::NavigationNextTurnDistanceEvent;
}  // namespace messages
}  // namespace proto
}  // namespace aasdk

namespace openauto {
namespace service {

class ServiceFactory;

class IAndroidAutoInterface {
public:
    virtual ~IAndroidAutoInterface() = default;

    virtual void mediaPlaybackUpdate(const aasdk::proto::messages::MediaInfoChannelPlaybackData& playback) = 0;
    virtual void mediaMetadataUpdate(const aasdk::proto::messages::MediaInfoChannelMetadataData& metadata) = 0;
    virtual void navigationStatusUpdate(const aasdk::proto::messages::NavigationStatus& navStatus) = 0;
    virtual void navigationTurnEvent(const aasdk::proto::messages::NavigationTurnEvent& turnEvent) = 0;
    virtual void navigationDistanceEvent(const aasdk::proto::messages::NavigationDistanceEvent& distanceEvent) = 0;

    void setServiceFactory(ServiceFactory* factory) { serviceFactory_ = factory; }

    void injectButtonPress(aap_protobuf::service::media::sink::message::KeyCode buttonCode,
                           projection::ButtonEventType eventType,
                           projection::WheelDirection wheelDirection = projection::WheelDirection::NONE);
    void injectButtonPress(aap_protobuf::service::media::sink::message::KeyCode buttonCode,
                           projection::WheelDirection wheelDirection)
    {
        injectButtonPress(buttonCode, projection::ButtonEventType::NONE, wheelDirection);
    }
    void setNightMode(bool enabled);

private:
    ServiceFactory* serviceFactory_ = nullptr;
};

}  // namespace service
}  // namespace openauto
