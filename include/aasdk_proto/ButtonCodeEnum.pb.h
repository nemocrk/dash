#pragma once

#include <aap_protobuf/service/media/sink/message/KeyCode.pb.h>

namespace aasdk {
namespace proto {
namespace enums {
namespace ButtonCode {
using Enum = aap_protobuf::service::media::sink::message::KeyCode;

static constexpr Enum LEFT = aap_protobuf::service::media::sink::message::KEYCODE_DPAD_LEFT;
static constexpr Enum ENTER = aap_protobuf::service::media::sink::message::KEYCODE_ENTER;
static constexpr Enum RIGHT = aap_protobuf::service::media::sink::message::KEYCODE_DPAD_RIGHT;
static constexpr Enum UP = aap_protobuf::service::media::sink::message::KEYCODE_DPAD_UP;
static constexpr Enum DOWN = aap_protobuf::service::media::sink::message::KEYCODE_DPAD_DOWN;
static constexpr Enum BACK = aap_protobuf::service::media::sink::message::KEYCODE_BACK;
static constexpr Enum HOME = aap_protobuf::service::media::sink::message::KEYCODE_HOME;
static constexpr Enum PHONE = aap_protobuf::service::media::sink::message::KEYCODE_CALL;
static constexpr Enum CALL_END = aap_protobuf::service::media::sink::message::KEYCODE_ENDCALL;
static constexpr Enum PLAY = aap_protobuf::service::media::sink::message::KEYCODE_MEDIA_PLAY;
static constexpr Enum PAUSE = aap_protobuf::service::media::sink::message::KEYCODE_MEDIA_PAUSE;
static constexpr Enum PREV = aap_protobuf::service::media::sink::message::KEYCODE_MEDIA_PREVIOUS;
static constexpr Enum NEXT = aap_protobuf::service::media::sink::message::KEYCODE_MEDIA_NEXT;
static constexpr Enum TOGGLE_PLAY = aap_protobuf::service::media::sink::message::KEYCODE_MEDIA_PLAY_PAUSE;
static constexpr Enum MICROPHONE_1 = aap_protobuf::service::media::sink::message::KEYCODE_VOICE_ASSIST;
static constexpr Enum SCROLL_WHEEL = aap_protobuf::service::media::sink::message::KEYCODE_UNKNOWN;
}  // namespace ButtonCode
}  // namespace enums
}  // namespace proto
}  // namespace aasdk
