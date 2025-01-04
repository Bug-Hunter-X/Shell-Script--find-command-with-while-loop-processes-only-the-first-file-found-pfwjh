# Shell Script Bug: find with while loop processes only the first file

This repository demonstrates a common but subtle bug in shell scripts using the `find` command with a `while` loop. The script intends to process all files in the current directory, but due to an incorrect loop structure, it only processes the first file found.

## Bug Description

The `while` loop is prematurely terminated by a `break` statement, preventing it from iterating through all files returned by `find`.  This is a frequently encountered issue when working with `find` and loops in shell scripts.

## Bug Solution

The solution involves restructuring the loop to correctly iterate through all files. The `break` statement should be removed.

## How to reproduce

1. Create a few files in the directory with the script. For example, you can create file1.txt, file2.txt, and file3.txt.
2. Run the script. You will observe that only the first file in the output of the `find` command is processed.
3. Replace the buggy script with the corrected one.
4. Run the corrected script to see that all files are processed correctly. 
