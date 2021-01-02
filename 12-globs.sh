# this creates some files for this example
# and cleans them up when the example is done
(
cd files
touch bear.txt bearable.txt bugbear.txt
)
trap 'rm files/*bear*.txt' EXIT

echo '
###########################################
## Example 12.1:                          #
## listing all files starting with "bear" #
###########################################
'

echo 'ls files/bear*:'
ls files/bear*
echo 'ls files/*.txt'
ls files/*.txt

echo "
##############################################
## Example 12.2:                             #
## filenames starting with a dot don't match #
##############################################
"

# all files with "bash" in your home directory
echo 'ls ~/*bash*'
ls ~/*bash* # no files with a . listed
# this will list .bashrc and .bash_profile,
# if you have them
echo 'ls ~/.bash*'
ls ~/.bash*

echo "
#################################################
## Example 12.3:                                #
## quote a * to pass a literal * as an argument #
#################################################
"


echo "let's try it without the quotes"
grep 22* files/lines.txt
echo "no results! this is because it's running this:"
echo grep 22* files/lines.txt

echo ''
echo "now let's try it with the quotes"
echo "$ grep '22*' files/lines.txt"
grep '22*' files/lines.txt
# the regular expression '22*' is kind of a silly one, this is
# similar to running `grep 2 files/lines.txt`
