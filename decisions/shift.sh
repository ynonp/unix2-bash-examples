#!/usr/bin/env bash
#
#

function usage {
  cat <<END
Usage: shift.sh

Available options:

-l show a long listing of the files
-h print this friendly help message

Have a great day !
END
  exit 1
}

if [[ $1 == "-h" ]]; then
  usage
elif [[ $1 == "-l" ]]; then
  OPTS="-ld"
  shift
else
  OPTS="-Fd"
fi

ls ${OPTS} $1