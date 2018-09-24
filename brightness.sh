#!/bin/bash

if [ -f ${HOME}/.i3/brightness ] ;
then
	echo "Set default valeus for brightness"
	echo '.5' > ${HOME}/.i3/brightness
fi

if [ -f /tmp/brightness.lock ] ;
then
	echo "/tmp/brightness.lock exist. remove please it"
	exit 2
fi

touch /tmp/brightness.lock

value=$(cat ${HOME}/.i3/brightness)

inc=$1

value=$(echo "${value}+${inc}" | bc)

xrandr --output eDP-1 --brightness ${value}

echo ${value} > ${HOME}/.i3/brightness

rm /tmp/brightness.lock
