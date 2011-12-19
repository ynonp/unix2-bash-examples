#!/usr/bin/env bash
#
# Write an inform.sh script that takes as input
# A wait period and a task, wait for wait period
# and then notify the user that the task should
# be performed
#
# Wait Period format is [letter][time] where
# letter is one of m,s,h to denote minutes, seconds, hours
# and time is a number
#

WAIT_TEXT=$1
TASK=$2

WAIT_TYPE=${WAIT_TEXT:0:1}
WAIT=${WAIT_TEXT:1}

case $WAIT_TYPE in
  m) (( WAIT *=60 ));;
  h) (( WAIT *=3600 ));;
esac

(sleep $WAIT; echo $TASK) &

exit 0
