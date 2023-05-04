#!/bin/bash

# Notify the user about Python and Pygame installation
echo "This script requires Python and Pygame to be installed."
echo "Please make sure they are installed before running this script."

# Check if Python is installed
if command -v python3 &>/dev/null; then
    echo "Python is already installed."
else
    echo "Python is not installed."
    read -p "Would you like to install Python? [y/n] " answer
    if [[ "$answer" == "y" ]]; then
        sudo apt-get install python3
        echo "Python has been installed."
    else
        echo "Python is required to run this script. Please install Python before continuing."
        exit 1
    fi
fi

# Check if Pygame is installed
if python3 -c "import pygame" &>/dev/null; then
    echo "Pygame is already installed."
else
    echo "Pygame is not installed."
    read -p "Would you like to install Pygame? [y/n] " answer
    if [[ "$answer" == "y" ]]; then
        sudo apt-get install python3-pygame
        echo "Pygame has been installed."
    else
        echo "Pygame is required to run this script. Please install Pygame before continuing."
        exit 1
    fi
fi

