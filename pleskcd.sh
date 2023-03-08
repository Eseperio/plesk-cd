#!/bin/bash

# Verify that a parameter was provided
if [ -z "$1" ]; then
    echo "ERROR: A domain name must be provided as a parameter."
    exit 1
fi

# Remove leading and trailing whitespace from the parameter value
domain=$(echo $1 | xargs)

# Build the directory path
path="/var/www/vhosts/$domain/httpdocs"

# Check if the directory exists
if [ ! -d "$path" ]; then
    echo "ERROR: Directory not found: $path"
    exit 1
fi

# Change to the directory
cd "$path"

# Display a confirmation message in yellow text
tput setaf 3
echo "Moved to directory: $(pwd)"
tput sgr0
