#!/bin/bash

connected=`cat /root/connected`

a="TCPDUMP Restart: "
b=`date +"%Y-%m-%d;%H:%M:%S.%s"`
c=" --- Date reliable: "
echo $a$b$c$connected >> /mnt/share/logs/tcpdump.log


