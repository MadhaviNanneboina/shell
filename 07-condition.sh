#!/bin/bash
echo "enter your number:"
 read X

if [ $((X%2)) -eq 0 ]
then 
    echo "$X is even number"
else
    echo "$X is odd number"
fi            

NUMBER=$1

 
if [ $NUMBER -gt 5 ]
then
    echo "given number is  greater than 5"
else
    echo "given number is lessthan 5"
fi
