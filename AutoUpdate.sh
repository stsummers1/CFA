#!/bin/sh

defaults="/usr/bin/defaults"
variable=`$defaults read /Library/Preferences/com.apple.SoftwareUpdate AutomaticCheckEnabled`
echo $variable
sleep 5
if [[$variable != 1]]; then
	echo "Auto Update is not set"
	sleep 5
else
	echo "Auto Update is set correctly"
fi