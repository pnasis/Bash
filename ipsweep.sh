#!/bin/bash
if [ "$1" == "" ]
then
echo "It seems you forgot to set a prefix.."
echo "Here's an example: ./ipsweep 192.168.1"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & #&=allows as to use threadin
done
fi
