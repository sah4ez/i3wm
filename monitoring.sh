#!/bin/bash

/bin/sh -c "gnome-terminal -e htop"
/bin/sh -c "gnome-terminal -e 'sudo iotop'"
/bin/sh -c "gnome-terminal -e 'sudo iftop -i wlp2s0'"
#/bin/sh -c "gnome-terminal -e 'conky'"
