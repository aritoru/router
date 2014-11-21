#!/bin/bash

#Init
mkdir -p /mnt/share
mv /etc/rc.local /etc/rc.local.bkp
mv rc.local /etc/
opkg update && opkg install tcpdump

#Config Files
mv /etc/config /etc/config.bkp
mkdir -p /etc/config
cp * /etc/config




