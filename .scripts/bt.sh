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
  bluetoothctl connect CC:F8:26:17:85:AD
  echo on > ~/.scripts/btstate
fi
