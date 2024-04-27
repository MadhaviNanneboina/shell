#!/bin/bash
disk_usage=$(df -hT | grep xfs)
disk_theshould=5
message=""

while IFS= read -r line
do
usage=$(echo $line | awk -F " " '{print $6}' | cut -d "%" -f1)
folder=$(echo $line |awk -F " " '{print $NF}')
if [ $usage -ge $disk_theshould ]
then
#to append results will use + symbol to avoid override
    message+="$folder is more than $disk_theshould , current usage is: $usage \n"
fi
done <<< $disk_usage
echo -e "message is :$message"