# Here are a few examples of things that are different between zsh and bash

echo "
#########################################################
## zsh example 1:                                       #
## you don't need to put quotes around variables in zsh #
#########################################################
"

filename='files/filename with spaces'

# this works in zsh but not in bash
cat $filename

echo "
#######################################
## zsh example 2:                     #
## 'which' is a shell builtin in zsh, #
## in bash it's /usr/bin/which        #
#######################################
"

# outputs /usr/bin/[ in bash, and 'shell builtin' in zsh
# even though in both bash and zsh [ is a shell builtin
which which

echo "
######################################
## zsh example 3:                    #
## you can't run '/usr/bin/[' in zsh #
######################################
"

# this works in bash, but is a syntax error in zsh
/usr/bin/[ -e files/lines.txt ]
