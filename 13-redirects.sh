echo "
###########################
## Example 13.1:          #
## read input from a file #
###########################
"

# these both send files/lines.txt to wc's stdin
wc < files/lines.txt
cat files/lines.txt | wc

# people say it's bad to use 'cat' when you don't need to
# because it's wasteful / unnecessary but I usually do it
# anyway and it's never harmed me

echo "
###################################################
## Example 13.2:                                  #
## try making a file owned by root, and then      #
## writing to it in 2 different ways:             #
## $ sudo chown root:root files/owned_by_root.txt #
## $ sudo echo 'hi' > files/owned_by_root.sh      #
## then                                           #
## $ echo 'hi' | sudo tee files/owned_by_root.sh  #
###################################################
"

# no code here, you need to run these commands yourself
# interactively because they need sudo

# sudo echo 'hi' > files/owned_by_root.sh doesn't work because
# the `>` redirect is done by your shell, which is owned by
# you and doesn't have the permissions needed


echo '
####################################
## Example 13.3:                   #
## redirecting output to /dev/null #
####################################
'

# run `ls` but send the output to /dev/null
# (not useful and outputs nothing)
echo 'ls > /dev/null'
ls > /dev/null
echo "... it didn't print anything"

echo 'this prints out an error:'
touch /asdf/file.txt
echo 'this still prints out an error:'
touch /asdf/file.txt > /dev/null
echo "now there's no error:"
# we need to redirect stderr with 2> to get rid of the error
touch /nonexistent-directory/file.txt 2> /dev/null

echo '
#######################
## Example 13.4:      #
## grepping with 2>&1 #
#######################
'

echo "this doesn't filter for lines containing 'panda'"
# because | only pipes `touch`'s stdout to grep, not the
# stderr. So the error output just goes through unfiltered.
touch /asdf/file.txt | grep panda

echo "but this does:"
touch /asdf/file.txt 2>&1 | grep panda

echo '
#############################################
## Example 13.5:                            #
## sending both stdout and stderr to a file #
#############################################
'


echo 'this works'
touch /asdf/file.txt > files/error.txt 2>&1

echo "this doesn't work"
touch /asdf/file.txt 2>&1 > files/error.txt
# the stderr output doesn't get redirected because we need to
# put the 2>&1 at the end
# I always get confused by this.
