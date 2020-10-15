echo "
##########################
## Example 17.1:         #
## basic for loop syntax #
##########################
"

# you can just list the words you want to loop over!

for i in panda swan
do
    echo "$i"
done

echo "
######################
## Example 17.2:     #
## a 1-line for loop #
######################
"

# usually when I write for loops on the command line, I just
# press enter and type
# for i in ...
# do
#  ....
# done
# But you can also write the for loop on one line if you want!

for i in banana mango pear; do echo "$i"; done

echo "
###########################
## Example 17.3:          #
## looping over filenames #
###########################
"

set -x
# this converts all .svg files in files/ to .pngs
for i in files/*.svg
do
    convert "$i" "${i/svg/png}"
done
set +x

echo "
#########################################
## Example 17.4:                        #
## for loops loop over words by default #
#########################################
"

# notice that "filename with spaces" gets listed in 3 different lines, not 1 line
for i in $(ls files/)
do
    echo $i
done

echo "
#################################
## Example 17.5:                #
## loop over a range of numbers #
#################################
"

for i in $(seq 1 10)
do
    echo $i
done

echo 'or with {1..5}:'
for i in {1..5}
do
    echo $i
done


