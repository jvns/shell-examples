echo "
##################
## Example 20.1: #
## using a pipe  #
##################
"

# prints the number of files in the current directory
ls | wc -l

echo "
###############################################
## Example 20.2:                              #
## what happens when you fill a pipe's buffer #
###############################################
"

# we need to write a slightly unusual program to demonstrate
# this, but let's do it!

# Program 1 (the first one) writes five 30,000 character lines
# Program 2 reads one line at a time, and after each line pauses for a second

# Because our pipe's buffer is only about 64KB, Program 1
# can't write all of its lines immediately: it has to wait to
# print lines 3 and 4. So it pauses, even though if there
# weren't a pipe it would  be able to print out all of its
# output right away and exit

# python -c lets you pass in a script for Python to run
python -c '
import sys
for i in range(5):
    print("a" * 30000)
    sys.stderr.write("printed line %d\n" % i)' | python -c '
import fileinput
import time
for line in fileinput.input():
    time.sleep(1)
'


echo "
##################
## Example 20.3: #
## named pipes   #
##################
"

trap 'rm -f  myfifo' EXIT # this trap just cleans up the file at the end
# this does the same thing as running `ls | wc`
mkfifo myfifo
ls > myfifo &
wc  < myfifo

