#!/bin/bash
USER="this is madhavi i am devops engineer"

echo "before calling other script current script:$USER"
echo "process id of current script:$$"

#calling other script from our script 
#by using ./
#./13-other-shell.sh

#by using source
source ./13-other-shell.sh
echo "after calling other script:$USER"