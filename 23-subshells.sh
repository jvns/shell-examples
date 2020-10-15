echo "
##################################################
## Example 23.1:                                 #
## cd in a subshell doesn't cd in the main shell #
##################################################
"

(
cd files
echo "directory in subshell: $(pwd)"
)
echo "directory in main shell: $(pwd)"

echo "
#############################################################
## Example 23.2:                                            #
## variables set in a subshell aren't set in the main shell #
#############################################################
"

(
animal="banana slug"
echo "in subshell:   animal=$animal"
)
echo "in main shell: animal="


echo "
####################################################################################
## Example 23.3:                                                                   #
## pipes create a subshell                                                         #
## (another example of 'variables set in a subshell aren't set in the main shell') #
####################################################################################
"

# here's an example of a place where there's a subshell created in a pretty
# nonobvious way.

# let's try to read 'hi' into a variable.
echo hi | read -r x
echo "in main shell: x=$x"
# it didn't work! this is because `read -r x` runs in a subshell

# if we put the `echo` in the same subshell as the `read`, though, it works:
echo hi | (
    read -r x
    echo "in subshell:   x=$x"
)

echo "
#################################################
## Example 23.4:                                #
## a subshell created with process substitution #
#################################################
"

function1() {
    echo 'hi there!'
    echo "I'm function 1!"
}


function2() {
    echo 'hi there!'
    echo "I'm function 2!"
}

# this runs both `function1` and `function2` in 2 different subshells, creates
# a named pipe with each one's output, and then passes the filenames of the 2
# named pipes to `diff`.
# I don't know if I've ever used this but it's cool that you can do it!
diff <(function1) <(function2)

echo "
########################################################################
## Example 23.5:                                                       #
## subshells inherit shell variables (but other child processes don't) #
########################################################################
"

ANIMAL=panda

(
    echo "in subshell: ANIMAL=$ANIMAL"
)

bash -c  'echo "in this other shell: ANIMAL=$ANIMAL "'

# subshells copy all the variables from their parent shell, but other child
# shell processes, even though both of them are child processes,
