#!/bin/sh

nmcli connection show | grep vpn | awk '{print $4}' | sed -r 's/--/off/g' | sed -r 's/enp4s0/on/g'
