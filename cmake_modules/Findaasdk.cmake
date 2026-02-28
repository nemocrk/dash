set(AASDK_HINTS
    "${CMAKE_SOURCE_DIR}/third_party/aasdk/build-release"
    "${CMAKE_SOURCE_DIR}/third_party/aasdk"
    "/usr/local"
    "$ENV{HOME}/aasdk"
)

find_path(AASDK_INCLUDE_DIR
    aasdk/Version.hpp
    PATHS ${AASDK_HINTS}
    PATH_SUFFIXES include
)

find_path(AASDK_PROTO_INCLUDE_DIR
    aap_protobuf/service/Service.pb.h
    PATHS
      "${CMAKE_SOURCE_DIR}/third_party/aasdk/build-release/protobuf"
      "${CMAKE_SOURCE_DIR}/third_party/aasdk/build-release"
      "/usr/local/include"
      "/usr/local"
    PATH_SUFFIXES include
)

find_path(AASDK_PROTOBUF_RUNTIME_INCLUDE_DIR
    google/protobuf/runtime_version.h
    PATHS
      "${CMAKE_SOURCE_DIR}/third_party/aasdk/build-release/_deps/protobuf-src/src"
      "${CMAKE_SOURCE_DIR}/third_party/aasdk/build-release/_deps/protobuf-build"
      "${CMAKE_SOURCE_DIR}/third_party/aasdk/build-release"
      "/usr/local/include"
      "/usr/local"
)

find_path(AASDK_ABSEIL_INCLUDE_DIR
    absl/log/absl_log.h
    PATHS
      "${CMAKE_SOURCE_DIR}/third_party/aasdk/build-release/_deps/abseil-src"
      "${CMAKE_SOURCE_DIR}/third_party/aasdk/build-release/_deps/abseil-build"
      "${CMAKE_SOURCE_DIR}/third_party/aasdk/build-release"
      "/usr/local/include"
      "/usr/local"
)

find_path(AASDK_LIB_DIR
    libaasdk.so
    PATHS ${AASDK_HINTS}
    PATH_SUFFIXES lib
)

find_library(AASDK_LIB
    NAMES aasdk
    PATHS ${AASDK_LIB_DIR}
    NO_DEFAULT_PATH
)

find_library(AASDK_PROTO_LIB
    NAMES aap_protobuf aasdk_proto
    PATHS ${AASDK_LIB_DIR}
    NO_DEFAULT_PATH
)

if (AASDK_INCLUDE_DIR AND AASDK_LIB_DIR AND AASDK_LIB AND AASDK_PROTO_LIB)
    set(AASDK_FOUND TRUE)
endif()

if (AASDK_FOUND)
    if (NOT aasdk_FIND_QUIETLY)
        message(STATUS "Found aasdk:")
        message(STATUS " - Includes: ${AASDK_INCLUDE_DIR}")
        message(STATUS " - Proto includes: ${AASDK_PROTO_INCLUDE_DIR}")
        message(STATUS " - Libraries: ${AASDK_LIB_DIR}")
    endif()

    if (NOT TARGET aasdk)
        add_library(aasdk INTERFACE)
        target_include_directories(aasdk INTERFACE ${AASDK_INCLUDE_DIR})
        set_target_properties(aasdk PROPERTIES INTERFACE_LINK_DIRECTORIES "${AASDK_LIB_DIR}")
        target_link_libraries(aasdk INTERFACE ${AASDK_LIB})
    endif()

    if (NOT TARGET aasdk_proto)
        add_library(aasdk_proto INTERFACE)
        if (AASDK_PROTO_INCLUDE_DIR)
            target_include_directories(aasdk_proto INTERFACE ${AASDK_PROTO_INCLUDE_DIR})
        endif()
        if (AASDK_PROTOBUF_RUNTIME_INCLUDE_DIR)
            target_include_directories(aasdk_proto INTERFACE ${AASDK_PROTOBUF_RUNTIME_INCLUDE_DIR})
        endif()
        if (AASDK_ABSEIL_INCLUDE_DIR)
            target_include_directories(aasdk_proto INTERFACE ${AASDK_ABSEIL_INCLUDE_DIR})
        endif()
        set_target_properties(aasdk_proto PROPERTIES INTERFACE_LINK_DIRECTORIES "${AASDK_LIB_DIR}")
        target_link_libraries(aasdk_proto INTERFACE ${AASDK_PROTO_LIB})
    endif()

    set(AASDK_INCLUDE_DIRS ${AASDK_INCLUDE_DIR})
    set(AASDK_PROTO_INCLUDE_DIRS ${AASDK_PROTO_INCLUDE_DIR} ${AASDK_PROTOBUF_RUNTIME_INCLUDE_DIR} ${AASDK_ABSEIL_INCLUDE_DIR})
    set(AASDK_LIBRARIES ${AASDK_LIB} ${AASDK_PROTO_LIB})
else()
    if (aasdk_FIND_REQUIRED)
        message(FATAL_ERROR "Could not find aasdk/aap_protobuf in local build or system prefixes")
    endif()
endif()

mark_as_advanced(
    AASDK_INCLUDE_DIR
    AASDK_PROTO_INCLUDE_DIR
    AASDK_PROTOBUF_RUNTIME_INCLUDE_DIR
    AASDK_ABSEIL_INCLUDE_DIR
    AASDK_LIB_DIR
    AASDK_LIB
    AASDK_PROTO_LIB
)
