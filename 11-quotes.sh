echo '
###################################
## Example 11.1:                  #
## double quotes vs single quotes #
###################################
'

echo 'single quotes: $HOME'
echo "double quotes: $HOME"

echo '
##############################
## Example 11.2:             #
## quoting multiline strings #
##############################
'

echo "we've been quoting multiline strings this whole time: see the previous line!"

echo '
########################
## Example 11.3:       #
## concatenate strings #
########################
'

echo 'hi'' there'
# + doesn't concatenate, it just puts a literal + in the middle
echo 'hi' + ' there'
