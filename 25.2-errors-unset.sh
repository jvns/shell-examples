echo "
##########################################
## Example 25.2:                         #
## set -u saves you from unset variables #
##########################################
"

set -u

rm files/whatever/$ASDF
# this isn't THAT unsafe to run without `set -u` (worst case it removes
# files/whatever which doesn't even exist anyway), but other variants of this
# can delete all your files! very scary.
