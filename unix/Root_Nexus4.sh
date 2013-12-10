#!/bin/bash
# This script will: Unlock the Bootloader and Root your Nexus 4!
# Adapted from a script from AndroidRootz.com

cd "$(dirname "$0")"

clear
chmod +x adb
chmod +x fastboot

echo "  This script will: Unlock the Bootloader and Root your Nexus 4!  "
echo "****************************************************************  "
echo " "
echo "  Required files: recover-clockwork-6.0.1.9-mako.img && "
echo "                  UPDATE-SuperSU-v1.80.zip "
echo " "
echo "Warning! This WILL do a factory reset! BACKUP your phone!"
echo " "
echo "First make sure you're in _fastboot_ mode."
echo "Turn your phone off then hold volume down and power at the same time."
echo "It should look like this: http://goo.gl/IU7bQV"
echo " "
read -p "Press enter to unlock your bootloader and root your Nexus 4"
   ./fastboot oem unlock

clear
echo "You now have an unlocked bootloader!"
echo " "
echo "Press the power button to start the device."
echo "Let your device boot up and complete the setup."
echo "Turn USB debugging on. "
echo "Settings > Developer Options > USB Debugging"
echo "Activate Developer options guide: http://goo.gl/wu0cN"
echo " "
echo "Connect the USB cable."
echo "IMPORTANT: After turning on USB debugging,"
echo "           allow access to USB debugging requests!"
echo " "
read -p "Press enter to root"

clear
echo "Pushing UPDATE-SuperSU-v1.80.zip..."
echo "Note: SuperSU v1.45 will not work"
   ./adb push UPDATE-SuperSU-v1.80.zip /sdcard/
   ./adb reboot bootloader
   sleep 7

clear
echo "Ready to install ClockworkMod"
echo "1. ClockworkMod Recovery (Version 6.0.1.9)"
echo "Enter 1 then press enter"
read cw

if [ $cw = 1 ] ; then
   ./fastboot flash recovery recovery-clockwork-6.0.1.9-mako.img
fi

echo "Use the volume keys to highlight 'Recovery Mode'."
echo "Use the power button to select it."
echo " "
echo "Once in recovery, select 'Install zip from SD Card'"
echo "Select 'Choose zip' and go into 0/"
echo "Choose 'UPDATE-SuperSU-v1.80.zip', then select 'yes' to install"
echo "Once it finishes, select 'Go Back'"
echo "Select 'Reboot system now'"
echo "It will ask you to 'Disable Recovery'; select 'No'"
echo " "
read -p "Press enter to continue"
clear
echo "You're done!"
sleep 5
exit
