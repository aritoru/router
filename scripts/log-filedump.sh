#!/bin/bash

connected=`cat /root/connected`

a="Server dump: "
b=`date +"%Y-%m-%d;%H:%M:%S.%s"`
c=" --- Connected: "
echo $a$b$c$connected >> /mnt/share/logs/server.log

d=`ls -la /mnt/share/old/probe*`

echo $d >> /mnt/share/logs/server.log

