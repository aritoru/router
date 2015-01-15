#!/bin/bash

connected=`cat /root/connected`
sequence=`cat /root/sequence`

a="TCPDUMP Restart: "
b=`date +"%Y-%m-%d;%H:%M:%S.%s"`
c=" --- Date reliable: "
d=" --- Sequence: "
echo $a$b$c$connected$d$sequence >> /mnt/share/logs/tcpdump.log


