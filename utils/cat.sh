#!/usr/bin/env bash
#
#

[[ $# = 1 ]] && exec 0<$1

while read LINE; do
  echo $LINE
done