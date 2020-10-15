echo "
######################################
## Example 20.1:                     #
## how to get the length of a string #
######################################
"

animal=panda
echo "${#animal}"

echo "
###############################
## Example 20.2:              #
## how to do search & replace #
###############################
"

filename=swan.svg
echo "convert $filename ${filename/svg/png}"

echo 'You can also replace all instances of a string with //'
greeting="hello hello hello!"
echo ${greeting//hello/bonjour}

echo "
##################################################
## Example 20.3:                                 #
## use a default value for an undefined variable #
##################################################
"

echo "Hello, ${name:-UNKNOWN NAME}"
name=Julia
echo "Hello, ${name:-UNKNOWN NAME}"

echo "
##################################
## Example 20.4:                 #
## remove a suffix from a string #
##################################
"

filename="motorcycle.svg"
echo ${filename%.svg}

echo 'or remove a prefix:'
filename="motorcycle.svg"
echo ${filename#motor}


echo "
####################
## Example 20.5:   #
## get a substring #
####################
"

x="oh, hello there!"

echo ${x:4} # 4 is the offset
echo ${x:4:5} # 4 is the offset, 5 is the length

echo "
##################################################
## Example 20.6:                                 #
## exit with an error if a variable is undefined #
##################################################
"

echo ${asdf:?"oops, not defined! danger!"}
