#!/bin/bash

# get global vars
. ./config.sh

# Replace Variables
echo 'Replacing Variables...'
sed -i "s/%%WIFI_BEACON_SSID%%/${wifi_beacon_SSID}/" wireless
sed -i "s/%%WIFI_BEACON_TXPOWER%%/${wifi_beacon_TXPOWER}/" wireless

sed -i "s/%%WIFI_CLIENT_PASS%%/${wifi_client_PASS}/" wireless-client
sed -i "s/%%WIFI_CLIENT_SSID%%/${wifi_client_SSID}/" wireless-client

# Init
echo 'Creating mount point...'
mkdir -p /mnt/share

echo 'Replacing rc.local...'
mv /etc/rc.local /etc/rc.local.bkp
cp rc.local /etc/

# Crond files
echo 'Configuring cron...'
cp root /etc/crontabs/
cp S60cron /etc/init.d/

# Config Files
echo 'Copying config files...'
mv /etc/config /etc/config.bkp
mkdir -p /etc/config
cp * /etc/config
rm /etc/config/*.sh

# Perform Initialization
echo 'Starting...'
sh /etc/rc.local &


