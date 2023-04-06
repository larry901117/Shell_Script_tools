#!/bin/bash
echo "start"
now=$(date +"%m-%d_%k:%M:%S")
adb shell screencap -p /sdcard/screencap_$now.png
adb pull  /sdcard/screencap_$now.png

echo "done"
