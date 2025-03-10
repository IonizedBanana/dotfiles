#/!/bash

sudo -S "<PASSWORD>" <<< modprobe v4l2loopback
echo on > ~/.scripts/btstate
~/.scripts/bt.sh
hyprctl setcursor size 24
