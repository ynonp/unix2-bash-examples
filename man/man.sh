#!/usr/bin/env bash
#
#
echo "Please enter time to wait"
read TIME

echo "Please enter task to perform"
read TASK

( sleep $TIME; echo -e "\e[34m\n*** THE TIME HAS COME TO \n" $TASK "\n") &

exit

=head1 NAME

inform.sh is a cool notification program

=head1 SYNOPSIS

  inform.sh (just run the program)

=head1 DESCRIPTION

inform.sh is the best tool in the world

