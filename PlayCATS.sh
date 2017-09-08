#!/bin/bash
while :
do
	adb shell input tap 1250 930 # start quick fight
	sleep 2
	adb shell input tap 990 890 # start fight
	sleep 20
	adb shell input tap 990 980 # confirm fight
	sleep 2
	adb shell input tap 990 980 # confirm any pop-up message
	sleep 2
done
