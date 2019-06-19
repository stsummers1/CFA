#!/bin/sh
currentUser=`who | grep console | awk '{print $1}' | grep -v -i '_mbsetupuser' `
result=`sudo du -shc /Users/$currentUser/Library/Group\ Containers/UBF8T346G9.Office/Outlook/Outlook\ 15\ Profiles/`
echo "<result>$result</result>"