#!/bin/bash

# decide by $?
if (( 2 < 3 )); then
    echo "found foo"
else
    echo "no foo"
fi

