#!/bin/bash
LANG=en_EN.UTF-8
level=$(~/.i3/check_wifi.sh)
case $level in 
    "****")
        echo "#00ff00"
        ;;
    "***")
        echo "#007d00"
        ;;
    "**")
        echo "#e06a00"
        ;;
    "*")
        echo "#902200"
        ;;
    "NO")
        echo "#ff0000"
        ;;
    *)
        echo "#321321"
        ;;
esac

