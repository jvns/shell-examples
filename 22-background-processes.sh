echo '
######################################################
## Example 22.1:                                     #
## `wait` waits for all background processes to finish #
######################################################
'

sleep 2 &
sleep 1 &
sleep 1 &
sleep 1 &
sleep 2 &
# this waits for all `sleep` processes to finish
# (it takes 2 seconds, not 7 seconds, because they all run at the same time)
wait

