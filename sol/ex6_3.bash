#!/bin/bash
#
# Rename every file that has spaces in its
# name to a new name with underscores instead
# of the spaces
#
# Script runs on a subdirectory called data to
# minimize the chances for data lose
#
for FILE in data/*\ *; do
# Using the substitution variable to replace every space to _
    mv "$FILE" "${FILE// /_}"
done

