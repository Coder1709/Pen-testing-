#!/bin/bash

# ipsweep.sh
if [ "$1" == "" ]
then
echo "Syntax: ./ipsweep.sh xxx.xxx.xxx"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
