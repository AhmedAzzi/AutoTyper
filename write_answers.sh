#!/bin/bash

# Check if the user provided an input file as an argument
if [ $# -eq 0 ]; then
  input_file="answers.txt"
  echo "No file specified. Using default: $input_file"
else
  input_file=$1
fi

# Check if the specified file exists
if [ ! -f "$input_file" ]; then
  echo "Error: File '$input_file' not found. Please provide a valid file."
  exit 1
fi

# Wait 5 seconds to give time to focus on the input field
sleep 5

# Read answers from the file and type them
while IFS= read -r line || [ -n "$line" ]; do
  if [ -z "$line" ]; then
    # Add a blank line (simulate pressing Enter twice)
    xdotool key Return Return
    sleep 5
  else
    # Type the answer
    xdotool type "$line"
  fi

done < "$input_file"

# Add a final blank line
xdotool key Return Return
