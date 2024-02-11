#!/bin/bash

# Search for a pattern within a file
# Searches for occurrences of "error" in the file api_server.log
grep "error" api_server.log

# Search stdin for lines that do match a pattern
# Uses cat to read api_server.log and then searches for occurrences of "error"
cat api_server.log | grep error

# Search pattern in multiple files in the current directory with .txt extension
# Searches for occurrences of "ERROR" in all .txt files in the logs directory
cd logs
grep ERROR *.txt

# Most Important Flags
# Searches for occurrences of "error" in a case-insensitive manner
grep error api_server.log -i

# Invert the match, print all lines where the pattern does not match
grep INFO api_server.log -v

# Search for the whole word "INFO"
grep INFO api_server.log -w

# Show line numbers along with matching lines
grep POST api_server.log -n

# Find file names that match the pattern
grep ERROR *.txt -l

# Recursively searches for occurrences of "ERROR" in files starting from the current directory
grep ERROR -l -R

# Only print the matching part of the line (not the whole line)
grep "Internal Server Error" api_server.log -o

# Count occurrences of "/api/v1/deprecated" in api_server.log
grep "/api/v1/deprecated" api_server.log -c

# Count occurrences of "/api/v1/deprecated" in all .txt files in the logs directory
grep "/api/v1/deprecated" ./logs/*.txt -c

# Interpret the pattern as an extended regular expression
grep -E "user_id=[0-9]{4}" api_server.log

# Matching Words Starting with 'A' or 'B'
grep -E '\b[A-Ba-b]\w+\b' api_server.log

# Match either 400 or 500
grep '400\|500' api_server.log

# Line Context Search
grep POST api_server.log -A 1
grep POST api_server.log -B 1
grep POST api_server.log -C 1

# Real Life Examples
grep -r "getUserById" ./
grep -o -E "User: (\w+) performed action: (\w+)" user_log.log
docker ps | grep -oE '^[0-9a-f]+'

# Advance REGEX Search
grep -E "user_id=[0-9]{4}" api_server.log
grep -E '\b[A-Ba-b]\w+\b' api_server.log
grep '400\|500' api_server.log

# Bonus Tip
# Install and use ripgrep for faster searching
rg <search_pattern> <filename>
