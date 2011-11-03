#!/bin/bash
# take a file name
# if a directory -> print its files
# if a file -> print its content
#

filename=$1

if [[ -f $filename ]]; then
    cat $filename
elif [[ -d $filename ]]; then
    ls $filename
else
    echo "$filename is neither a file nor a directory"
fi

