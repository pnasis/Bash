#!/bin/bash

showuptime(){
	local up=$(uptime -p | cut -c4-)
	local since=$(uptime -s)
	local user=$(whoami)
	local whereami=$(pwd)
	local date=$(date)
	cat << EOF
-----
You are currently logged in as ${user} and you are currently in the directory ${whereami}
This machine has been up for ${up}
It has been running since ${since}
Today is ${date}
-----
EOF
}
showuptime

