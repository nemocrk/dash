#!/usr/bin/env bash

# Dash package orchestrator
# Builds all deb packages needed for deployment in another environment.
# Rule: third_party modules are built/packaged ONLY through their own build.sh scripts.

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUT_DIR="${ROOT_DIR}/out"
AASDK_DIR="${ROOT_DIR}/third_party/aasdk"
OPENAUTO_DIR="${ROOT_DIR}/third_party/openauto"
ROOT_BUILD_DIR="${ROOT_DIR}/build-packages"
PROTOBUF_AASDK_ROOT="/opt/aasdk/protobuf"

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

log_step() { echo -e "${BLUE}>>> $*${NC}"; }
log_ok() { echo -e "${GREEN}✓ $*${NC}"; }
log_warn() { echo -e "${YELLOW}! $*${NC}"; }
log_err() { echo -e "${RED}✗ $*${NC}"; }

require_file() {
    local p="$1"
    if [ ! -f "$p" ]; then
        log_err "Missing required file: $p"
        exit 1
    fi
}

trim() {
    sed -e 's/^ *//' -e 's/ *$//'
}

collect_debs() {
    local src_dir="$1"
    if [ -d "$src_dir" ]; then
        find "$src_dir" -maxdepth 2 -type f -name '*.deb' -exec cp -f {} "$OUT_DIR/" \;
    fi
}

analyze_root_dependencies() {
    local cmake_file="${ROOT_DIR}/CMakeLists.txt"
    require_file "$cmake_file"

    local deps_raw
    deps_raw="$(sed -n 's/^set(CPACK_DEBIAN_PACKAGE_DEPENDS "\(.*\)")/\1/p' "$cmake_file" | head -n1)"
    if [ -z "$deps_raw" ]; then
        log_warn "CPACK_DEBIAN_PACKAGE_DEPENDS not found. Continuing with defaults."
        deps_raw=""
    fi

    NEED_PROTOBUF_AASDK=false
    NEED_OPENAUTO_LIBS=false

    echo -e "${BLUE}Root package declared dependencies:${NC}"
    if [ -n "$deps_raw" ]; then
        IFS=',' read -r -a deps <<< "$deps_raw"
        for dep in "${deps[@]}"; do
            dep="$(echo "$dep" | trim)"
            [ -z "$dep" ] && continue
            echo " - $dep"
            if [[ "$dep" == *"libprotobuf-dev"* ]]; then
                NEED_PROTOBUF_AASDK=true
            fi
            if [[ "$dep" == *"libopenauto"* ]]; then
                NEED_OPENAUTO_LIBS=true
            fi
        done
    fi

    echo
    log_step "Dependency risk analysis"
    if [ "$NEED_PROTOBUF_AASDK" = true ]; then
        log_warn "Detected dependency on libprotobuf-dev while protobuf is also built in AASDK flow."
        log_warn "Action: create isolated protobuf-aasdk-dev package via third_party/aasdk/build.sh target."
    else
        log_ok "No explicit libprotobuf-dev risk detected in root CPACK deps."
    fi

    if [ "$NEED_OPENAUTO_LIBS" = true ]; then
        log_ok "Root package depends on libopenauto: will produce libopenauto/libopenauto-dev packages via openauto build.sh."
    else
        log_warn "Root package does not explicitly depend on libopenauto; continuing anyway with openauto libs packaging."
        NEED_OPENAUTO_LIBS=true
    fi

    if ! grep -q "libaasdk" <<< "$deps_raw"; then
        log_warn "libaasdk is not explicitly listed in CPACK_DEBIAN_PACKAGE_DEPENDS."
        log_warn "Relying on dpkg-shlibdeps auto-detection; local libaasdk package will still be built and installed for safe root packaging."
    fi

    # Conservative default for reproducibility:
    # always build/install isolated protobuf-aasdk-dev and force CMake to use it.
    NEED_PROTOBUF_AASDK=true
}

build_aasdk_packages() {
    log_step "Building AASDK packages using third_party/aasdk/build.sh"
    require_file "${AASDK_DIR}/build.sh"

    pushd "$AASDK_DIR" >/dev/null
    chmod +x build.sh

    local args=(release package)
    if [ "$NEED_PROTOBUF_AASDK" = true ]; then
        args+=(package-protobuf-dev)
    fi

    ./build.sh "${args[@]}"
    popd >/dev/null

    collect_debs "${AASDK_DIR}/packages"
    log_ok "AASDK packages collected in ${OUT_DIR}"
}

