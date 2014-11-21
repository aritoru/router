#!/bin/bash

cd scapy
python setup.py install
cd ..; rm -rf scapy*
