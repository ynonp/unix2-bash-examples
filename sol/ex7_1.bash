#!/usr/bin/env bash
#
# Back up a file by creating a new file
# suffix that is an even number between
# 0 and 100 If such a name is free, copy
# the original file to its new name
#
# For instance, if the directory has the
# files: a.c, a.c.0, a.c.2 And a user
# runs backup a.c A new copy of the file
# should be created under the name:
# a.c.4
#

for (( i=0; i < 100; i+= 2 )); do
  [[ -f $1.$i ]] && continue;
  cp "$1" "$1.$i"
  break
done

