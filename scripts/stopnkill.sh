#!/bin/bash
kill -9 `ps | grep probe | awk '{print $1}'`
rm /mnt/share/old/probe*
rm /mnt/share/now/probe*
rm /mnt/share/logs/*
echo "0" > sequence

