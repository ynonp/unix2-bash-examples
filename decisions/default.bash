#!/usr/bin/env bash
#
# Use default values for arguments
# 
# Bash has a special syntax for default value which means
# If a variable is not defined use the replacement
# It is written as:
# 
# COUNT=${1:-5}
#

TERM=${1:-foo}

grep $TERM