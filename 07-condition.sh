#!/bin/bash
echo "enter your number:"
 read X

if [ $((X%2)) -eq 0 ]
then 
    echo "$X is even number"
else
    echo "$X is odd number"
fi            