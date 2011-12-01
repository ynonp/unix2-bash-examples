#!/bin/bash

if [[ $# != 1 ]]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USERNAME=$1

while (( 1 )); do
    ( who | cut -f1 -d ' ' | grep -w $USERNAME > /dev/null ) && break
    sleep 2
done

echo "Hello $USERNAME"
