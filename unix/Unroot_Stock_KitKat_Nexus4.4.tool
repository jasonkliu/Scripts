#!/bin/sh
# This script will: Relock the Bootloader and Unroot your Nexus 4!
# Adapted from a script from AndroidRootz.com

cd "$(dirname "$0")"

clear
chmod +x adb
chmod +x fastboot-mac

echo "This script will: Unroot your Nexus 4 to Stock 4.4 & Lock your Bootloader	 "
echo "*************************************************************************  "
echo " "
echo "Warning! This will delete everything on your phone! BACKUP your phone!"
echo " "
echo "First make sure you're in _fastboot_ mode."
echo "Turn your phone off then hold volume down and power at the same time."
echo "It should look like this: http://goo.gl/IU7bQV"
echo " "
read -p "Press enter to lock your bootloader and unroot your Nexus 4"

./fastboot-mac flash bootloader bootloader-mako-makoz20i.img
./fastboot-mac reboot-bootloader
sleep 7
./fastboot-mac flash radio radio-mako-m9615a-cefwmazm-2.0.1700.84.img
./fastboot-mac reboot-bootloader
sleep 7
./fastboot-mac -w update image-occam-krt16s.zip
sleep 7

echo " "
echo "Your device is now stock and unrooted."
echo "However, the bootloader is still unlocked."
echo "Let your device boot up, set up your phone or skip the set-up."
echo " "
echo "Enter back into _fastboot_ mode."
echo "Connect USB cable if you're disconnected."
echo " "
read -p "Press enter to relock the bootloader."

clear
./fastboot-mac oem lock
sleep 7

echo " "
echo "Now press the power button on the green start screen and your device will 
echo "boot up normally"

echo "All done!!"
sleep 5
exit
