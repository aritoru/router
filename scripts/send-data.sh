#!/bin/bash

# Import vars
. ./config.sh

# copy log files to server
ssh -i /root/id_rsa ${serverUser}@${serverUrl} "mkdir /home/router/router_logs/${router_ID}"
scp -i /root/id_rsa /mnt/share/*.log ${serverUser}@${serverUrl}:/home/router/router_logs/${router_ID}/


# borrar antiguos
# TODO