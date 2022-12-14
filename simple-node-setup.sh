#!/usr/bin/env bash
# This make the script take an argument/parameter
# This is the directory name
# It will also be used for the files name
dirName="$1";

# Create a directory using this name
mkdir -p "$dirName"

# Change directory and go inside the diretory created
cd "$dirName"

# Create the JS file in the given directory
touch "$dirName".js