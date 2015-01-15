#!/bin/bash

# Import vars
. ./config.sh

# copy log files to server
ssh -i /root/id_rsa ${serverUser}@${serverUrl} "mkdir /home/router/router_logs/${router_ID}"

# Copy and delete old files to server
for f in /mnt/share/old/*.log ; do
    echo "Moving $f to server..."
    scp -i /root/id_rsa "$f" ${serverUser}@${serverUrl}:/home/router/router_logs/${router_ID}/ && rm "$f"
done

