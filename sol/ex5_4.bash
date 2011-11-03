#!/bin/bash


# check permissions on argument
# print 
#  readable/writable/executable accordingly
#

if [[ $# != 1 ]]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

[[ -r $1 ]] && echo "Readable"
[[ -w $1 ]] && echo "Writable"
[[ -x $1 ]] && echo "Executable"

