#!/bin/bash

# Add a wifi interface with "monitor" enabled
iw dev wlan0 interface add fish0 type monitor flags none
ifconfig fish0 up
connected=`cat connected`


# TCPDUMP watching for "probe-req" packages
tcpdump -tttt -i fish0 -e -s 256 type mgt subtype probe-req | awk -v date="$(date +"%Y-%m-%d-%H")" -v con="$connected" '{ gsub(/SA:/, ""); print $10";"toupper($16)";"$1";"$2";" con >> "/mnt/share/probe" date ".log"}'
