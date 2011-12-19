#!/usr/bin/env bash
#
# Write a script that emulates mkdir -p
# The script takes a nested directory
# structure in the format:
# a/b/c/d
# And creates all given subdirectories
#

# Use substitution variable to replace
# every / to a <space>
for DIR in ${1//\// }; do
  mkdir $DIR
  cd $DIR
done

