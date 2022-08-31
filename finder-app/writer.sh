#!/bin/bash

# AESD Assignment 1 
# Author: Gautama Gandhi
# Description: This file is the writer.sh

#Check number of arguments
if [ $# -ne 2 ]
then
    echo "Invalid number of arguments. Expected 2!"
    exit 1
fi

file_path=$1
writestr=$2

#Variable to hold directory name
directory=$(dirname "${file_path}")

#Creating directory and writing string to specified file
mkdir -p "${directory}" && echo "${writestr}" > $file_path

#Check if file_path is invalid

if [ ! -f "$file_path" ]
then
    echo "File could not be created."
    exit 1
fi

exit 0
