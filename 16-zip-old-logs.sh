#!/bin/bash
set -e
error_handle(){
    echo "error occured line number:$1 command is:$2"

}
trap 'error_handle ${LINENO} "$BASH_COMMAND"' ERR


#source directory
Source_directory="/tmp/app-logs"

#destination path
denstnation_server="ec2-user@ip-172-31-17-96:/tmp/log-files"



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

# Find files older than 15 days
old_logs=$(find "$Source_directory" -name "*.log" -mtime +14)

# Zip old log files
if [ -n "$old_logs" ]
then
    zip "$Source_directory/old_logs.zip" $old_logs

    # Check if zip was successful
    if [ $? -eq 0 ] 
    then
        echo "Old log files zipped successfully."
        # Transfer zip file to another server
        scp "$Source_directory/old_logs.zip" "$denstnation_server"
        # Check if transfer was successful
        if [ $? -eq 0 ]; then
            echo "Zip file transferred successfully to $destination_server."
            # Remove original log files after successful transfer
            rm $old_logs
            echo "Original log files removed."
        else
            echo "Error: Failed to transfer zip file to $destination_server."
        fi
    else
        echo "Error: Failed to zip old log files."
    fi
else
    echo "No old log files found."
fi