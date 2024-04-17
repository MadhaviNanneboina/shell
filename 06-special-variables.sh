#!/bin/bash
echo "All variables:$@"
echo "to know number of variables passed:$#"
echo "to know home directory of current user:$HOME"
echo "to know present working directory:$PWD"
echo "to know script name: $0"
echo "to know which user is running this script:$USER"
echo "to know host name:$HOSTNAME"
echo "to know process id of current shell script:$$"
 ##sleep 60 #### the script will run intil 60 sec afterthat it will exit
###to come out from sleep mode press & it will come back from sleep
echo "to know process id of last background command:$!"

