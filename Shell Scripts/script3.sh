#!/bin/bash
# Script 3: Disk and Permission Auditor
#This script checks important directories for size and permissions 

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"#Visual separating lines

#Looping through directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
    	#Getting permissions
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        #Getting size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# Git config directory
CONFIG="$HOME/.gitconfig"

if [ -f "$CONFIG" ]; then
    ls -l $CONFIG
else
    echo "Git config file not found"
fi
