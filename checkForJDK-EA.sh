#!/bin/bash

# Return if a user has OpenJDK or OracleJDK (otherwise known as ClosedJDK)

# Check /Library/Java for versions of Java
javaJDKs=$(find /Library/Java -path "*Home/bin/java" 2>/dev/null)

for java in $javaJDKs; do
	javaVers=$($java -version 2>&1 | grep version | awk '{print $1}')
	if [[ $javaVers == "java" ]]; then
		oracleJDKExists="true"
	elif [[ $javaVers != "java" || ! $oracleJavaExists ]]; then
		openJDKExists="true"
	fi
done

if [[ $oracleJDKExists && $openJDKExists ]]; then
	echo "<result>Both</result>"
elif [[ $oracleJDKExists && ! $openJDKExists ]]; then
	echo "<result>OracleJDK</result>"
elif [[ ! $oracleJDKExists && $openJDKExists ]]; then
	echo "<result>OpenJDK</result>"
elif [[ ! $oracleJDKExists && ! $openJDKExists ]]; then
	echo "<result>None</result>"
fi
