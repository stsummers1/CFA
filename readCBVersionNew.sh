#!/bin/sh

cd "/Library/Application Support/Carbon/"
File=sensorsettings.ini
version = grep -q 'SensorVersion' "$File";
echo "<result>version</result>"
#else
#echo "<result>Not Installed</result>"
#fi
