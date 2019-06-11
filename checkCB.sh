#!/bin/sh

cd "/Library/Application Support/Carbon/"
File=sensorsettings.ini
if grep -q SensorVersion=006.001.003.71222 "$File";
then
  echo "Installed"
else
  echo "Not Installed"
fi
