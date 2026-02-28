#!/bin/bash

# Resolve submodule URL from .gitmodules when available.
get_submodule_url() {
  local submodule_path="$1"
  local gitmodules_file
  gitmodules_file="$(dirname "$(realpath -s "$0")")/.gitmodules"

  if [ -f "$gitmodules_file" ]; then
    local submodule_name
    submodule_name="$(git config -f "$gitmodules_file" --get-regexp '^submodule\..*\.path$' \
      | awk -v p="$submodule_path" '$2==p {print $1}' \
      | sed -e 's/^submodule\.//' -e 's/\.path$//' \
      | head -n1)"
    if [ -n "$submodule_name" ]; then
      git config -f "$gitmodules_file" --get "submodule.${submodule_name}.url"
      return 0
    fi
  fi

  return 1
}

# Clone repo only if missing; update if already present.
ensure_repo() {
  local repo_url="$1"
  local repo_dir="$2"

  if [ -d "$repo_dir" ] && git -C "$repo_dir" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "Repo già presente: $repo_dir"
    local before_rev
    local after_rev
    before_rev="$(cd "$repo_dir" && git rev-parse HEAD 2>/dev/null || echo "")"
    (cd "$repo_dir" && git pull --ff-only "$repo_url" || true)
    after_rev="$(cd "$repo_dir" && git rev-parse HEAD 2>/dev/null || echo "")"
    if [ -n "$BUILD_MARKER" ] && [ "$before_rev" != "$after_rev" ]; then
      rm -f "$repo_dir/$BUILD_MARKER"
      echo "Repository aggiornato: marker build invalidato ($repo_dir/$BUILD_MARKER)."
    fi
    return 0
  fi

  if [ -d "$repo_dir" ]; then
    echo "Cartella $repo_dir esiste ma non è una worktree git valida, skip clone."
    return 1
  fi

  git clone "$repo_url" "$repo_dir"
}

#repo addresses
aasdkRepo="$(get_submodule_url "third_party/aasdk" || echo "https://github.com/nemocrk/aasdk.git")"
gstreamerRepo="https://github.com/GStreamer/qt-gstreamer"
openautoRepo="$(get_submodule_url "third_party/openauto" || echo "https://github.com/nemocrk/openauto.git")"
h264bitstreamRepo="https://github.com/aizvorski/h264bitstream"
pulseaudioRepo="https://gitlab.freedesktop.org/pulseaudio/pulseaudio.git"

#Help text
display_help() {
    echo
    echo "   --deps           install all dependencies"
    echo "   --aasdk          install and build aasdk"
    echo "   --openauto       install and build openauto "
    echo "   --gstreamer      install and build gstreamer "
    echo "   --dash           install and build dash "
    echo "   --h264bitstream  install and build h264bitstream"
    echo "   --pulseaudio     install and build pulseaudio to fix raspberry pi bluetooth HFP"
    echo "   --bluez          install and build bluez to fix raspberry pi bluetooth outbound connection"
    echo "   --ofono          install and configure ofono to allow bluetooth HFP"
    echo "   --debug          create a debug build "
    echo
}

# Check Distro version
if [ -f /etc/os-release ]; then
  OS_DISTRO=$(source /etc/os-release; echo ${PRETTY_NAME%% *})
  if [ $OS_DISTRO = "Debian" ]; then
    isDebian=true
    #determine if script is being run on bullseye or above
    read -d . DEBIAN_VERSION < /etc/debian_version
    if (( $DEBIAN_VERSION > 10 )); then
      echo Detected Debian version of Bullseye or above
      BULLSEYE=true
    else
      echo Older version of Debian detected
      BULLSEYE=false
    fi
  elif [ $OS_DISTRO = "Ubuntu" ]; then
    isUbuntu=true
    UBUNTU_VERSION=$(source /etc/os-release; echo ${VERSION_ID%% *} | cut -c1-2)
    if (( $UBUNTU_VERSION >= 22 )); then
      echo Detcted Ubuntu version of Jammy or above
      JAMMY=true
    else
      echo Older version of Ubuntu detected.
      JAMMY=false
    fi
  else
    echo "Unsupported OS detected. Recommended Debian 12 or Ubuntu 22.04"
    exit 1
  fi
