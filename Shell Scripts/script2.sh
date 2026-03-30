#!/bin/bash
# Script 2: FOSS Package Inspector
#This Script checks if a package is installed and prints basic information

PACKAGE="git"

#Installation Check
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    git --version
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

#Description
case $PACKAGE in
    git) 
    echo "Git is a distributed version control system created to manage code efficiently." ;;
    
    firefox) echo "Firefox is an  open-source web browser" ;;
    
    vlc) echo "VLC is a powerful multimedia player" ;;
    
    apache2) echo "Apache is a widely used open source web server" ;;
    
esac
