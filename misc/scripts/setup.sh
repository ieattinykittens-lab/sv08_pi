#! /bin/bash

#### Misc ####
set -euo pipefail
cd /home/pi

#### Install base packages and updates ####
sudo apt update && sudo apt upgrade -y
sudo apt install git unzip vim -y

#### Install klipper if missing ####
echo "Checking klipper.service status..."

if systemctl list-unit-files | grep -q '^klipper.service'; then
    echo "klipper.service unit file exists."

    if systemctl is-active --quiet klipper.service; then
        echo "klipper.service is running. Moving to next step in the script..."
        # Next step in your script goes here
        # e.g.:
        # echo "Doing other stuff..."
    else
        echo "ERROR: klipper.service exists but is not running. Aborting." >&2
        exit 1
    fi

else
    echo "klipper.service does not exist. Setting up Klipper..."

    #### Install klipper dependencies ####
    sudo apt install python3-virtualenv python3-dev libffi-dev build-essential libncurses-dev avrdude gcc-avr binutils-avr avr-libc stm32flash dfu-util libnewlib-arm-none-eabi gcc-arm-none-eabi binutils-arm-none-eabi libusb-1.0-0 libusb-1.0-0-dev -y

    ./klippy-env/bin/pip install -r ./klipper/scripts/klippy-requirements.txt

    #### Create klipper file/folder structure ####
    mkdir -p ~/printer_data/
    mkdir -p ~/printer_data/config
    mkdir -p ~/printer_data/logs
    mkdir -p ~/printer_data/gcodes
    mkdir -p ~/printer_data/systemd
    mkdir -p ~/printer_data/comms
    touch ~/printer_data/config/printer.cfg

    #### Create klipper service ####
    cat << 'EOF' | sudo tee /etc/systemd/system/klipper.service > /dev/null
[Unit]
Description=Klipper 3D Printer Firmware SV1
Documentation=https://www.klipper3d.org/
After=network-online.target
Wants=udev.target

[Install]
WantedBy=multi-user.target

[Service]
Type=simple
User=pi
RemainAfterExit=yes
WorkingDirectory=/home/pi/klipper
EnvironmentFile=/home/pi/printer_data/systemd/klipper.env
ExecStart=/home/pi/klippy-env/bin/python $KLIPPER_ARGS
Restart=always
RestartSec=10
EOF

    ##### Create klipper env file ####
    cat << 'EOF' | sudo tee ~/printer_data/systemd/klipper.env > /dev/null
KLIPPER_ARGS="/home/pi/klipper/klippy/klippy.py /home/pi/printer_data/config/printer.cfg -l /home/pi/printer_data/logs/klippy.log -I /home/pi/printer_data/comms/klippy.serial -a /home/pi/printer_data/comms/klippy.sock"
EOF

    #### Enable klipper service ####
    sudo systemctl daemon-reload
    sudo systemctl enable klipper.service

    echo "Klipper service created and enabled."
fi