fi

#check if /etc/rpi-issue exists, if not set the install Args to be false
if [ -f /etc/rpi-issue ]
then
  rpiModel=$(awk '{print $3}' < /sys/firmware/devicetree/base/model)
  echo "Detected Raspberry Pi Model $rpiModel"
  installArgs="-DRPI_BUILD=true"
  isRpi=true
else
  installArgs=""
  isRpi=false
fi

#check for potential resource limit
totalMem=$(free -tm | awk '/Total/ {print $2}')
if [[ $totalMem -lt 1900 ]]; then
  echo "$totalMem MB RAM detected"
  echo "You may run out of memory while compiling with less than 2GB"
  echo "Consider raising swap space or compiling on another machine"
  sleep 5;
fi

BUILD_TYPE="Release"

#check to see if there are any arguments supplied, if none are supplied run full install
if [ $# -gt 0 ]; then
  #initialize all arguments to false before looping to find which are available
  deps=false
  aasdk=false
  gstreamer=false
  openauto=false
  dash=false
  h264bitstream=false
  pulseaudio=false
  bluez=false
  ofono=false
    while [ "$1" != "" ]; do
        case $1 in
            --deps )           shift
                                    deps=true
                                    ;;
            --aasdk )           aasdk=true
                                    ;;
            --gstreamer )       gstreamer=true
                                    ;;
            --openauto )       openauto=true
                                    ;;
            --dash )           dash=true
                                    ;;
            --h264bitstream )  h264bitstream=true
                                    ;;
            --pulseaudio )     pulseaudio=true
                                    ;;
            --bluez )          bluez=true
                                    ;;
            --ofono )          ofono=true
                                    ;;
            --debug )          BUILD_TYPE="Debug"
                                    ;;
            -h | --help )           display_help
                                    exit
                                    ;;
            * )                     display_help
                                    exit 1
        esac
        shift
    done
else
    echo -e Full install running'\n'
    deps=true
    aasdk=true
    gstreamer=true
    openauto=true
    dash=true
    h264bitstream=true
    pulseaudio=false
    bluez=false
    ofono=false
    if [ $isRpi = true ]; then
      pulseaudio=true
      bluez=true
      ofono=false # Skip Ofono due to issue with Bluetooth HSP
    fi
fi

script_path=$(dirname "$(realpath -s "$0")")
echo "Script directory is $script_path"
THIRD_PARTY_DIR="$script_path/third_party"
mkdir -p "$THIRD_PARTY_DIR"
BUILD_MARKER=".dash_build_ok"

installArgs="-DCMAKE_BUILD_TYPE=${BUILD_TYPE} $installArgs"

#Array of dependencies any new dependencies can be added here
dependencies=(
"alsa-utils"
"cmake"
"libboost-all-dev"
"libusb-1.0-0-dev"
"libssl-dev"
"libprotobuf-dev"
"protobuf-c-compiler"
"protobuf-compiler"
"libqt5multimedia5"
"libqt5multimedia5-plugins"
"libqt5multimediawidgets5"
"qtbase5-dev"
"qtbase5-dev-tools"
"qtmultimedia5-dev"
"libqt5bluetooth5"
"libqt5bluetooth5-bin"
"qtconnectivity5-dev"
"pulseaudio"
"pulseaudio-module-bluetooth"
"librtaudio-dev"
"librtaudio6"
"libkf5bluezqt-dev"
"libtag1-dev"
"qml-module-qtquick2"
"libglib2.0-dev"
"libgstreamer1.0-dev"
"gstreamer1.0-plugins-base-apps"
"gstreamer1.0-plugins-bad"
"gstreamer1.0-libav"
"gstreamer1.0-alsa"
"libgstreamer-plugins-base1.0-dev"
"qtdeclarative5-dev"
"qtdeclarative5-dev-tools"
"qml-module-qtquick-window2"
"qml-module-qtquick-controls2"
"libgstreamer-plugins-bad1.0-dev"
"libunwind-dev"
"qml-module-qtmultimedia"
"libqt5serialbus5-dev"
"libqt5serialbus5-plugins"
"libqt5serialport5-dev"
"libqt5websockets5-dev"
"libqt5svg5-dev"
"build-essential"
"libtool"
"autoconf"
"ffmpeg"
)


