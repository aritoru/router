#!/bin/bash

ssh-keygen -f "/home/aritoru/.ssh/known_hosts" -R 192.168.1.1
scp * root@192.168.1.1:/root/
