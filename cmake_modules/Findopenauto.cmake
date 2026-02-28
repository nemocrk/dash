set(OPENAUTO_HINTS
    "${CMAKE_SOURCE_DIR}/third_party/openauto/build-release"
    "${CMAKE_SOURCE_DIR}/third_party/openauto"
    "/usr/local"
    "$ENV{HOME}/openauto"
)

find_path(OPENAUTO_INCLUDE_DIR
    f1x/openauto/autoapp/App.hpp
    PATHS ${OPENAUTO_HINTS}
    PATH_SUFFIXES include
)

find_path(OPENAUTO_LIB_DIR
    libopenauto.so
    PATHS ${OPENAUTO_HINTS}
    PATH_SUFFIXES lib
)

find_library(OPENAUTO_LIB
    NAMES openauto
    PATHS ${OPENAUTO_LIB_DIR}
    NO_DEFAULT_PATH
)

if (OPENAUTO_INCLUDE_DIR AND OPENAUTO_LIB_DIR AND OPENAUTO_LIB)
    set(OPENAUTO_FOUND TRUE)
endif()
  
if (OPENAUTO_FOUND)
    if (NOT openauto_FIND_QUIETLY)
        message(STATUS "Found openauto:")
        message(STATUS " - Includes: ${OPENAUTO_INCLUDE_DIR}")
        message(STATUS " - Libraries: ${OPENAUTO_LIB_DIR}")
    endif()
    if (NOT TARGET openauto)
        add_library(openauto INTERFACE)
        target_include_directories(openauto INTERFACE ${OPENAUTO_INCLUDE_DIR}) 
        set_target_properties(openauto PROPERTIES INTERFACE_LINK_DIRECTORIES "${OPENAUTO_LIB_DIR}")
        target_link_libraries(openauto INTERFACE ${OPENAUTO_LIB})
    endif()
    set(OPENAUTO_INCLUDE_DIRS ${OPENAUTO_INCLUDE_DIR})
    set(OPENAUTO_LIBRARIES ${OPENAUTO_LIB})
else()
    if (openauto_FIND_REQUIRED)
               message(FATAL_ERROR "Could not find openauto")
    endif()
endif()

mark_as_advanced(OPENAUTO_INCLUDE_DIR OPENAUTO_LIB_DIR OPENAUTO_LIB)
