#!/bin/bash

# This script attempts to process files in a directory, but it has a subtle bug.
# It uses a loop that only iterates over the first file found.

find . -maxdepth 1 -type f -print0 | while IFS= read -r -d $'\0' file; do
  echo "Processing: $file"
  # ... process the file ...
  break #This line is the bug. The loop is terminated after processing the first file
done