#!/bin/bash

#Init
mkdir -p /mnt/share
mv /etc/rc.local /etc/rc.local.bkp
cp rc.local /etc/

#Config Files
mv /etc/config /etc/config.bkp
mkdir -p /etc/config
cp * /etc/config
rm /etc/config/*.sh




