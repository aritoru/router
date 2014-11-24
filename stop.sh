#!/bin/bash
kill -9 `ps | grep probe | awk '{print $1}'`
rm /mnt/share/probe*


