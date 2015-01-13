#!/bin/bash

# Import vars
. ./config.sh

# Increment Sequence
sh set-sequence.sh

# Add a wifi interface with "monitor" enabled
iw dev wlan0 interface add fish0 type monitor flags none
ifconfig fish0 up
connected=`cat connected`
sequence=`cat sequence`

# TCPDUMP watching for "probe-req" packages
tcpdump -tttt -i fish0 -e -s 256 type mgt subtype probe-req | awk -v date="$(date +"%Y-%m-%d-%H")" -v con="$connected" -v router="$router_ID" -v seq="$sequence" '{ gsub(/SA:/, ""); print $10";"toupper($16)";"$1";"$2";" con >> "/mnt/share/probe-" seq "-" date "-" router ".log"}'
