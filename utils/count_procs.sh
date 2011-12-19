#!/usr/bin/env bash
#
# Write a script that takes a process name and counts how
# many processes are active by that name.
#
# This script may seem like an overkill. Here's the explanation:
#
# 1. $(...) operator opens a new subshell. This means a simple
#    COUNT=$(ps -ef | tr ... | cut ... | grep ... | wc -l)
#    will not work. If the user has searched for bash, she will
#    get one more result (the internal bash used to stat $(...)
#
# 2. We can filter all processes that are part of the counting
#    process by looking at PID and PPID. That's the rationale
#    behind the while read loop
#
# 3. A | while also opens a new subshell, so it is not possible
#    to create a COUNT variable that gets its value from within
#    the loop and read outside.
#    The issue was solved using a function and $(...) to get its
#    output into an outside variable.
#    The names COUNT inside the function and COUNT outside refer
#    to two different variables
#

function count {
  ps -ef | ( while
  read RUID RPID RPPID RCPU RSTART RTTY RUSAGE RCMD RPARAMS; do
    [[ $RPID  = $$ ]] && continue
    [[ $RPPID = $$ ]] && continue
    [[ $RCMD != $1 ]] && continue
    echo "Found: $RPID $RCMD $RPARAMS"
    (( COUNT += 1 ))
  done; echo $COUNT )
}

read -p "Enter process name: " PROCNAME

COUNT=$(count $PROCNAME)

if [[ $COUNT = 0 ]]; then
  echo "Nothing found"
elif [[ $COUNT = 1 ]]; then
  echo "Found one process"
else
  echo "Found $COUNT processes"
fi
