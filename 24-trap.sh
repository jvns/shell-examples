echo "
#############################################
## Example 24.1:                            #
## trap signals that run on EXIT and Ctrl+C #
#############################################
"

trap "echo we\'re exiting the script!" EXIT

trap "echo you pressed Ctrl+C" INT

echo 'press Ctrl+C here to see the INT signal handler run.'
# notice that Ctrl+C doesn't actually make the script exit, like it usually
# would! This is because trap replaces the normal signal handler for Ctrl+C
# (which would cause the script to exit). If you put an `; exit` at the end of
# the signal handler command, it'll exit the script

# this `read` just gives an opportunity to press Ctrl+C
read

