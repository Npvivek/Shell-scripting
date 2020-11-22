#!/bin/bash

#1 check whether a file exists in /etc directory or not 
echo "1)"
cd /etc
echo "directory changed to /etc"
FILE=$1

if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist."
fi

