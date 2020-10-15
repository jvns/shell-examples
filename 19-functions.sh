echo "
##################################
## Example 19.1:                 #
## defining & calling a function #
##################################
"

say_hello() {
    echo 'hello!'
}

say_hello
# $? prints the exit code of a function or program
echo $?

echo "
##########################
## Example 19.2:         #
## a function that fails #
##########################
"

failing_function() {
    echo 'I fail!'
    # by default, functions return 0 (success)
    return 1
}

failing_function
# $? prints the exit code of a function or program
echo $?


echo "
########################################
## Example 19.3:                       #
## how to take arguments in a function #
########################################
"

say_hello() {
    name=$1
    echo "Hello, $name!"
}

say_hello "Ahmed"

echo "
#####################################
## Example 19.4:                    #
## a function with a local variable #
#####################################
"

set_some_variables() {
    globalvar=$1
    local localvar
    localvar=$1
}

set_some_variables "panda"
# localvar was local to the function, so it's not available
# outside of the function
echo "localvar=$localvar"
echo "globalvar=$globalvar"

echo "
######################################################
## Example 19.4:                                     #
## very weird thing: local x=VALUE suppresses errors #
######################################################
"

example_function1() {
    local x=$(asdf)
}

example_function2() {
    local x
    x=$(asdf)
}

# this function succeeds, even though it has this "asdf:
# command not found" error
example_function1
echo "example_function1 exit code: $?"
# this function fails, like it should
example_function2
echo "example_function2 exit code: $?"

echo "
#####################################################
## Example 19.5:                                    #
## functions need to be defined before they're used #
#####################################################
"

my_function # error: not found

my_function() {
    echo "my_function got called"
}

my_function # now it works
