#!/bin/bash

N=1

while read LINE; do
    echo -e "\t" $N $LINE
    (( N=N+1 ))
done
