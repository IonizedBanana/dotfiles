#/!/bash

state=$(< ./dockstate)

if [ $state = 'on' ]
then
   niri msg output eDP-1 off
  echo off > ./dockstate
elif [ $state = 'off' ]
then
   niri msg output eDP-1 on
  echo on > ./dockstate
fi
