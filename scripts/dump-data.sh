#!/bin/bash

sh stop.sh
sh connect-as-client.sh
sleep 20

#check for conectivity
cd /root/ && sh check-connection.sh

sh send-data.sh

sh connect-as-beacon.sh
sleep 20

sh probe-monitor.sh
