#!/bin/bash

ssh-keygen -f "/home/aritoru/.ssh/known_hosts" -R 192.168.1.1
scp ../config/* root@192.168.1.1:/root/
scp ../scripts/* root@192.168.1.1:/root/

