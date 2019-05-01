#!/bin/bash

level=$(/sbin/iwconfig wlp2s0 | egrep -i --color '(quality|Signal)' | awk -F '=' '{print $2}' | awk -F '/' '{print $1}')
level_str="▁___"
if [ $level -gt 75 ]
then
    level_str="▁▃▅▇"
elif [ $level -gt 50 ]
then
    level_str="▁▃▅_"
elif [ $level -gt 25 ]
then
    level_str="▁▃__"
fi

echo "$level_str"
