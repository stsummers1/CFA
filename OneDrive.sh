#!/bin/sh

OneDrive=`cd /Applications/ && ls | grep "OneDrive.app"`
if [ OneDrive ]; then
    OneDrive=`defaults read /Applications/OneDrive.app/Contents/Info.plist CFBundleShortVersionString`
    echo "<result>$OneDrive</result>" 
else
    echo "<result>Not Installed</result>"
fi
exit 0