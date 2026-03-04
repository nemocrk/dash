#!/bin/bash

# Deployment Script for Dash
# Installs generated .deb packages and configures the system

set -e

SCRIPT_PATH=$(dirname "$(realpath -s "$0")")
OUT_DIR="$SCRIPT_PATH/out"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

if [ ! -d "$OUT_DIR" ]; then
    echo "Error: Directory $OUT_DIR not found. Run build_packages.sh first."
    exit 1
fi

echo -e "${GREEN}=== Starting Dash Installation ===${NC}"

# 1. Install Runtime Dependencies
echo -e "${YELLOW}Installing System Runtime Dependencies...${NC}"
sudo apt-get update
sudo apt-get install -y \
    libusb-1.0-0 \
    libqt5multimedia5 libqt5multimedia5-plugins libqt5bluetooth5 libqt5serialbus5 \
    libqt5websockets5 libqt5svg5 qml-module-qtquick2 qml-module-qtquick-controls2 \
    gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad \
    gstreamer1.0-libav gstreamer1.0-alsa pulseaudio-module-bluetooth \
    librtaudio6 libtag1v5 libprotobuf23

# 2. Install Custom Packages
echo -e "${YELLOW}Installing Dash Packages from $OUT_DIR...${NC}"
# Force install to overwrite system packages if necessary (for bluez/pulse)
sudo dpkg -i --force-overwrite "$OUT_DIR"/*.deb || true

# Fix any missing dependencies automatically
echo -e "${YELLOW}Fixing dependencies...${NC}"
sudo apt-get install -f -y

# 3. System Configuration (Ported from install.sh / rpi.sh)

echo -e "${YELLOW}Configuring Udev Rules...${NC}"
# USB Permissions for OpenAuto
USB_RULE="/etc/udev/rules.d/51-dashusb.rules"
if [ ! -f "$USB_RULE" ]; then
    echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="*", ATTR{idProduct}=="*", MODE="0660", GROUP="plugdev"' | sudo tee "$USB_RULE"
    echo "USB rules created."
fi

# Brightness Permissions
BRIGHTNESS_RULE="/etc/udev/rules.d/52-dashbrightness.rules"
if [ ! -f "$BRIGHTNESS_RULE" ]; then
    echo 'SUBSYSTEM=="backlight", RUN+="/bin/chmod 666 /sys/class/backlight/%k/brightness"' | sudo tee "$BRIGHTNESS_RULE"
    echo "Brightness rules created."
fi

sudo udevadm control --reload-rules && sudo udevadm trigger

echo -e "${YELLOW}Configuring PulseAudio...${NC}"
# Copy profile sets
if [ -d "/usr/share/pulseaudio/alsa-mixer/profile-sets" ]; then
    sudo mkdir -p /usr/local/share/pulseaudio/alsa-mixer/profile-sets/
    sudo cp -n /usr/share/pulseaudio/alsa-mixer/profile-sets/* /usr/local/share/pulseaudio/alsa-mixer/profile-sets/ || true
fi

# PulseAudio Config Tweaks
PULSE_CONFIG="/etc/pulse/default.pa"
if grep -q "load-module module-bluetooth-discover" "$PULSE_CONFIG"; then
    # Ensure ofono is NOT forced unless specifically needed (install.sh logic was mixed, defaulting to standard)
    # But if we want echo cancellation:
    if ! grep -q "module-echo-cancel" "$PULSE_CONFIG"; then
        echo "Adding Echo Cancellation to PulseAudio config..."
        sudo tee -a "$PULSE_CONFIG" <<'EOT'

### Echo cancel and noise reduction
.ifexists module-echo-cancel.so
load-module module-echo-cancel aec_method=webrtc source_name=ec_out sink_name=ec_ref
set-default-source ec_out
set-default-sink ec_ref
.endif
EOT
    fi
fi

echo -e "${YELLOW}Configuring Boot Options (RPi)...${NC}"
# KRNBT for better bluetooth stability
CONFIG_TXT="/boot/config.txt"
if [ -f "$CONFIG_TXT" ]; then
    if ! grep -q "dtparam=krnbt" "$CONFIG_TXT"; then
        echo "dtparam=krnbt" | sudo tee -a "$CONFIG_TXT"
        echo "Enabled krnbt in config.txt"
    fi
fi

# 4. Finalize
sudo ldconfig

echo -e "${GREEN}=== Installation Complete ===${NC}"
echo "You may need to reboot for udev rules and boot config to take effect."
echo "Run 'dash' to start the application."

# Optional: Ask to run autostart helper
read -p "Do you want to configure Autostart (Systemd/Xinit)? (y/N) " choice
if [[ $choice == "y" || $choice == "Y" ]]; then
    ./autostart.sh -asd
fi