build_openauto_packages() {
    log_step "Building OpenAuto packages using third_party/openauto/build.sh"
    require_file "${OPENAUTO_DIR}/build.sh"

    pushd "$OPENAUTO_DIR" >/dev/null
    chmod +x build.sh

    local args=(release --package --output-dir "$OUT_DIR" --prefer-installed-aasdk)
    if [ "$NEED_OPENAUTO_LIBS" = true ]; then
        args+=(--package-libs)
    fi
    if [ "$NEED_PROTOBUF_AASDK" = true ]; then
        args+=(--protobuf-root "$PROTOBUF_AASDK_ROOT")
    fi

    ./build.sh "${args[@]}"
    popd >/dev/null

    collect_debs "${OPENAUTO_DIR}/output"
    log_ok "OpenAuto packages collected in ${OUT_DIR}"
}

install_aasdk_for_openauto_build() {
    log_step "Installing local AASDK packages required by OpenAuto build"

    local debs=()
    while IFS= read -r f; do debs+=("$f"); done < <(find "$OUT_DIR" -maxdepth 1 -type f -name 'libaasdk*.deb' | sort)
    if [ "$NEED_PROTOBUF_AASDK" = true ]; then
        while IFS= read -r f; do debs+=("$f"); done < <(find "$OUT_DIR" -maxdepth 1 -type f -name 'protobuf-aasdk-dev*.deb' | sort)
    fi

    if [ ${#debs[@]} -eq 0 ]; then
        log_err "No AASDK dependency packages found in ${OUT_DIR}."
        exit 1
    fi

    sudo dpkg -i "${debs[@]}"
    log_ok "AASDK dependencies installed for OpenAuto build"
}

install_local_build_requirements() {
    log_step "Installing local runtime/devel packages needed to build root package"

    local debs=()
    while IFS= read -r f; do debs+=("$f"); done < <(find "$OUT_DIR" -maxdepth 1 -type f -name 'libaasdk*.deb' | sort)
    while IFS= read -r f; do debs+=("$f"); done < <(find "$OUT_DIR" -maxdepth 1 -type f -name 'libopenauto*.deb' | sort)

    if [ "$NEED_PROTOBUF_AASDK" = true ]; then
        while IFS= read -r f; do debs+=("$f"); done < <(find "$OUT_DIR" -maxdepth 1 -type f -name 'protobuf-aasdk-dev*.deb' | sort)
    fi

    if [ ${#debs[@]} -eq 0 ]; then
        log_err "No local dependency packages found in ${OUT_DIR}."
        exit 1
    fi

    sudo dpkg -i "${debs[@]}"
    log_ok "Local dependency packages installed"
}

build_root_package() {
    log_step "Building root package (dash-headunit)"

    rm -rf "$ROOT_BUILD_DIR"
    local root_cmake_args=(-DCMAKE_BUILD_TYPE=Release -DGST_BUILD=TRUE)
    if [ "$NEED_PROTOBUF_AASDK" = true ]; then
        local proto_multiarch proto_lib
        proto_multiarch="$(dpkg-architecture -qDEB_HOST_MULTIARCH 2>/dev/null || true)"
        proto_lib="${PROTOBUF_AASDK_ROOT}/lib/${proto_multiarch}/libprotobuf.a"
        if [ ! -f "$proto_lib" ]; then
            proto_lib="${PROTOBUF_AASDK_ROOT}/lib/libprotobuf.a"
        fi
        root_cmake_args+=(-DProtobuf_INCLUDE_DIR="${PROTOBUF_AASDK_ROOT}/include")
        root_cmake_args+=(-DPROTOBUF_INCLUDE_DIR="${PROTOBUF_AASDK_ROOT}/include")
        root_cmake_args+=(-DProtobuf_LIBRARY="${proto_lib}")
        root_cmake_args+=(-DPROTOBUF_LIBRARIES="${proto_lib}")
        root_cmake_args+=(-DPROTOBUF_PROTOC_EXECUTABLE="${PROTOBUF_AASDK_ROOT}/bin/protoc")
    fi
    cmake -S "$ROOT_DIR" -B "$ROOT_BUILD_DIR" "${root_cmake_args[@]}"
    cmake --build "$ROOT_BUILD_DIR" -j"$(nproc 2>/dev/null || echo 4)"

    pushd "$ROOT_BUILD_DIR" >/dev/null
    cpack -G DEB
    popd >/dev/null

    collect_debs "$ROOT_BUILD_DIR"
    log_ok "Root package collected in ${OUT_DIR}"
}

main() {
    log_step "Starting package build factory"
    rm -rf "$OUT_DIR"
    mkdir -p "$OUT_DIR"

    analyze_root_dependencies
    build_aasdk_packages
    install_aasdk_for_openauto_build
    build_openauto_packages
    install_local_build_requirements
    build_root_package

    echo
    log_ok "Package build completed. Output directory: ${OUT_DIR}"
    ls -lh "$OUT_DIR"/*.deb
}

main "$@"
