echo "
############################
## Example 18.1:           #
## reading into a variable #
############################
"

echo -n "What's your name? (type your name and press enter) "
read -r name
echo "Hello, $name!"

echo "
############################
## Example 18.2:           #
## read into multiple variables #
############################
"

echo -n "What's your first & last name? "
read -r first last
echo "first: $first, last: $last"


echo "
###################################
## Example 18.3:                  #
## reading a comma-separated list #
###################################
"

# if we pipe to `read` then we can read input from a file
# instead of having to type in the values to read

echo 'Ramesh,Kumar,22' | ( # This () syntax is a subshell, from page 23
   IFS=, # split input on comma
   read -r first last age
   echo "$first $last is $age years old"
)

# I don't usually read from files in bash (to me that's in the
# "complicated" category I'd use another language for)
# but I think it's kind of fun that you could use this to read a CSV



echo "
######################################
## Example 18.4:                     #
## read strips whitespace by default #
######################################
"

echo 'type something with a lot of spaces at the beginning'

read -r something
echo "here's what got read: \"$something\""

echo "
#############################################
## Example 18.5:                            #
## making a for loop read lines from a file #
#############################################
"

echo 'by default, a for loop will read one word at a time from a file'

for i in $(cat files/lines.txt)
do
    echo $i
done

echo "but if you set IFS='', it'll read lines from the file instead"
IFS=''
# the code below is exactly the same as the code above, we
# just changed the value of IFS
for i in $(cat files/lines.txt)
do
    echo $i
done


