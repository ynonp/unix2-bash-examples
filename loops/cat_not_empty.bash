#!/bin/bash

while read LINE; do
    [[ -n $LINE ]] && echo $LINE
done
