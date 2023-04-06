#!/bin/bash

echo "start"
for filename in `adb shell ls /sdcard/Movies/ | awk '{print $1}' `
do
	if test ! -f $filename ; then
	adb pull /sdcard/Movies/$filename
	fi
done
for filename in `adb shell ls /sdcard/Pictures/Screenshots/ | awk '{print $1}' `
do
	if test ! -f $filename ; then
	adb pull /sdcard/Pictures/Screenshots/$filename
	fi
done

