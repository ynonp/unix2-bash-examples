#!/bin/bash
[[ $# == 1 ]] && exec 0<$1

COUNT=0

while read LINE; do
    let COUNT+=1
done

echo $COUNT
