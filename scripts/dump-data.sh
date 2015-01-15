#!/bin/bash

# Log reboot
sh log-filedump.sh

#Stop sniffer
sh stop.sh
sh connect-as-client.sh
sleep 20

#check for connectivity and Date Update
cd /root/ && sh check-connection.sh
ntpd -dN -p0.openwrt.pool.ntp.org

#Manage and copy files to server
sh send-data.sh

#Launch Beacon again
sh connect-as-beacon.sh
sleep 20

#Restart sniffer
sh probe-monitor.sh
