#!/bin/bash
# This script will: Relaunch ADT when the emulator won't repond.

PATH=~/Downloads/adt-bundle-mac-x86_64-20130522/sdk/platform-tools

echo $PATH
cd $PATH

echo "./adb kill-server"
./adb kill-server
echo "./adb start-server"
./adb start-server
echo "./adb devices"
./adb devices
