#!/usr/bin/env bash
#
# A sample script for working with optional arguments
# The script prints out how many arguments it got, 
# AND if started with the -p flag, will also print
# the first 5 arguments
#

PRINT=0

# check for the -p flag. If given, dismiss it
# so later script is not bothered
if [[ $1 = -p ]]; then
  PRINT=1;
  shift;
fi

echo $#

if (( PRINT == 1 )); then
  echo $1 $2 $3 $4 $5
fi
