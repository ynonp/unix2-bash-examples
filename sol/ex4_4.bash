#!/bin/bash
#
# last_modified.bash
#
# Take a file name and returns its last modification date
#

ls -l $1 | tr -s ' ' | cut -d ' ' -f6-8
