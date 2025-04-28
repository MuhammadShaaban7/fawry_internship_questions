# Q1: Custom Grep Command (mygrep.sh)

## Overview
This directory contains the solution for the first task of the Fawry Internship Questions. 
The task was to create a shell script mygrep.sh that does the same of the grep command with specific requirements:
- Search for a string in a file (case-insensitive).
- Support two options: -n (show line numbers) and -v (invert match).
- The script should handle combinations of options like -vn

## Files
- mygrep.sh: The shell script that implements the custom grep functionality.
- testfile.txt: A sample file used to test the script.
- reflection.txt: A file containing the reflection section, discussing the script's implementation, challenges, and potential improvements.
- screenshots directory: contains some screenshots showing the outputs
## How to Run the Script
1. Make sure the script is executable:
	chmod +x mygrep.sh
2. Run the script with the following syntax:
	./mygrep.sh [options] search_string file_name
- options: Can be -n (show line numbers), -v (invert match), or a 
combination like -vn.
- search_string: The string to search for (case-insensitive).
- file_name: The file to search in (e.g., testfile.txt).

### Examples
- Search for "hello" in testfile.txt (case-insensitive):
