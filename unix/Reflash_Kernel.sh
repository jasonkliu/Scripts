#!/bin/bash
# This script will: Restore stock Kernel and/or system!

cd "$(dirname "$0")"

clear
chmod +x adb
chmod +x fastboot

echo "  This script will: Restore stock Kernel and/or system!  "
echo "****************************************************************  "
echo " "
echo "  Required files: stock boot.img && system.img  "
echo " "

./adb devices
echo " "
read -p "Press enter if your device is shown here"

echo "Rebooting into bootloader mode "
./adb reboot bootloader

echo " "
read -p "Press enter when your device enters boot mode"

./fastboot devices 
echo " "
read -p "Press enter if your device is shown here"

clear

echo "Make sure you're in the same directory as boot.img and system.img"
echo " "
./fastboot flash boot boot.img
./fastboot flash system system.img

echo "Erase userdata/cache (BE CAREFUL)"
echo " "
echo "Enter 1 to erase cache, 2 to erase userdata, 0 otherwise"
read cw
echo " "

if [ $cw = 1 ] 
then
   ./fastboot erase cache
elif [ $cw = 2 ]
then
   ./fastboot erase userdata
fi

echo " "
echo "done!"
sleep 5

./fastboot reboot