###############################  dependencies  #########################
if [ $deps = false ]
  then
    echo -e skipping dependencies '\n'
  else
    if [ $isDebian ] && [ $BULLSEYE = false ]; then
      echo Adding qt5-default to dependencies
      dependencies[${#dependencies[@]}]="qt5-default"
    fi

    echo installing dependencies
    #loop through dependencies and install
    echo Running apt-get update
    sudo apt-get update

    installString="sudo apt-get install -y "

    #create apt-get install string
    for i in ${dependencies[@]}; do
      installString+=" $i"
    done

    #run install
    ${installString}
    if [[ $? -eq 0 ]]; then
        echo -e All dependencies Installed ok '\n'
    else
        echo Package failed to install with error code $?, quitting check logs above
        exit 1
    fi
fi

############################### pulseaudio #########################
if [ $pulseaudio = false ]
  then
    echo -e skipping pulseaudio '\n'
else
  cd "$THIRD_PARTY_DIR"
    
  echo Preparing to compile and install pulseaudio
  if [ -f "$THIRD_PARTY_DIR/pulseaudio/$BUILD_MARKER" ]; then
    echo "Pulseaudio già compilato in precedenza, skip build."
  else
  echo Grabbing pulseaudio deps
  sudo sed -i 's/#deb-src/deb-src/g' /etc/apt/sources.list
  sudo apt-get update -y
  ensure_repo "$pulseaudioRepo" "$THIRD_PARTY_DIR/pulseaudio"
  sudo apt-get install -y autopoint
  cd "$THIRD_PARTY_DIR/pulseaudio"
    git checkout tags/v17.0
    echo Applying imtu patch
    sed -i 's/*imtu = 48;/*imtu = 60;/g' src/modules/bluetooth/backend-native.c
    sed -i 's/*imtu = 48;/*imtu = 60;/g' src/modules/bluetooth/backend-ofono.c
    sudo apt-get build-dep -y pulseaudio
    ./bootstrap.sh
    make -j$(nproc)
    sudo make install
  sudo ldconfig
  # copy configs and force an exit 0 just in case files are identical (we don't care but it will make pimod exit)
  sudo cp /usr/share/pulseaudio/alsa-mixer/profile-sets/* /usr/local/share/pulseaudio/alsa-mixer/profile-sets/
  touch "$THIRD_PARTY_DIR/pulseaudio/$BUILD_MARKER"
  cd "$THIRD_PARTY_DIR"
  fi
fi


###############################  ofono  #########################
if [ $ofono = false ]
  then
    echo -e skipping ofono '\n'
  else
    echo Installing ofono
    sudo apt-get install -y ofono
    if [[ $? -eq 0 ]]; then
        echo -e ofono Installed ok '\n'
    else
        echo Package failed to install with error code $?, quitting check logs above
        exit 1
    fi
    echo "Enabling Ofono in Pulse config"
    sudo sed -i 's/load-module module-bluetooth-discover/load-module module-bluetooth-discover headset=ofono/g' /etc/pulse/default.pa
    sudo tee -a /etc/pulse/default.pa <<'EOT'

### Echo cancel and noise reduction
.ifexists module-echo-cancel.so
load-module module-echo-cancel aec_method=webrtc source_name=ec_out sink_name=ec_ref
set-default-source ec_out
set-default-sink ec_ref
.endif
EOT
fi

###############################  bluez  #########################
if [ $bluez = false ]
  then
    echo -e skipping bluez '\n'
  else
    cd "$THIRD_PARTY_DIR"

    echo Installing bluez
    if [ -f "$THIRD_PARTY_DIR/bluez-5.86/$BUILD_MARKER" ]; then
      echo "BlueZ già compilato in precedenza, skip build."
      cd "$script_path"
    else
    sudo apt-get install -y libdbus-1-dev libudev-dev libical-dev libreadline-dev libjson-c-dev
    if [ ! -f "$THIRD_PARTY_DIR/bluez-5.86.tar.xz" ]; then
      wget www.kernel.org/pub/linux/bluetooth/bluez-5.86.tar.xz
    fi
    rm -rf "$THIRD_PARTY_DIR/bluez-5.86"
    tar -xvf bluez-5.86.tar.xz bluez-5.86/
    rm bluez-5.86.tar.xz
    cd bluez-5.86
    ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var --enable-library --disable-manpages --enable-deprecated
    make -j$(nproc)
    sudo make install
    touch "$THIRD_PARTY_DIR/bluez-5.86/$BUILD_MARKER"
    cd "$script_path"
    fi
fi

###############################  AASDK #########################
if [ $aasdk = false ]; then
	echo -e Skipping aasdk '\n'
else
  cd "$THIRD_PARTY_DIR"

  # clone/update aasdk
  ensure_repo "$aasdkRepo" "$THIRD_PARTY_DIR/aasdk"
  if [[ $? -ne 0 ]]; then
    echo Aasdk clone/pull error
    exit 1
  fi

  if [ -f "$THIRD_PARTY_DIR/aasdk/$BUILD_MARKER" ]; then
    echo "AASDK già compilato in precedenza, skip build."
    cd "$script_path"
  else
    #change into aasdk folder
    echo -e moving to aasdk '\n'
    cd "$THIRD_PARTY_DIR/aasdk"

    #apply set_FIPS_mode patch
    echo Apply set_FIPS_mode patch
    git apply $script_path/patches/aasdk_openssl-fips-fix.patch

    #create build directory
    echo Creating aasdk build directory
    mkdir build

    if [[ $? -eq 0 ]]; then
      echo -e aasdk build directory made
    else
      echo Unable to create aasdk build directory assuming it exists...
    fi

    cd build

    #beginning cmake
    cmake -DCMAKE_BUILD_TYPE=Release ../
    if [[ $? -eq 0 ]]; then
        echo -e Aasdk CMake completed successfully'\n'
    else
      echo Aasdk CMake failed with code $?
      exit 1
    fi

    #beginning make
    make -j$(nproc)

    if [[ $? -eq 0 ]]; then
      echo -e Aasdk Make completed successfully '\n'
    else
      echo Aasdk Make failed with code $?
      exit 1
    fi

    #begin make install
    sudo make install

    if [[ $? -eq 0 ]]
      then
      echo -e Aasdk installed ok'\n'
      echo
    else
      echo Aasdk install failed with code $?
      exit 1
    fi
    touch "$THIRD_PARTY_DIR/aasdk/$BUILD_MARKER"
    cd "$script_path"
  fi
fi

############################### h264bitstream #########################
if [ $h264bitstream = false ]; then
	echo -e Skipping h264bitstream '\n'
else
  cd "$THIRD_PARTY_DIR"

  #clone/update h264bitstream
  ensure_repo "$h264bitstreamRepo" "$THIRD_PARTY_DIR/h264bitstream"
  if [[ $? -ne 0 ]]; then
    echo h264bitstream clone/pull error
    exit 1
  fi

  if [ -f "$THIRD_PARTY_DIR/h264bitstream/$BUILD_MARKER" ]; then
    echo "h264bitstream già compilato in precedenza, skip build."
    cd "$script_path"
  else
    #change into folder
    echo -e moving to h264bitstream '\n'
    cd "$THIRD_PARTY_DIR/h264bitstream"

    echo Auto-reconfigure project
    autoreconf -i

    if [[ $? -eq 0 ]]; then
      echo -e autoreconfed h264bitstream
    else
      echo Unable to autoreconf h264bitstream
      exit 1
    fi

    echo Configuring h264bitstream

    ./configure --prefix=/usr/local
    if [[ $? -eq 0 ]]; then
        echo -e h264bitstream configured successfully'\n'
    else
      echo h264bitstream configure failed with code $?
      exit 1
    fi

    #beginning make
    make

    if [[ $? -eq 0 ]]; then
      echo -e h264bitstream Make completed successfully '\n'
    else
      echo h264bitstream Make failed with code $?
      exit 1
    fi

    #begin make install
    sudo make install

    if [[ $? -eq 0 ]]
      then
      echo -e h264bitstream installed ok'\n'
      echo
    else
      echo h264bitstream install failed with code $?
      exit 1
    fi
    touch "$THIRD_PARTY_DIR/h264bitstream/$BUILD_MARKER"
    cd "$script_path"
  fi
fi

################################  gstreamer  #########################
##check if gstreamer install is requested
#if [ $gstreamer = true ]; then
#  echo installing gstreamer
#
#  cd "$THIRD_PARTY_DIR"
#
#  #clone/update gstreamer
#  echo Cloning Gstreamer
#  ensure_repo "$gstreamerRepo" "$THIRD_PARTY_DIR/qt-gstreamer"
#  if [[ $? -ne 0 ]]; then
#    echo Gstreamer clone/pull error
#    exit 1
#  fi
#
#  if [ -f "$THIRD_PARTY_DIR/qt-gstreamer/$BUILD_MARKER" ]; then
#    echo "qt-gstreamer già compilato in precedenza, skip build."
#    cd "$script_path"
#  else
#    echo -e Gstreamer cloned/updated OK
#
#    #change into newly cloned directory
#    cd "$THIRD_PARTY_DIR/qt-gstreamer"
#
#    if [ $BULLSEYE = true ] || [ $JAMMY = true ]; then
#      #apply 1.18 patch
#      echo Applying qt-gstreamer 1.18 patch
#      git apply $script_path/patches/qt-gstreamer-1.18.patch
#    fi
#
#    #apply greenline patch
#    echo Apply greenline patch
#    git apply $script_path/patches/greenline_fix.patch
#
#    #apply atomic patch
#    echo Apply atomic patch
#    git apply $script_path/patches/qt-gstreamer_atomic-load.patch
#
#    #create build directory
#    echo Creating Gstreamer build directory
#    mkdir build
#
#    if [[ $? -eq 0 ]]; then
#      echo -e Gstreamer build directory made
#    else
#      echo Unable to create Gstreamer build directory assuming it exists...
#    fi
#
#    cd build
#
#    #run cmake
#    echo Beginning cmake
#    cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib/$(dpkg-architecture -qDEB_HOST_MULTIARCH) -DCMAKE_INSTALL_INCLUDEDIR=include -DQT_VERSION=5 -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS=-std=c++11
#
#    if [[ $? -eq 0 ]]; then
#      echo -e Make ok'\n'
#    else
#      echo Gstreamer CMake failed
#      exit 1
#    fi
#
#    echo Making Gstreamer
#    make
#
#    if [[ $? -eq 0 ]]; then
#      echo -e Gstreamer make ok'\n'
#    else
#      echo Make failed with error code $?
#      exit 1
#    fi
#
#    #run make install
#    echo Beginning make install
#    sudo make install
#
#    if [[ $? -eq 0 ]]; then
#      echo -e Gstreamer installed ok'\n'
#    else
#      echo Gstreamer make install failed with error code $?
#      exit 1
#    fi
#
#    sudo ldconfig
#    touch "$THIRD_PARTY_DIR/qt-gstreamer/$BUILD_MARKER"
#    cd "$script_path"
#  fi
#
#else
#	echo -e Skipping Gstreamer'\n'
#fi
#
#
#
###############################  openauto  #########################
if [ $openauto = false ]; then
  echo -e skipping openauto'\n'
else
  echo Installing openauto

  cd "$THIRD_PARTY_DIR"

  #clone/update openauto
  echo -e cloning openauto'\n'
  ensure_repo "$openautoRepo" "$THIRD_PARTY_DIR/openauto"
  if [[ $? -ne 0 ]]; then
    echo Openauto clone/pull error
    exit 1
  fi

  if [ -f "$THIRD_PARTY_DIR/openauto/$BUILD_MARKER" ]; then
    echo "OpenAuto già compilato in precedenza, skip build."
    cd "$script_path"
  else
    cd "$THIRD_PARTY_DIR/openauto"

#    #create build directory
#    echo Creating openauto build directory
#    mkdir build
#
#    if [[ $? -eq 0 ]]; then
#      echo -e openauto build directory made
#    else
#      echo Unable to create openauto build directory assuming it exists...
#    fi
#
#    
#    cd build
#
#    echo Beginning openauto cmake
#    cmake ${installArgs} -DGST_BUILD=true ../
#    if [[ $? -eq 0 ]]; then
#      echo -e Openauto CMake OK'\n'
#    else
#      echo Openauto CMake failed with error code $?
#      exit 1
#    fi
#
#    echo Beginning openauto make
#    make
    ./build.sh

    if [[ $? -eq 0 ]]; then
      echo -e Openauto make OK'\n'
    else
      echo Openauto make failed with error code $?
      exit 1
    fi

#    #run make install
#    echo Beginning make install
#    sudo make install
#    if [[ $? -eq 0 ]]; then
#      echo -e Openauto installed ok'\n'
#    else
#      echo Openauto make install failed with error code $?
#      exit 1
#    fi
    
    touch "$THIRD_PARTY_DIR/openauto/$BUILD_MARKER"
    cd "$script_path"
  fi
fi


###############################  dash  #########################
if [ $dash = false ]; then
	echo -e Skipping dash'\n'
else

  #change to project root
  cd $script_path

  #create build directory
  echo Creating dash build directory
  mkdir build

  if [[ $? -eq 0 ]]; then
    echo -e dash build directory made
  else
    echo Unable to create dash build directory assuming it exists...
  fi

  cd build

	echo -e Installing dash'\n'
  echo Running CMake for dash
  cmake ${installArgs} -DGST_BUILD=TRUE ../
  if [[ $? -eq 0 ]]; then
    echo -e Dash CMake OK'\n'
  else
    echo Dash CMake failed with error code $?
    exit 1
  fi

  echo Running Dash make
  make -j$(nproc)
  
  if [[ $? -eq 0 ]]; then
      echo -e Dash make ok, executable can be found ../bin/dash
      echo

      #check and add usb rules for openauto if they dont exist
      echo Checking if permissions exist
      #udev rule to be created below, change as needed
      FILE=/etc/udev/rules.d/51-dashusb.rules
      if [[ ! -f "$FILE" ]]; then
          # OPEN USB RULE, CREATE MORE SECURE RULE IF REQUIRED
          echo "SUBSYSTEM==\"usb\", ATTR{idVendor}==\"*\", ATTR{idProduct}==\"*\", MODE=\"0660\", GROUP=\"plugdev\"" | sudo tee $FILE
        if [[ $? -eq 0 ]]; then
            echo -e Permissions created'\n'
          else
            echo -e Unable to create permissions'\n'
        fi
        else
          echo -e Rules exists'\n'
      fi
    else
      echo Dash make failed with error code $?
      exit 1
  fi
  cd $script_path

  #Raspberry Pi addons 
  if $isRpi; then
    read -p "View select Raspberry Pi enhancements? (y/N) " choice
    if [[ $choice == "y" || $choice == "Y" ]]; then
      ./rpi.sh
    else
      echo "Continuing"
    fi
  fi

  #Autostart options
  read -p "View autostart options? (y/N) " choice
  if [[ $choice == "y" || $choice == "Y" ]]; then
    ./autostart.sh
  else
    echo "Continuing"
  fi

  read -p "Build complete! Run application? (y/N) " choice
  if [[ $choice == "y" || $choice == "Y" ]]; then
    ./bin/dash
    if [[ $? -eq 1 ]]; then
      echo "Something went wrong! You may need to set up Xorg/X11"
      exit 1
    else
      exit 0
    fi
  else
     echo "Exiting. Check autostart.sh and rpi.sh for more options"
     exit 0
  fi
fi
