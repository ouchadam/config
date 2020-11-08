#!/bin/bash

# base

sudo pacman -S \
  wget \
  git \
  base-devel \
  --needed \
  --no confirm


git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd -
rm -rf yay


# install WM packages

sudo pacman -S \
  sway \
  alacritty \
  wofi \
  xorg-server-xwayland \
  --noconfirm

# configure

mkdir -p ~/.config/sway/
wget -o  ~/.config/sway/config.in https://raw.githubusercontent.com/ouchadam/config/main/sway/config.in


# install various

sudo yay -S \
  google-chrome \
  --noconfirm
  
