#!/bin/bash
#
# find and count all processes by a given name
# running on the server
#

read -p "Process name: " PNAME
COUNT=$(ps -e| tr -s ' ' | cut -d ' ' -f5 | grep $PNAME | wc -l | tr -d ' ')

if [[ $COUNT == 0 ]]; then
  echo "No procs found"
elif [[ $COUNT == 1 ]]; then
  echo "One process found"
else
    echo "Found $COUNT processes"
fi
