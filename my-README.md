# 0) Variabili
TARGET_USER=nemo
TARGET_HOST=192.168.1.43
TARGET="$TARGET_USER@$TARGET_HOST"
OUT_DIR=/home/nemo/dash/out

# 1) Copia i .deb sulla macchina di test
ssh "$TARGET" "(rm -rf dash-deploy/ || true) && mkdir -p ~/dash-deploy"
scp "$OUT_DIR"/lib*.deb "$OUT_DIR"/dash-*.deb "$TARGET:~/dash-deploy/"

# 2) Installa i pacchetti (senza openauto app, ma con libopenauto)
ssh "$TARGET" '
set -e
cd ~/dash-deploy
#sudo dpkg -i protobuf-aasdk-dev_*.deb || true
sudo dpkg -i libaasdk_*.deb libaasdk-dev_*.deb || true
sudo dpkg -i libopenauto_*.deb libopenauto-dev_*.deb || true
sudo dpkg -i dash-headunit-*.deb || true
sudo apt-get -f install -y
dpkg -l | egrep "protobuf-aasdk-dev|libaasdk|libopenauto|dash-headunit|openauto" || true
'
ssh "$TARGET" '
pkill openDash
rm -f /tmp/opendash-live.log
DISPLAY=:0 nohup /usr/bin/openDash >/tmp/opendash-live.log 2>&1 &
sleep 2
pgrep -a openDash
tail -n 120 -f /tmp/opendash-live.log
'
# USB AOAP
ssh "$TARGET" "lsusb | grep -Ei 'google|android|18d1'"

# Socket wireless AA
ssh "$TARGET" "ss -ntp | grep ':5000' || true"

# Stato bluetooth adapter
ssh "$TARGET" "bluetoothctl show"
