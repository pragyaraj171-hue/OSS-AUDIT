#!/bin/bash
# Script 5: Open Source Manifesto Generator
#This script creates a small personal open source statement

echo "Answer the questions:"
echo ""

#Input from user
read -p "One open source tool you use daily: " TOOL
read -p "What does freedom means to you: " FREEDOM
read -p "What would you like to build and share : " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_Pragya_Raj.txt"

# Writing output to file
echo "On $DATE, I reflect on open source." > $OUTPUT
echo "I use $TOOL regularly, and to me freedom means $FREEDOM." >> $OUTPUT
echo "In the future, I want to build $BUILD and share it openly with others." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo "--------------------------------"
cat $OUTPUT
