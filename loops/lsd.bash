#!/bin/bash

while read A B C D E F; do
    [[ $E -gt 10 ]] && echo $E $F
done
