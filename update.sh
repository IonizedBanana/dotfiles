#!/bin/bash

if [ -d "$HOME/.scripts/" ]; then
   echo ".scripts exists, adding..."
   rm -r ./.scripts/*
   cp -r $HOME/.scripts/* .scripts/
else 
   echo ".scripts doesnt exist, skipping..."
fi


if [ -d "$HOME/.wallpapers/" ]; then
   echo ".wallpapers exists, adding..."
   rm -r ./.wallpapers/*
   cp -r $HOME/.wallpapers/* .wallpapers/
else 
   echo ".wallpapers doesnt exist, skipping..."
fi

if [ -d "$HOME/.config/btop/" ]; then
   echo ".config/btop exists, adding..."
   rm -r ./btop/*
   cp -r $HOME/.config/btop/* ./btop/
else 
   echo ".config/btop doesnt exist, skipping..."
fi

if [ -d "$HOME/.config/fastfetch/" ]; then
   echo ".config/fastfetch exists, adding..."
   rm -r ./fastfetch/*
   cp -r $HOME/.config/fastfetch/* ./fastfetch/
else 
   echo ".config/fastfetch doesnt exist, skipping..."
fi

if [ -d "$HOME/.config/ghostty/" ]; then
   echo ".config/ghostty exists, adding..."
   rm -r ./ghostty/*
   cp -r $HOME/.config/ghostty/* ./ghostty/
else 
   echo ".config/ghostty doesnt exist, skipping..."
fi

if [ -d "$HOME/.config/kickoff/" ]; then
   echo ".config/kickoff exists, adding..."
   rm -r ./kickoff/*
   cp -r $HOME/.config/kickoff/* ./kickoff/
else 
   echo ".config/kickoff doesnt exist, skipping..."
fi

if [ -d "$HOME/.config/neofetch/" ]; then
   echo ".config/neofetch exists, adding..."
   rm -r ./neofetch/*
   cp -r $HOME/.config/neofetch/* ./neofetch/
else 
   echo ".config/neofetch doesnt exist, skipping..."
fi

if [ -d "$HOME/.config/niri/" ]; then
   echo ".config/niri exists, adding..."
   rm -r ./niri/*
   cp -r $HOME/.config/niri/* ./niri/
else 
   echo ".config/niri doesnt exist, skipping..."
fi

if [ -d "$HOME/.config/nvim/" ]; then
   echo ".config/nvim exists, adding..."
   rm -r ./nvim/*
   cp -r $HOME/.config/nvim/* ./nvim/
else 
   echo ".config/nvim doesnt exist, skipping..."
fi

if [ -d "$HOME/.config/swaync/" ]; then
   echo ".config/swaync exists, adding..."
   rm -r ./swaync/*
   cp -r $HOME/.config/swaync/* ./swaync/
else 
   echo ".config/swaync doesnt exist, skipping..."
fi

if [ -d "$HOME/.config/waybar/" ]; then
   echo ".config/waybar exists, adding..."
   rm -r ./waybar/*
   cp -r $HOME/.config/waybar/* ./waybar/
else 
   echo ".config/waybar doesnt exist, skipping..."
fi

if [ -e "$HOME/.zprofile" ]; then
   echo ".zprofile exists, adding..."
   rm -r .zprofile
   cp -r $HOME/.zprofile ./
else 
   echo ".zprofile doesnt exist, skipping..."
fi

if [ -e "$HOME/.zshrc" ]; then
   echo ".zshrc exists, adding..."
   rm -r .zshrc
   cp -r $HOME/.zshrc ./
else 
   echo ".zshrc doesnt exist, skipping..."
fi
