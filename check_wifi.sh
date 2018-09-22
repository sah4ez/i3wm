#!/bin/bash

ok=$(nmcli c | grep wlp2s0 | awk '{print $4}')
if [ "$ok" == "--" ]; 
then 
    echo "NO"
else
    nmcli device wifi list | egrep "\*" | awk '{print $8}'
fi
