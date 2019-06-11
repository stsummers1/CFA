#!/bin/sh
ELCAP=11604.4.7.1.6
SIERRA=12604.4.7.1.6

RESULT=$( defaults read /Applications/Safari.app/Contents/Info.plist CFBundleVersion )

if [ "$RESULT" = $ELCAP ] ; then
echo "<result>El Cap Patched</result>"
fi
if [ "$RESULT" = $SIERRA ] ; then
echo "<result>Sierra Patched</result>"
else
echo "<result>Not Patched</result>"
fi