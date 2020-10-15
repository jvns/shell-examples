#!/bin/bash

echo '
################################################
## Example 8.1:                                #
## how to print  out all environment variables #
################################################
'

# the first way is `env`
env | tail # I piped this to tail just because there are a LOT
# here's another way to get environment variables that only works on Linux:
cat /proc/self/environ | tr '\0' '\n' | tail

echo '
######################################
## Example 8.2:                       #
## printing out environment variables #
## and shell variables                #
#######################################
'
# we access them both the same way: $varname
x="i'm a variable"
echo "$x"
echo "$HOME" # $HOME is an environment variable

echo '
########################################
## Example 8.3:                        #
## child processes inherit environment #
## variables (but not shell variables) #
########################################
'

# What's going on in this example:
# $ bash -c "some bash code"
# starts a bash child process that runs some bash code
# We're doing that here because it's a simple way to start out a child process
# that prints out its environment variables

export ENVVAR='panda'
bash -c 'echo ENVVAR is: $ENVVAR' # this prints out 'panda'
# we can also print out the environment variable from a Python child process
# (but we do it from a bash child process in the rest of the examples just
# because it's less code)
python -c "import os; print('from Python: ENVVAR=' + os.environ['ENVVAR'])"

# but child processes don't inherit regular shell variables

SHELLVAR='baby seal'

bash -c 'echo SHELLVAR is: $SHELLVAR' # this doesn't print out anything

echo '
#######################################
## Example 8.4:                       #
## how to set an environment variable #
## for a child process with env       #
#######################################
'

env ANIMAL=porcupine bash -c 'echo in this child process, ANIMAL=$ANIMAL'
# ANIMAL doesn't get set in the main process
echo "but in the main process, ANIMAL=$ANIMAL"

# it also works without the 'env'

ANIMAL='banana slug' bash -c 'echo in the second child process, ANIMAL=$ANIMAL'
echo "in the main process, we still have ANIMAL=$ANIMAL"
