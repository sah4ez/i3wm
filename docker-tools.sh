#!/bin/bash

/bin/sh -c "gnome-terminal"
/bin/sh -c "gnome-terminal"
/bin/sh -c "gnome-terminal -e 'docker stats'" && /bin/sh -c "i3-msg 'move down'" && /bin/sh -c "i3-msg resize shrink height 5ppt" && /bin/sh -c "i3-msg resize shrink height 5ppt"
