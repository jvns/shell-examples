echo "
#####################################
## Example 25.3:                    #
## set -o pipefail makes pipes fail #
#####################################
"

set -e
curl 23849234faadsfad.com | tr '\0' '\n'
echo "why didn't the script fail already? curl failed and we asked it to stop on errors?!"

set -o pipefail

curl 23849234faadsfad.com | tr '\0' '\n'

echo "we don't get to this line, set -o pipefail makes the whole pipeline fail because curl failed"
