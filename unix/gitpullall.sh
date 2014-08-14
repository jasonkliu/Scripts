#!/bin/bash
# This script will: update all git repos in a folder

for file in *; 
do 
   cd $file
   echo $file
   if [ -d $file ]; then
     git pull
   fi
   cd ~/Github/
done
