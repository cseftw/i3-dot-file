#!/bin/bash

# Get the OpenVPN IP address
IP=$(ifconfig tun0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1 }')

# Print the IP address to the i3 block bar
echo "$IP"
