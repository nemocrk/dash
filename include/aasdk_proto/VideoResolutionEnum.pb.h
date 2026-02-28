#pragma once

#include <aap_protobuf/service/media/sink/message/VideoCodecResolutionType.pb.h>

namespace aasdk {
namespace proto {
namespace enums {
namespace VideoResolution {
using Enum = aap_protobuf::service::media::sink::message::VideoCodecResolutionType;

static constexpr Enum _480p = aap_protobuf::service::media::sink::message::VIDEO_800x480;
static constexpr Enum _720p = aap_protobuf::service::media::sink::message::VIDEO_1280x720;
static constexpr Enum _1080p = aap_protobuf::service::media::sink::message::VIDEO_1920x1080;
}  // namespace VideoResolution
}  // namespace enums
}  // namespace proto
}  // namespace aasdk
