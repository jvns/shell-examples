echo "
############################################
## Example 10.1:                           #
## let's check the 'type' of some programs #
############################################
"

type alias
type grep
type gibberishasdf # doesn't exist
type ls
alias ls='ls --color'
type ls
type type
type [
which [ # [ is both a builtin and a program
type if
type [[

echo "
#################################
## Example 10.2:                #
## running a script with source #
#################################
"

echo "cd.sh changes the directory to files/ and sets a variable called PANDA. First, let's run it with cd:"
bash files/cd.sh
pwd
echo $PANDA
echo "Our directory didn't change! and the \$PANDA variable doesn't exist"
echo "Let's use 'source' instead and try it again"
source files/cd.sh

pwd
echo $PANDA
echo "now we're in a different directory and \$PANDA is set"
