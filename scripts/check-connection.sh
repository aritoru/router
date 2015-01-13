#!/bin/bash

# get global vars
. ./config.sh

ping -q -w 1 -c 1 www.google.com > /dev/null && echo 1 > connected || echo 0 > connected


