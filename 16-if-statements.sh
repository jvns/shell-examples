#!/bin/bash

echo "
#########################
## Example 16.1:        #
## a basic if statement #
#########################
"

# `if` can run any command. For example, touch!
if touch files/test.txt
then
    echo 'did a thing!'
fi

# this one will fail because /asdf doesn't exist
if touch /asdf/asdf.txt
then
    echo 'it succeeded'
else
    echo 'it failed'
fi

echo "
##########################
## Example 16.2:         #
## a 1-line if statement #
##########################
"

# if COMMAND; then THING; fi
# the semicolons need to go in exactly those places, otherwise
# it won't work (try putting the semicolons somewhere else!)
if touch files/test.txt; then echo 'success'; fi

echo "
########################################
## Example 16.3:                       #
## run [ by itself to see how it works #
########################################
"

# first, let's run the program [ by itself
/usr/bin/[ -e files/lines.txt ]
echo $? # $? is the exit code of the most recent program run
echo 'the exit code was 0, so it succeeded'

/usr/bin/[ -e files/doesntexist.txt ]
echo $? # $? is the exit code of the most recent program run
echo 'the exit code was 1, because doesntexist.txt doesn't exist

echo "
#######################################
## Example 16.3:                      #
## testing if a file exists with if [ #
#######################################
"


if [ -e files/lines.txt ]
then
    echo "files/lines.txt exists!"
fi

# [ is actually a bash builtin, but it acts like the program
# /usr/bin/[ that we just used above

echo "
########################################
## Example 16.4:                       #
## testing if a file exists with if [[ #
########################################
"

# most things that work with if [ will also work with if [[

if [[ -e files/lines.txt ]]
then
    echo "files/lines.txt exists!"
fi


echo "
###########################
## Example 16.5:          #
## negating a test with ! #
###########################
"

# ! will check if a command fails

if ! [ -e files/doesntexist.txt ]
then
    echo "files/doesntexist.txt doesn't exist!"
fi


echo "
####################################################
## Example 16.6:                                   #
## using && to check if 2 conditions are both true #
####################################################
"

if [ -e file1 ] && [ -e file2 ]
then
    echo file1 and file2 both exist
else
    echo "they don't"
fi

echo "
#################################################
## Example 16.7:                                #
## try running                                  #
## $ man test                                   #
## to see what else you can put in 'if [ ... ]' #
#################################################
"
