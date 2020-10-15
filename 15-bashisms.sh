# try running this file with both bash & sh

echo '
##################
## Example 15.1: #
## [[            #
##################
'

if [[ -e /tmp ]]; then
    echo '/tmp exists'
fi

echo '
#########################
## Example 15.2:        #
## diff <(cmd1) <(cmd2) #
#########################
'

echo 'this one actually causes a syntax error that stops the
rest of the script from running in sh, uncomment it if you
want to see'

# diff <(ls files/*.txt) <(ls files/)

echo "
####################
## Example 15.3:   #
## brace expansion #
####################
"

echo a.{png,svg}
echo {1..5}

# there are a LOT more bashisms than just these 3
