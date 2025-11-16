lsusb
cat /dev/serial/by-
cat /dev/serial/by-id/
ls /dev/serial/by-id/
lsusb
sudo apt-get update && sudo apt-get install git -y
cd ~ && git clone https://github.com/dw-0/kiauh.git
./kiauh/kiauh.sh
cd ~/kiauh
cp default.kiauh.cfg kiauh.cfg
vim kiauh
vim kiauh.
vim kiauh.cfg 
./kiauh.sh 
ls /dev/serial/by-id/
lsblk
cd ~/katapult
make menuconfig
ls
cd out/
ls
ls -lat
date
sudo mkdir -p /mnt/pico
sudo mount /dev/sda1 /mnt/pico
sudo cp ~/katapult/out/katapult.uf2 /mnt/pico
sudo sync
sudo umount /mnt/pico
ls /dev/serial/by-id/
~/katapult-env/bin/python3 ~/katapult/scripts/flashtool.py -d /dev/serial/by-id/usb-katapult_rp2040_3033393834069F92-if00
s /dev/serial/by-id/
ls /dev/serial/by-id/
vim ~/printer_data/config/
cd ~/printer_data/config/
vim printer.cfg 
reboot
lsusb
ls /dev/serial/by-id/
ag -i safe_z
cd ~/printer_data/config/
ag -i safe_z
vim printer.cfg 
ag -i probe
reboot
cd ~/printer_data/config/
vim printer.cfg 
cd ~/printer_data/config/
vim printer.cfg 
reboot
cd ~/printer_data/config/
ls
vim options/fans/fans.cfg 
vim printer.cfg 
cd ~/printer_data/config/
vim printer.cfg 
ag -i pt100
vim printer.cfg 
cat printer.cfg 
vim printer.cfg 
vim options/options_cfg_files.cfg 
ag -i verify
vim options/options_cfg_files.cfg 
vim printer.cfg 
cd ~/
find . -iname "*log*"
cd klipper
find . -iname "*log*"
cd klippy/
ls
cd ..
cd printer_data/logs/
vim klippy.log
tail -f klippy.log
cat klippy.log
cd ~/klipper/klippy/
ls
vim serialhdl.py 
ag -i mcu
cd ~/printer_data/config/
ag -i extra_mcu
ag -i toolhead
test -e ~/katapult && (cd ~/katapult && git pull) || (cd ~ && git clone https://github.com/Arksine/katapult) ; cd ~
virtualenv -p python3 ~/katapult-env
~/katapult-env/bin/pip3 install pyserial
lsusb
cat /dev/serial/by-id/
ls /dev/serial/by-id/
~/katapult-env/bin/python3 ~/katapult/scripts/flashtool.py -d /dev/serial/by-id/usb-Klipper_rp2040_3033393834069F92-if00
cd ~/klipper
sudo service klipper stop
make flash FLASH_DEVICE=/dev/serial/by-id/usb-Klipper_rp2040_3033393834069F92-if00
sudo service klipper start
cd ~/klipper
make menuconfig
make clean
make
cd ~/klipper
sudo service klipper stop
make flash FLASH_DEVICE=/dev/serial/usb-Klipper_rp2040_3033393834069F92-if00
sudo service klipper start
virtualenv -p python3 ~/katapult-env
~/katapult-env/bin/pip3 install pyserial
~/katapult-env/bin/python3 ~/katapult/scripts/flashtool.py -d /dev/serial/by-id/usb-Klipper_rp2040_3033393834069F92-if00
reboot
cd ~/katapult && make menuconfig
cd ~/kiauh
./kiauh.sh 
cd ~/katapult && make menuconfig
cd ~/git/
ls
cd Sovol-SV08-Mainline/
ls
wget https://github.com/Rappetor/Sovol-SV08-Mainline/blob/main/Automatic%20MCU%20script%20update
ls
cd Automatic\ MCU\ script\ update/
ls
./u
chmod +x update_klipper_mcus_sv08.sh 
./update_klipper_mcus_sv08.sh 
ls /dev/serial/by-id/
~/katapult-env/bin/python3 ~/katapult/scripts/flashtool.py -d /dev/serial/by-id/usb-Klipper_rp2040_3033393834069F92-if00
systemctl stop klipper
~/katapult-env/bin/python3 ~/katapult/scripts/flashtool.py -d /dev/serial/by-id/usb-Klipper_rp2040_3033393834069F92-if00
lsusb
cat /dev/serial/
cat /dev/serial/by-path/
ls /dev/serial/by-path/
ls /dev/serial/by-id/
nitehawk=$(usb-Klipper_rp2040_3033393834069F92-if00)
nitehawk='usb-Klipper_rp2040_3033393834069F92-if00'
$nitehawk
echo $nitehawk 
beacon='usb-Beacon_Beacon_RevH_7B0267E95157383837202020FF021B1B-if00'
nitehawk='usb-Klipper_rp2040_3033393834069F92-if00'
mcu='usb-Klipper_stm32f103xe_32FFD8054747393916862257-if00'
reboot
cd ~/printer_data/config/
ls
cd ..
ls
cd logs/
ls
ls -lat
tail -f klippy.log
ag -i toolhead
ccd ..
cd ..
cd config/
ag -i toolhead
vim 
vim options/lcd/sovol-menu.cfg
sed -i 's/toolhead/mcu_extra/g' printer.cfg 
ag -i toolhead
sed -i 's/toolhead/mcu_extra/g' options/fans/fans.cfg 
ag -i toolhead
vim printer.cfg 
sed -i 's/mcu_extra/extra_mcu/g' options/fans/fans.cfg 
sed -i 's/mcu_extra/extra_mcu/g' printer.cfg 
vim printer.cfg 
reboot
cd ~/
ag -i secondary_pid
eboot
reboot
cd ~/klipper
ag -i secondary_pid
vim klippy/extras/pid_calibrate.py
cd klippy/extras/
mv pid_calibrate.py pid_calibrate.py.bck
vim pid_calibrate.py
vim ~/klipper/klippy/extras/pid_calibrate.py
mv ~/klipper/klippy/extras/pid_calibrate.py ~/klipper/klippy/extras/pid_calibrate.py.bck
vim ~/klipper/klippy/extras/pid_calibrate.py
reboot
cd ~/klipper/klippy/extras/
ls
vim pid_calibrate.py
exit
cd ~/printer_data/config/
vim printer.cfg 
cd ~/printer_data/config/
vim printer.cfg 
cd ~/printer_data/config/
ag -i mcu_cooling_fan_pans
vim options/fans/fans.cfg 
cd ~/printer_data/config/
ag -i max_accel_to_decel
vim printer.cfg 
reboot
cd ~/printer_data/config/
ls
vim printer.cfg 
reboot
cd ~/printer_data/config/
ls
vim printer.cfg 
mv printer.cfg printer.cfg.bck
vim printer.cfg
reboot
cd ~/printer_data/config/
cp printer.cfg printer.cfg.bck
vim printer.cfg
vim options/fans/fans.cfg 
reboot
cd ~/printer_data/config/
ag -i reset_printer_status
vim macros/print_control.cfg 
ag -i status
htop
vim printer.cfg
fin options/fans/fans.cfg 
vin options/fans/fans.cfg 
vim options/fans/fans.cfg 
reboot
