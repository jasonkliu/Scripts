#!/bin/bash
# This script will: List Github remotes in a folder
#                   for later backup to another computer

for file in *; 
do 
   cd $file
   echo $file
   git remote -v
   cd ~/Github/
   echo 
done
