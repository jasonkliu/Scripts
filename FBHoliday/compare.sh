#!/bin/bash
# This script will: compare the current date to that of current holidays.

DATE=$(date "+%Y%m%d")
# echo $DATE

declare -a holidayArray
holidayArray=(  Spring\ Break 
				Summer\ Break 
				Thanksgiving\ Break
				Winter\ Break  )

if (( $DATE < 20140324 ))
then
   MESSAGE=$"looking forward to ${holidayArray[0]}"
   echo $MESSAGE | pbcopy
elif (( $DATE < 20140425 ))
then
   MESSAGE=$"looking forward to ${holidayArray[1]}"
   echo $MESSAGE | pbcopy
elif (( $DATE < 20140827 ))
then
   MESSAGE=$"looking forward to ${holidayArray[2]}"
   echo $MESSAGE | pbcopy
elif (( $DATE < 20141231 ))
then
   MESSAGE=$"looking forward to ${holidayArray[3]}"
   echo $MESSAGE | pbcopy
else
   MESSAGE=$"looking forward to school"
   echo $MESSAGE | pbcopy
   exit
fi
