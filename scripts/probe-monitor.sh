#!/bin/bash

cd /root/ && sh connect-as-beacon.sh
sleep 20

#launch probe sniffer                                               
until [$(sh probe.sh)]; do                                          
    echo "Probe Script crashed with exit code $?.  Respawning.." >&2
    sleep 1                                                         
done 
