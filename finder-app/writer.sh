#!/bin/sh

# make sure there are two arguements
if [ "$#" -ne 2 ]; then
    echo "Usage $0 <filedir> <string>"
    exit 1
fi

# variables
writedir="$1"
string="$2"

# create dir if it doesn't ecist
mkdir -p "$(writedir "$string")"

# write/overwrite to file
echo "$string" > "$writedir"

# check if file is create successfully
if [ $? -ne 0 ]; then
    echo "Error: could not create and write to '$writedir'."
    exit 1
fi

echo "File '$writedir' created successfully with the content."