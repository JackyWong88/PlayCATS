#!/bin/bash

WatchAds(){
i=0
while [ $i -lt $1 ]
do
sleep 2
adb shell input tap 1400 970 # start watching ad
sleep 42
adb shell input tap 1840 75 # landscape X place
sleep 1
adb shell input tap 1025 49 # portrait X place
sleep 1
adb shell input tap 940 905 # OK box after watching ad
i=$(( $i + 1))
done
}

OpenBox(){
i=0
while [ $i -lt 20 ]
do
sleep 1
adb shell input tap 1500 400 # some random spot to continue go through items in box
i=$(( $i + 1))
done
adb shell input tap 950 810 # Collect Prizes
}

Open(){
sleep 1
adb shell input tap 995 982 # bottom center - begin opneing a box
WatchAds $1
sleep 1
adb shell input tap 1292 274 # close out box at the X or begin opening box
OpenBox $1
}

if [ $1 -gt 0 ]
then
adb shell input tap 322 386 # 1st box
Open $1
sleep 1
fi
if [ $2 -gt 0 ]
then
adb shell input tap 604 383 # 2nd box
Open $2
sleep 1
fi
if [ $3 -gt 0 ]
then
adb shell input tap 348 741 # 3rd box
Open $3
sleep 1
fi
if [ $4 -gt 0 ]
then
adb shell input tap 612 722 # 4th box
Open $4
fi
