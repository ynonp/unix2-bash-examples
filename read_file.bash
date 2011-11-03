#!/bin/bash

# reads a normal file and make it a list
#

echo "<ul>"
while read line; do
    echo "<li>$line</li>"
done < $1

echo "</ul>"
