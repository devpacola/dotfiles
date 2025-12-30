#!/bin/bash

# This script update the Ubuntu Based-Distros, like: Ubuntu, Mint, Zorin, Pop!_OS...
# Will be updated the APT packages, Flatpak packges and Snap packages 

# Update Pop!_OS system using APT package manager
sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt dist-upgrade
sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean

# Check if Flatpak is installed
if command -v flatpak &> /dev/null; then
    flatpak update -y
fi

# Check if Snap is installed
if command -v snap &> /dev/null; then
    sudo snap refresh
fi

# Final message after all updates are done
echo "Update completed!"
