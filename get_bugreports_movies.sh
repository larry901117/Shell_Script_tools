#!/bin/bash
echo "start"
for DEVICE in `adb devices | awk '{print $1}' | sed '1d'`
do
	echo "$DEVICE "
	adb -s $DEVICE bugreport
	for filename in `adb -s $DEVICE shell ls /sdcard/Movies/ | awk '{print $1}' `
	do
		adb -s $DEVICE pull /sdcard/Movies/$filename
	done
done

