#!/bin/sh

# check to see if two args are passed in
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <filedir> <searchstr>"
    exit 1
fi

# assigning variables
filedir="$1"
searchstr="$2"

filepath=$(find "$filedir" -type f)

files(){
    echo "$filepath" | wc -l
}

lines() {
    echo "$filepath" |xargs cat|grep -c "$searchstr"
}

echo "The number of files are $(files) and the number of matching lines are $(lines)"

