#!/bin/bash
echo "
##########################
## Example 7.1:          #
## how to set a variable #
##########################
"
x='hello there'
echo $x

echo "here's what happens when you put spaces around the =:\n"
x = 'hello there' # this causes an error

echo "
########################################################
## Example 7.2:                                        #
## you don't always need to put quotes around strings: #
########################################################
"

x=banana

echo "but you do need quotes if there's a space"

x=hello there

echo "
##########################################
## Example 7.3:                          #
## why it's important to quote variables #
##########################################
"

echo "here's what happens if you don't put quotes around a filename with spaces:"

filename="files/filename with spaces"
cat $filename

echo "it works with quotes:"
cat "$filename"

echo "
###############################################################
## Example 7.4:                                               #
## how to use ${var} to concatenate a variable with a string: #
###############################################################
"

x=panda
echo "${x}bear"
echo "${x}2"

echo "these doesn't work: there's no variable called 'xbear' or 'x2'"
echo "$xbear"
echo "$x2"
