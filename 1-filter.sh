#!/bin/bash
# Define the input file
input_file="email_list.txt"
# Use grep to filter and display email addresses ending with "@gmail.com"
grep -E "[a-zA-Z0-9._%+-]+@gmail\.com$" "$input_file"

