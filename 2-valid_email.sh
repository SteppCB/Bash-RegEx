#!/bin/bash
# Define the input file
input_file="email_list.txt"
# Write a regular expression to match valid email addresses.
email_regex="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"

# Use grep to filter and display valid email addresses using the $email_regex variable
valid_emails=$(grep -E "$email_regex" "$input_file")
valid_email_count=$(echo "$valid_emails" | wc -l)

# Use grep to filter and display invalid email addresses using the $email_regex variable
invalid_emails=$(grep -vE "$email_regex" "$input_file")

echo "Number of valid email addresses: $valid_email_count"
echo "Invalid email addresses: "
echo "$invalid_emails"

