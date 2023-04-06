#!/bin/bash
echo "start"
for DEVICE in `adb devices | awk '{print $1}' | sed '1d'`
do
	echo -n "$DEVICE "
	adb -s $DEVICE shell getprop ro.boot.hardware.ufs
	adb -s $DEVICE shell getprop ro.boot.hardware.revision
	adb -s $DEVICE shell settings get secure bluetooth_address | tr '[:upper:]' '[:lower:]' | sed s/':'/''/g

done

