#!/bin/bash
### installing mysql
#*steps to instal mysql*
#*check wheather the user is super user or not
#check the every command is eexecuting or not
#if any command fail we shell should exit the program
#we should check every command status

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo  "please login as super user"
    Exit 5   #manually exit if error comes
else 
    echo  "you are super user"
    
fi

####installing mysql

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "installation is failure"
    Exit 2
else
    echo "installation is successful"
    
fi   

######installing git

dnf install git -y

if [ $? -ne 0 ]
then
    echo "installation is failure"
    Exit 2
else
    echo "installation is successful"
    
fi   

######for every command in shell script we have to check wheather the command was successfully installed or not
