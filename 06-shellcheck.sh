#!/bin/bash

echo '
#########################################
## Example 6.1:                         #
## Try running shellcheck on this file! #
## $ shellcheck 06-shellcheck.sh        #
#########################################
'

# shellcheck installation instructions: https://github.com/koalaman/shellcheck#installing

filename="filename with spaces.txt"
ls $filename # this is an error, shellcheck will catch it!

# exercise: Try googling "SC2086" for an explanation of that error

# there's a list of every shellcheck error here:
# https://gist.github.com/nicerobot/53cee11ee0abbdc997661e65b348f375#file-_shellcheck-md
