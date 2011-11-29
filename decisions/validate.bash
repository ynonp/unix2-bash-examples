#!/bin/bash

if (( $# != 1 )); then
    echo "Missing user name"
    exit 1
fi

if grep $1 /etc/passwd > /dev/null; then
    echo "found $1"
else
    echo "not found $1"
fi
