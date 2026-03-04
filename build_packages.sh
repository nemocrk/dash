#!/bin/bash

# DevOps Build Pipeline for Dash Project
# Generates .deb packages for all components in ./out

set -e # Exit on error

SCRIPT_PATH=$(dirname "$(realpath -s "$0")")
OUT_DIR="$SCRIPT_PATH/out"
THIRD_PARTY_DIR="$SCRIPT_PATH/third_party"
PATCHES_DIR="$SCRIPT_PATH/patches"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${GREEN}=== Starting Dash Build Factory ===${NC}"

# 0. Prep Environment
mkdir -p "$OUT_DIR"
mkdir -p "$THIRD_PARTY_DIR"

# Install Build Tools if missing
if ! command -v checkinstall &> /dev/null; then
    echo -e "${YELLOW}Installing build dependencies (checkinstall, cmake, git)...${NC}"
    sudo apt-get update
    sudo apt-get install -y checkinstall cmake git build-essential automake autoconf libtool pkg-config
fi


# 1. AASDK (CMake + CPack)
echo -e "${GREEN}>>> Building AASDK...${NC}"
if [ ! -d "$THIRD_PARTY_DIR/aasdk" ]; then
    git clone https://github.com/nemocrk/aasdk.git "$THIRD_PARTY_DIR/aasdk"
fi
cd "$THIRD_PARTY_DIR/aasdk"
# Apply Patch if needed (idempotent check)
if ! grep -q "FIPS_mode_set" "$THIRD_PARTY_DIR/aasdk/src/Transport/SSLWrapper.cpp" 2>/dev/null; then
     echo "Applying OpenSSL FIPS patch..."
     git apply "$PATCHES_DIR/aasdk_openssl-fips-fix.patch" || echo "Patch might be already applied or failed."
fi

if [ -f "build.sh" ]; then
    echo "Detected build.sh, using internal build script..."
    chmod +x build.sh
    ./build.sh release package
    find . -maxdepth 2 -name "*.deb" -exec mv {} "$OUT_DIR/" -f \;
else
    rm -rf build
    mkdir -p build && cd build
    cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local ..
    make -j$(nproc)
    sudo checkinstall --pkgname=aasdk --pkgversion=1.0.0 --pkgrelease=1 \
                      --pkglicense=MIT --maintainer="nemo@dash" \
                      --nodoc --default --install=no --fstrans=no -y
    mv *.deb "$OUT_DIR/" -f
fi
echo -e "${GREEN}AASDK Package Created.${NC}"

# 2. h264bitstream (Autotools + Checkinstall)
echo -e "${GREEN}>>> Building h264bitstream...${NC}"
if [ ! -d "$THIRD_PARTY_DIR/h264bitstream" ]; then
    git clone https://github.com/aizvorski/h264bitstream "$THIRD_PARTY_DIR/h264bitstream"
fi
cd "$THIRD_PARTY_DIR/h264bitstream"
if [ -f "build.sh" ]; then
    echo "Detected build.sh, using internal build script..."
    chmod +x build.sh
    ./build.sh
    find . -maxdepth 2 -name "*.deb" -exec mv {} "$OUT_DIR/" -f \;
else
    make clean || true
    autoreconf -i
    ./configure --prefix=/usr/local
    make -j$(nproc)
    # Use checkinstall to create deb
    sudo checkinstall --pkgname=h264bitstream --pkgversion=0.2.0 --pkgrelease=1 \
                      --pkglicense=MIT --maintainer="nemo@dash" \
                      --nodoc --default --install=no --fstrans=no -y
    mv *.deb "$OUT_DIR/" -f
fi
echo -e "${GREEN}h264bitstream Package Created.${NC}"

# 3. OpenAuto (CMake + CPack)
echo -e "${GREEN}>>> Building OpenAuto...${NC}"
if [ ! -d "$THIRD_PARTY_DIR/openauto" ]; then
    git clone https://github.com/nemocrk/openauto.git "$THIRD_PARTY_DIR/openauto"
fi
cd "$THIRD_PARTY_DIR/openauto"
# Ensure AASDK is found (we just built it, but cmake needs to find it.
# Usually requires installing AASDK first or setting paths.
# For packaging pipeline, we temporarily install the AASDK deb we just made to build OpenAuto)
echo "Temporarily installing AASDK for OpenAuto build..."
if ls "$OUT_DIR"/libaasdk*.deb 1> /dev/null 2>&1; then
    sudo dpkg -i "$OUT_DIR"/libaasdk*.deb
else
    echo -e "${RED}Error: AASDK .deb package not found in $OUT_DIR. Build failed.${NC}"
    exit 1
fi

if [ -f "build.sh" ]; then
    echo "Detected build.sh, using internal build script..."
    chmod +x build.sh
    ./build.sh release --package
    find . -maxdepth 2 -name "*.deb" -exec mv {} "$OUT_DIR/" -f \;
else
    rm -rf build
    mkdir -p build && cd build
    PROTOC_EXECUTABLE="/usr/local/bin/protoc"
    cmake -DCMAKE_BUILD_TYPE=Release -DRPI_BUILD=TRUE -DGST_BUILD=TRUE -DCMAKE_INSTALL_PREFIX=/usr/local -DPROTOBUF_PROTOC_EXECUTABLE=${PROTOC_EXECUTABLE} ..
    make -j$(nproc)
    sudo checkinstall --pkgname=openauto --pkgversion=1.0.0 --pkgrelease=1 \
                      --pkglicense=MIT --maintainer="nemo@dash" \
                      --nodoc --default --install=no --fstrans=no -y
    mv *.deb "$OUT_DIR/" -f
