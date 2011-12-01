#!/bin/bash

for FILE in data/*\ *; do
    NEWNAME=$(echo $FILE | tr ' ' '_')
    mv "$FILE" "$NEWNAME"
done
