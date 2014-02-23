#!/bin/bash -x

function ExitIfNonZero {
	if [ $1 -ne 0 ]; then
		exit $1
	fi
}

xbuild /p:NoWarn=1584 /property:Configuration=Debug /property:Platform="Any CPU" SteamBot.sln 
ExitIfNonZero $?
