#!/bin/bash
#
# Usage: 
# Description:
# Author: Ynon Perek
#
LINE=""
DASH="-"

while [[ $1 = -* ]]; do
  case $1 in
    -c) DASH=$2;shift;;
    -f) FILE=$2;shift;;
    -v) VERBOSE=1;;
  esac
  shift
done

for (( i=0; i <$1; ++i  )); do
  LINE="${LINE}${DASH}"
done

echo "$LINE"