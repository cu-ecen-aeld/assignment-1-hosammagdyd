#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -ne 2 ]; then
    echo "Error: Two arguments are required."
    echo "Usage: ./finder.sh <filesdir> <searchstr>"
    exit 1
fi

if [ ! -d "$filesdir" ]
then 
    echo "$filesdir does not represent a directory on the file system!"
    exit 1
fi

if [ -z "$searchstr" ]
then 
    echo "$searchstr does not represent a string"
    exit 1
fi

X=$(find "$filesdir" -type f | wc -l)
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"