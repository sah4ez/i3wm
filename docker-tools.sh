#!/bin/bash

PROCESS=$(ps aux | egrep "(htop|iftop|iotop)" | wc -l)
while [ $PROCESS -ne 6 ] 
do
  sleep 2
  PROCESS=$(ps aux | egrep "(htop|iftop|iotop)" | wc -l)
done

i3-msg workspace '10: Docker'
/bin/sh -c "gnome-terminal"
/bin/sh -c "gnome-terminal"
/bin/sh -c "gnome-terminal -e 'docker stats'" && /bin/sh -c "i3-msg 'move down'" && /bin/sh -c "i3-msg resize shrink height 5ppt" && /bin/sh -c "i3-msg resize shrink height 5ppt"
