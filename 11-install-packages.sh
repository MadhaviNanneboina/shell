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
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2.....$R FAILURE $N"
        exit 2
    else
        echo -e "$2......$G SUCCESS $N"
    fi
}
echo "all packages:$@"
for i in $@
do
echo "package to install:$i"
dnf list installed $i &>>$LOGFILE
if [ $? -eq 0 ]
then 
    echo -e "package already installed...... $Y SKIPPING $N"
else
    dnf install $i -y &>>$LOGFILE
    VALIDATE $?  "$i package installed "
fi
done