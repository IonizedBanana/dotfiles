#/!/bash

state=$(< ~/.scripts/btstate)

if [ $state = 'on' ]
then
  bluetoothctl disconnect
  sleep 2
  bluetoothctl power off
  echo off > ~/.scripts/btstate
elif [ $state = 'off' ]
then
  bluetoothctl power on
  sleep 2
  bluetoothctl connect 80:9F:F5:18:AF:24
  echo on > ~/.scripts/btstate
fi
