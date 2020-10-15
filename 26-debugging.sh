#!/bin/bash

echo "
###############################################
## Example 26.1:                              #
## set -x shows every line of code that's run #
###############################################
"

set -x

echo 'hi'
for i in $(seq 1 5)
do
    echo $i
done

set +x # undo the set -x

echo "
###############################################
## Example 26.2:                              #
## trap lets us make a fancy step debugger #
###############################################
"

trap '(read -p "[$BASH_SOURCE:$LINENO] $BASH_COMMAND ") ' DEBUG

echo "it makes us press enter to confirm before every line of code"

for i in $(seq 1 5)
do
    echo $i
done
