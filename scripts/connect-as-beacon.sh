#!/bin/bash

# stops mac sniffing
cp wireless /etc/config/wireless

/etc/init.d/network restart

