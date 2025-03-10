#!/bin/bash

# listing apps to install
apps=(
   "waybar"
   "btop"
   "dunst"
   "hyprpaper"
   "kitty"
   "neofetch"
   "neovim"
   "wofi"
   "zsh"
   "yay"
   "ghostty"
   "light"
   "pulseaudio"
   "bluez"
   "bluez-utils"
   "yazi"
)
aur_apps=(
   "zen-browser-bin"
   "hyprshot"
   "mkinitcpio-colors-git"
)
# packages install
sudo pacman -Syu
for i in "${apps[@]}"; do
   echo "installing $i"
   sudo pacman -S --noconfirm "$i"
done
for j in "${aur_apps[@]}"; do
   echo "installing $j"
   sudo yay -S --noconfirm "$j"
done

# oh-my-zsh install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# oh-my-posh install
curl -s https://ohmyposh.dev/install.sh | bash -s

# moving config files and such 
echo "configuring ly..."
cp ly/mkinitcpio.conf /etc/mkinitcpio.conf
cp ly/config.ini /etc/ly/config.ini
cp ly/vconsole.conf /etc/vconsole.conf
mkinitcpio -P
echo "setting up nvim..."
rm -rf ~/.config/nvim && cp nvim ~/.config/nvim -r
echo "setting up btop..."
rm -rf ~/.config/btop && cp btop ~/.config/btop -r
echo "setting up dunst..."
rm -rf ~/.config/dunst && cp dunst ~/.config/dunst -r
echo "setting up wofi..."
rm -rf ~/.config/wofi && cp wofi ~/.config/wofi -r
echo "setting up ghostty..."
rm -rf ~/.config/ghostty && cp ghostty ~/.config/ghostty -r
echo "setting up waybar..."
rm -rf ~/.config/waybar && cp waybar ~/.config/waybar -r
echo "setting up scripts..."
cp .scripts ~/.scripts -r
echo "copying wallpaper..."
cp .wallpapers ~/.wallpapers
echo "setting up hypr folder..."
cp hypr/mocha.conf ~/.config/hypr/mocha.conf
cat hypr/hyprland.conf > ~/.config/hypr/hyprland.conf
cat hypr/hyprpaper.conf > ~/.config/hypr/hyprpaper.conf
echo "setting up zsh..."
chsh /usr/bin/zsh
cat .zshrc > ~/.zshrc
echo "youll have to manually create user profiles and move the chrome folder into them, sry"
echo "reminder to replace passwords in hyprland.conf with your sudo password!!! get there by running hyprconf in your terminal"
