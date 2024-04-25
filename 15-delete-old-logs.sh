source_directory=/tmp/appop-logs


#colors
B="\e[30m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ -d $source_directory ]
then
    echo -e "$G source directory is exist $N"
else
    echo -e "$R make sure $source_directory exists $N"
    exit 3
fi
