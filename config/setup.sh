#!/bin/bash

# get global vars
. ./config.sh

# Replace Variables
sed -i "s/%%WIFI_BEACON_SSID%%/${wifi_beacon_SSID}/" wireless

sed -i "s/%%WIFI_CLIENT_PASS%%/${wifi_client_PASS}/" wireless
sed -i "s/%%WIFI_CLIENT_SSID%%/${wifi_client_SSID}/" wireless

# Init
mkdir -p /mnt/share
mv /etc/rc.local /etc/rc.local.bkp
cp rc.local /etc/

# Config Files
mv /etc/config /etc/config.bkp
mkdir -p /etc/config
cp * /etc/config
rm /etc/config/*.sh

# Perform Reboot
reboot


