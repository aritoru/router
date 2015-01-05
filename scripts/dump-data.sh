#!/bin/bash

sh connect-as-client.sh

sleep 20
sh send-data.sh
sh connect-as-beacon.sh

sleep 20
sh probe-monitor.sh
