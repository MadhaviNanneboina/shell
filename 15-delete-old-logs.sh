source_directory=/tmp/app-logs


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

FILES=$(find $source_directory -name "*.log" -mtime +14)
#echo "files to delete:$FILES"

while IFS read -r line
do 
echo "deleting files:$line"
rm -rf $line

done <<<$FILE