fi
echo -e "${GREEN}OpenAuto Package Created.${NC}"

# 4. PulseAudio (Custom Build + Checkinstall)
echo -e "${GREEN}>>> Building Custom PulseAudio...${NC}"
if [ ! -d "$THIRD_PARTY_DIR/pulseaudio" ]; then
    sudo sed -i 's/#deb-src/deb-src/g' /etc/apt/sources.list
    sudo apt-get update -y
    git clone "https://gitlab.freedesktop.org/pulseaudio/pulseaudio.git" "$THIRD_PARTY_DIR/pulseaudio"
    sudo apt-get install -y autopoint
    cd "$THIRD_PARTY_DIR/pulseaudio"
    git checkout tags/v17.0
fi
cd "$THIRD_PARTY_DIR/pulseaudio"
make clean || true

# Apply IMTU Patch
if grep -q "*imtu = 48;" src/modules/bluetooth/backend-native.c; then
    echo "Applying IMTU patch..."
    sed -i 's/*imtu = 48;/*imtu = 60;/g' src/modules/bluetooth/backend-native.c
    sed -i 's/*imtu = 48;/*imtu = 60;/g' src/modules/bluetooth/backend-ofono.c
fi

# Install build deps for pulse
sudo apt-get build-dep -y pulseaudio

if [ -f "build.sh" ]; then
    echo "Detected build.sh, using internal build script..."
    chmod +x build.sh
    ./build.sh
    find . -maxdepth 2 -name "*.deb" -exec mv {} "$OUT_DIR/" -f \;
else
    # Install Meson/Ninja dependencies
    sudo apt-get install -y meson ninja-build libgdbm-dev

    rm -rf build
    mkdir -p build && cd build

    # Configure with Meson (BlueZ enabled as required for HFP)
    meson setup --prefix=/usr --buildtype=release -D database=gdbm -D doxygen=false -D bluez5=enabled -D tests=false ..
    ninja

    # Checkinstall
    sudo checkinstall --pkgname=pulseaudio-dash --pkgversion=17.0 --pkgrelease=1 \
                      --pkglicense=LGPL --maintainer="nemo@dash" \
                      --conflicts=pulseaudio --provides=pulseaudio \
                      --conflicts="pulseaudio,libpulse0,pipewire-pulse,pipewire-audio" \
                      --replaces="pulseaudio,libpulse0,pipewire-pulse,pipewire-audio" --provides=pulseaudio \
                      --nodoc --default --install=no --fstrans=no -y \
                      ninja install
    mv *.deb "$OUT_DIR/" -f
fi
echo -e "${GREEN}PulseAudio Package Created.${NC}"

# 5. BlueZ (Configure + Checkinstall)
echo -e "${GREEN}>>> Building Custom BlueZ...${NC}"
BLUEZ_VER="5.66" # Updated from 5.63/5.86 mix in install.sh to a stable recent
if [ ! -d "$THIRD_PARTY_DIR/bluez-${BLUEZ_VER}" ]; then
    cd "$THIRD_PARTY_DIR"
    wget -c https://www.kernel.org/pub/linux/bluetooth/bluez-${BLUEZ_VER}.tar.xz
    tar -xf bluez-${BLUEZ_VER}.tar.xz
fi
cd "$THIRD_PARTY_DIR/bluez-${BLUEZ_VER}"
make clean || true

if [ -f "build.sh" ]; then
    echo "Detected build.sh, using internal build script..."
    chmod +x build.sh
    ./build.sh
    find . -maxdepth 2 -name "*.deb" -exec mv {} "$OUT_DIR/" -f \;
else
    sudo apt-get install -y libdbus-1-dev libudev-dev libical-dev libreadline-dev libjson-c-dev
    ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var --enable-library --disable-manpages --enable-deprecated
    make -j$(nproc)

    sudo checkinstall --pkgname=bluez-dash --pkgversion=${BLUEZ_VER} --pkgrelease=1 \
                      --pkglicense=GPL --maintainer="nemo@dash" \
                      --conflicts=bluez --provides=bluez \
                      --conflicts="bluez,bluez-cups" --replaces="bluez,bluez-cups" \
                      --provides=bluez \
                      --nodoc --default --install=no --fstrans=no -y
    mv *.deb "$OUT_DIR/" -f
fi
echo -e "${GREEN}BlueZ Package Created.${NC}"

# 6. Dash (CMake + CPack)
echo -e "${GREEN}>>> Building Dash (Main App)...${NC}"
cd "$SCRIPT_PATH"
mkdir -p build && cd build

# Ensure OpenAuto is found (install temp)
echo "Temporarily installing OpenAuto for Dash build..."
sudo dpkg -i "$OUT_DIR"/openauto*.deb

cmake -DCMAKE_BUILD_TYPE=Release -DRPI_BUILD=TRUE -DGST_BUILD=TRUE -DPROTOBUF_PROTOC_EXECUTABLE=${PROTOC_EXECUTABLE} ..
make -j$(nproc)
cpack -G DEB
mv *.deb "$OUT_DIR/" -f
echo -e "${GREEN}Dash Package Created.${NC}"

echo -e "${GREEN}=== Build Complete. Packages are in $OUT_DIR ===${NC}"
ls -lh "$OUT_DIR"
