#!/bin/bash

# Define the file path
file="/home/ec2-user/shell/19-assignment-file"

# Read the file, convert all text to lowercase, and split words
# Then, count the occurrences of each word, sort them, and display the top 5 frequent words
cat "$file" | tr -s '[:space:]' '\n' | tr '[:upper:]' '[:lower:]' | grep -v '^\s*$' | sort | uniq -c | sort -nr | head -5
