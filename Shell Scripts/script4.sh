#!/bin/bash
# Script 4: Log File Analyzer
#This script counts how many times a keyword appears in a log file

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

#Checking if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "File not found"
    exit 1
fi

#Reading every line of a file
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"
echo "--------------------------------"#Visual separating lines 
echo "Analysis complete"
echo "Keyword '$KEYWORD' found $COUNT times"
echo "--------------------------------"
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
