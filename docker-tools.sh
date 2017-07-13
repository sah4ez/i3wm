#!/bin/bash

PROCESS=$(ps aux | egrep "(htop|iftop|iotop)" | wc -l)
while [ $PROCESS -ne 6 ] 
do
  sleep 2
  PROCESS=$(ps aux | egrep "(htop|iftop|iotop)" | wc -l)
done

i3-msg workspace '10: Docker'
/bin/bash -c "gnome-terminal"
/bin/bash -c "gnome-terminal"
/bin/bash -c "gnome-terminal -e 'docker stats'" && /bin/bash -c "i3-msg 'move down'" && /bin/bash -c "i3-msg resize shrink height 5ppt" && /bin/bash -c "i3-msg resize shrink height 5ppt"
/bin/bash -c "i3-msg 'split h'" && /bin/bash -c "gnome-terminal -e '$HOME/.i3/docker_ps.sh'" 
