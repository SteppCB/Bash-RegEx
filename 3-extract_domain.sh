#!/bin/bash
# Define the input file
input_file="email_list.txt"

# Use sed to extract and display domain names, ensuring they follow proper formats
DOMAINS=$(sed -E 's/^[^@]+@(.+)$/\1/' "$input_file" | grep -E "^[a-zA-Z0-9]+([-.][a-zA-Z0-9]+)*\.[a-zA-Z]{2,}$" | sort -u)

# Sort the domain list and display only unique domain names
echo "$DOMAINS"
