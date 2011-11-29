#!/bin/bash
# take a file name
# if a directory -> print its files
# if a file -> print its content
#

FILENAME=$1

if [[ -f $FILENAME ]]; then
    cat "$FILENAME"
elif [[ -d $FILENAME ]]; then
    ls "$FILENAME"
else
    echo "$FILENAME is neither a file nor a directory"
fi

