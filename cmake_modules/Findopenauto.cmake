set(OPENAUTO_HINTS
    "$ENV{OPENAUTO_ROOT}"
    "$ENV{OPENAUTO_DIR}"
    "${CMAKE_SOURCE_DIR}/third_party/openauto/build-release"
    "${CMAKE_SOURCE_DIR}/third_party/openauto/build-debug"
    "${CMAKE_SOURCE_DIR}/third_party/openauto"
    "/usr/local"
    "/usr"
    "$ENV{HOME}/openauto"
)

execute_process(
    COMMAND dpkg-architecture -qDEB_HOST_MULTIARCH
    OUTPUT_VARIABLE OPENAUTO_MULTIARCH
    OUTPUT_STRIP_TRAILING_WHITESPACE
    ERROR_QUIET
)

set(OPENAUTO_LIB_SUFFIXES lib)
if(OPENAUTO_MULTIARCH)
    list(APPEND OPENAUTO_LIB_SUFFIXES "lib/${OPENAUTO_MULTIARCH}")
endif()

find_path(OPENAUTO_INCLUDE_DIR
    f1x/openauto/autoapp/App.hpp
    PATHS ${OPENAUTO_HINTS}
    PATH_SUFFIXES include
)

find_library(OPENAUTO_LIB
    NAMES openauto
    PATHS ${OPENAUTO_HINTS}
    PATH_SUFFIXES ${OPENAUTO_LIB_SUFFIXES}
)

if(OPENAUTO_INCLUDE_DIR AND OPENAUTO_LIB)
    get_filename_component(OPENAUTO_LIB_DIR "${OPENAUTO_LIB}" DIRECTORY)
    set(OPENAUTO_FOUND TRUE)
endif()

if(OPENAUTO_FOUND)
    if(NOT openauto_FIND_QUIETLY)
        message(STATUS "Found openauto:")
        message(STATUS " - Includes: ${OPENAUTO_INCLUDE_DIR}")
        message(STATUS " - Library: ${OPENAUTO_LIB}")
    endif()

    if(NOT TARGET openauto::openauto)
        add_library(openauto::openauto UNKNOWN IMPORTED)
        set_target_properties(openauto::openauto PROPERTIES
            IMPORTED_LOCATION "${OPENAUTO_LIB}"
            INTERFACE_INCLUDE_DIRECTORIES "${OPENAUTO_INCLUDE_DIR}"
        )
    endif()

    if(NOT TARGET openauto)
        add_library(openauto INTERFACE)
        target_link_libraries(openauto INTERFACE openauto::openauto)
    endif()

    set(OPENAUTO_INCLUDE_DIRS "${OPENAUTO_INCLUDE_DIR}")
    set(OPENAUTO_LIBRARIES "${OPENAUTO_LIB}")
else()
    if(openauto_FIND_REQUIRED)
        message(FATAL_ERROR "Could not find openauto")
    endif()
endif()

mark_as_advanced(OPENAUTO_INCLUDE_DIR OPENAUTO_LIB OPENAUTO_LIB_DIR OPENAUTO_MULTIARCH)
