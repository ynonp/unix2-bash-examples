#!/bin/bash

if [[ $# != 1 ]]; then
    echo "Usage: $0 <pathname>"
    exit 1
fi

REPLACED=$(echo $1 | tr '/' ' ')

for PATH in $REPLACED; do
    mkdir $PATH
    cd $PATH
done
