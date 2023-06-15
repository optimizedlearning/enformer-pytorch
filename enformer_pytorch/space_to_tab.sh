#!/bin/bash

#check if the file name is provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
  echo "File not found: $1"
  exit 1
fi

# Create a temporary file for storing the modified content
temp_file=$(mktemp)

# Replace every sequence of four spaces with a tab and save it to the temporary file
expand -t 4 "$filename" > "$tempfile"

# Overwrite the original file with the modified content
mv "$temp_file" "$1"

echo "Replacement complete."
