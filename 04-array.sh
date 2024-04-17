#!/bin/bash
### declaring the list of array
DAYS=("sunday" "monday" "twesday" "thrusday" "friday" "saturday")
#####size of array starts with 1
###here array size is 6
###index of array start with 0
####here index of array is 5
echo "first day is:${DAYS[1]}"

echo "second day is:${DAYS[2]}"

echo "third day is:${DAYS[3]}"

echo "fourth day is:${DAYS[4]}"

echo "fifth day is:${DAYS[5]}"

echo "total days are:${DAYS[@]}"
