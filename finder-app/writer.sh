#!/bin/sh

# make sure there are two arguements
if [ "$#" -ne 2 ]; then
    echo "Usage $0 <filedir> <string>"
    exit 1
fi

# variables
writedir="$1"
string="$2"

# create file if it doesn't exist
# extract the dir first
dir_path=$(dirname "$writedir")
mkdir -p "$dir_path"

if [ $? -ne 0 ]; then
    echo "Error: creating dir failed"
    exit 1
fi

# create file
touch "$writedir"

if [ $? -ne 0 ]; then
    echo "Error: creating file failed"
    exit 1
fi

# write/overwrite to file
echo "$string" > "$writedir"

if [ $? -ne 0 ]; then
    echo "Writing to file failed"
    exit 1
fi

# check if file is create successfully
if [ $? -ne 0 ]; then
    echo "Error: could not create and write to '$writedir'."
    exit 1
fi

echo "File '$writedir' created successfully with the content."