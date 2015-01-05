#!/bin/bash

# stops mac sniffing
sh stop.sh
ifconfig fish0 down

cp wireless-client /etc/config/wireless

/etc/init.d/network restart

