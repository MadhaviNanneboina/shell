#!/bin/bash

#implementing set -e command and trap command
#set command will use to exit script if error occure
#trap command will use where exacltly error happend

set -e

error_handle(){
    echo "error occured line number:$1 command is:$2"

}
trap 'error_handle ${LINENO} "$BASH_COMMAND"' ERR

dnf install mysql-serverr -y
dnf install git -y
