#!/bin/bash
# inform.bash
#
# Take two arguments: time and mission
# after time seconds echo mission
#

read -p "How long to wait ?" time
read -p "What to do ? " task

( sleep $time ; echo $task ) &
