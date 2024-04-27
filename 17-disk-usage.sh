#!/bin/bash
disk_usage=$(df -hT | grep xfs)
disk_theshould=5

while IFS= read -r line
do
usage=$(echo $line | awk -F " " '{print $6}' | cut -d "%" -f1)
folder=$(echo $line |awk -F " " '{print $NF}')
if [ $usage -ge $disk_theshould ]
then
    echo "$folder is more than $disk_theshould , current usage is $usage"
fi
done <<< $disk_usage