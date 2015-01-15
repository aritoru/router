#!/bin/bash

# Import vars
. ./config.sh

# Increment Sequence
sh set-sequence.sh


# Log TCPDUMP launch
sh log-tcpdump.sh


# Add a wifi interface with "monitor" enabled
iw dev wlan0 interface add fish0 type monitor flags none
ifconfig fish0 up
connected=`cat connected`
sequence=`cat sequence`
fileDate=`date +"%Y-%m-%d-%H"`
path="/mnt/share/now/"
extension=".log"
prepend="probe_"
separator="_"

# Prepare Folders
nowFile=$path$prepend$sequence$separator$fileDate$separator$router_ID$extension

mv /mnt/share/now/* /mnt/share/old/
mv ${nowFile} /mnt/share/now/

# TCPDUMP watching for "probe-req" packages
tcpdump -tttt -i fish0 -e -s 256 type mgt subtype probe-req | awk -v file="$nowFile" -v con="$connected" '{ gsub(/SA:/, ""); print $10";"toupper($16)";"$1";"$2";" con >> file}'
