#!/bin/bash

connected=`cat /root/connected`

a="PowerON: "
b=`date +"%Y-%m-%d;%H:%M:%S.%s"`
c=" --- Date reliable: "
echo $a$b$c$connected >> /mnt/share/logs/power.log


