#!/usr/bin/env bash
#
#

[[ $# = 1 ]] && exec 0<$1

while read LINE; do
  (( chars += ${#LINE} ))
  (( lines += 1 ))
done

echo "lines: $lines, chars = $chars"