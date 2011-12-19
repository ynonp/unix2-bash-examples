#!/bin/bash
#
# Wait for a specific user to log into the server
# The script runs in a loop checking every two seconds
# if a user has logged in.
# Script ends when target user is logged into the server.
#

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
