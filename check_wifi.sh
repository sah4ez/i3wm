#!/bin/bash

ok=$(nmcli c | grep OpenWrt | awk '{print $4}')
if [ "$ok" == "--" ]; 
then 
    echo "NO"
else
    nmcli device wifi list | grep OpenWrt | awk '{print $8}'
fi
