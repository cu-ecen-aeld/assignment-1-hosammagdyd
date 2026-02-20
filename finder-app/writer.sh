#!/bin/bash

writefile=$1
writestr=$2

if [ $# -ne 2 ]
then
    echo "Error: Two arguments are required."
    echo "Usage: ./$0 <writefile> <writestr>"
    exit 1
fi

filedir=$(dirname "$writefile")
mkdir -p "$filedir"

if [ $? -ne 0 ]
then
    echo "Error: Could not create directory path '$filedir'."
    exit 1
fi

if ! echo "$writestr" > "$writefile"; then
    echo "Error: Could not create file '$writefile'."
    exit 1
fi

exit 0