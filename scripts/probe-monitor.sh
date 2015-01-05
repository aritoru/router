#!/bin/bash

#set correct time                
ntpd -dN -p0.openwrt.pool.ntp.org   
                                    
#launch probe sniffer                                               
until [$(sh probe.sh)]; do                                          
    echo "Probe Script crashed with exit code $?.  Respawning.." >&2
    sleep 1                                                         
done 
