#!/bin/sh

# check to see if two args are passed in
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <filedir> <searchstr>"
    exit 1
fi

# assigning variables
filedir="$1"
searchstr="$2"

# check if dir exists
if [ ! -d "$filedir" ]; then
    echo "Error: The directory '$filedir' does not exist in the filesystem"
    exit 1
fi

grep -r "$searchstr" "$filedir"


