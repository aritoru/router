#!/bin/bash

# get global vars
. ./config.sh

ping -q -w 1 -c 1 www.google.com > /dev/null && sh set-conectivity.sh true || sh set-conectivity.sh true


