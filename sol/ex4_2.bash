#!/bin/bash
# inform.bash
#
# Take two arguments: time and mission
# after time seconds echo mission
#

read -p "How long to wait ?" TIME
read -p "What to do ? " TASK

# Grouping the two commands allows sending
# them both to background and create a
# the reminder illusion

( sleep $TIME ; echo $TASK ) &
