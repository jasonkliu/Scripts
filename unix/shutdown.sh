#!/bin/bash
# Shutdown Crunchbang Linux

echo "Shutdown Crunchbang Linux? Press 1 for yes"
read a

if [ $a -eq 1 ]; then
   echo "gdm-control --shutdown && openbox --exit"
fi
