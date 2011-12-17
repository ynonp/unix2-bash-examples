#!/usr/bin/env bash
#
# Parameter Expansion
#
# Using a simple $ character expands a variable, however
# bash has many ways to expand variables replacing some of
# its content
#
# This script demonstrates the following:
# ${parameter:-word} Default values
# ${parameter:=word} Assign default values
#
# ${parameter#word} remove matching prefix
# ${parameter%word} remove matchin suffix
# ${parameter/pattern/replace} Pattern substitution
#

TEXT='Hello World'

# print 40 - $QUESTION not available
echo ${QUESTION:-40}

# print 42 and assign 42 to QUESTION
echo ${QUESTION:=42}

# print 42, since it now has a value
echo ${QUESTION:=74}

# print Hello
echo ${TEXT% World}

# print World
echo ${TEXT#Hello }

# print Goodbye World
echo ${TEXT/Hello/Goodbye}
