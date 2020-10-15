#!/bin/bash

echo '
#########################################
## Example 5.1:                         #
## run this script in both sh and bash: #
## $ sh 05-compatibility.sh             #
## $ bash 05-compatibility.sh           #
#########################################
'

echo "this works in both bash and sh:"

x='hello there'
echo "$x"

echo "but this only expands to 'x.svg x.png' in bash:"

echo x{.svg,.png}

