#!/bin/bash
# add_x
#
# adds execution permission to a file
#

if [[ $# != 1 ]]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

if [[ ! -f $1 ]]; then
    echo "Invalid file name: $1"
    exit 2
fi

chmod u+x $1
