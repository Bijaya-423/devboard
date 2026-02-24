#!/bin/bash

# File containing group names
FILE="groups.txt"

# Check if file exists
if [ ! -f "$FILE" ]; then
    echo "File not found!"
    exit 1
fi

# Read file line by line
while read group
do
    # Skip empty lines
    if [ -z "$group" ]; then
        continue
    fi

    # Check if group already exists
    if getent group "$group" > /dev/null 2>&1; then
        echo "Group '$group' already exists."
    else
        sudo groupadd "$group"
        echo "Group '$group' created successfully."
    fi

done < "$FILE"

echo "Process completed."