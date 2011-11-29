#!/bin/bash

if [[ $# == 0 ]]; then
    echo "go away"
    exit 7
fi

case $1 in
    -i)echo "Welcome Friend";shift ;;
    -j)echo "Welcome dear Friend"; shift;;
esac

ls -l | grep $1
