#pragma once

#include <aap_protobuf/service/media/sink/message/VideoFrameRateType.pb.h>

namespace aasdk {
namespace proto {
namespace enums {
namespace VideoFPS {
using Enum = aap_protobuf::service::media::sink::message::VideoFrameRateType;

static constexpr Enum _30 = aap_protobuf::service::media::sink::message::VIDEO_FPS_30;
static constexpr Enum _60 = aap_protobuf::service::media::sink::message::VIDEO_FPS_60;
}  // namespace VideoFPS
}  // namespace enums
}  // namespace proto
}  // namespace aasdk
