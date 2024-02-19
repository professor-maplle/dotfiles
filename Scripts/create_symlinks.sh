#!/bin/bash

# Get current user
username=$(logname)

# bash
ln -s /home/$username/dotfiles/.bashrc /home/$username/.bashrc

# xfce
ln -s /home/$username/dotfiles/xfce4 /home/$username/.config/xfce4

# neofetch
ln -s /home/$username/dotfiles/neofetch /home/$username/.config/neofetch