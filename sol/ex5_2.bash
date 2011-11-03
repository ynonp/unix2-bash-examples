#!/bin/bash
#
# find and count all processes by a given name
# running on the server
#

read -p "Process name: " pname
count=$(ps -e| tr -s ' ' | cut -d ' ' -f4 | grep $pname | wc -l | tr -d ' ')

if [[ $count == "0" ]]; then
    echo "No procs found"
else
    echo "Found $count processes"
fi
