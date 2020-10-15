#!/bin/bash
# these 25.x scripts have multiple scripts because they all exit the script so
# we can't put them all in one file
echo "
################################################################################
## Example 25.1:                                                               #
## Run \$ bash 25-1-errors.sh to see how the script exits when there's an error #
################################################################################
"

set -e

unzip nonexistent-file.zip
echo "does this happen?" # spoiler: it doesn't
