#/!/bash

state=$HOME/.scripts/dockstate

if [ $state = 'on' ]
then
   niri msg output eDP-1 off
  echo off > $state
elif [ $state = 'off' ]
then
   niri msg output eDP-1 on
  echo on > $state
fi
