#!/usr/bin/env bash
#
#

if [[ $# == 0 ]]; then
  echo "Missing Arguments"
  exit 1
fi

TERM=$1
shift

[[ $# = 1 ]] && exec 0<$1

while read LINE; do
  [[ $LINE =~ $TERM ]] && echo $LINE
done