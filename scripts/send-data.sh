#!/bin/bash

# Import vars
. ./config.sh

# copy log files to server
ssh -i /root/id_rsa router@nutshell.gennion.com "mkdir /home/router/router_logs/${router_ID}"
scp -i /root/id_rsa /mnt/share/*.log router@nutshell.gennion.com:/home/router/router_logs/${router_ID}/

# execute received trigger
#ssh -i /root/id_rsa router@nutshell.gennion.com "cd /home/router/router_logs/ && php receive-data.php ${router_ID}"

# borrar antiguos
# TODO