#!/bin/bash

###installing multiple packages by passing arguments

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m]"
Y="\e[33m"
N="\e[0m]"

if [ $USERID -ne 0 ]
then
 echo "please login with root "
 exit 3
 else
 echo "your super user"
fi 

echo "all packages:$@"
