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


# screen capture

yay -S linux-headers
yay -S v4l2loopback-dkms
yay -S wf-recorder
modprobe v4l2loopback exclusive_caps=1 card_label=WfRecorder



# install various

sudo yay -S \
  google-chrome \
  --noconfirm
  
