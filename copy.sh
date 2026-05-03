#!/bin/bash
here=$(pwd)
paths=(
   "$HOME/.scripts"
   "$HOME/.wallpapers"
)
for i in "${paths[@]}"; do
   echo "installing ${i#$HOME/}"
   if [ -e "$i" ]; then
      echo "$i exists, removing..."
      rm -rf $i
   fi
   ln -s "$here/${i#$HOME}" $i
done
pathsconfig=(
   "$HOME/.config/btop"
   "$HOME/.config/ghostty"
   "$HOME/.config/kickoff"
   "$HOME/.config/neofetch"
   "$HOME/.config/niri"
   "$HOME/.config/nvim"
   "$HOME/.config/swaync"
   "$HOME/.config/waybar"
)
for i in "${pathsconfig[@]}"; do
   echo "installing ${i#$HOME/.config/}"
   if [ -e "$i" ]; then
      echo "$i exists, removing..."
      rm -rf $i
   fi
   ln -s "$here/${i#$HOME/.config}" $i
done
