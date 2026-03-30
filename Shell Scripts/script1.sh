#!/bin/bash
# Script 1: System Identity Report
#This script shows basic system details in a readable format

STUDENT_NAME="Pragya Raj"
SOFTWARE_CHOICE="Git"

#Getting system information with these codes
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

#We are getiing OS name
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2)
DATE=$(date)
echo "================================"#Visual separating lines for neat look
echo "Open Source Audit — Pragya Raj"
echo "================================"

echo "Software: $SOFTWARE_CHOICE"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"
echo "Distro  : $DISTRO"
echo "Date    : $DATE"

#Licensed under GPL
echo "License : GPL (Linux Kernel)"
