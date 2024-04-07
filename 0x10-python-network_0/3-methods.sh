#!/bin/bash
# Bash script to display all HTTP methods the server will accept for a given URL

# Check if URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Store the URL from command line argument
url="$1"

# Send a request to the URL using curl with the OPTIONS method and display the allowed HTTP methods
allowed_methods=$(curl -s -X OPTIONS -I "$url" | grep -i "allow" | awk '{print $2}')

# Check if allowed_methods is empty
if [ -z "$allowed_methods" ]; then
    echo "Error: Unable to retrieve allowed HTTP methods"
    exit 1
fi

# Display the allowed HTTP methods
echo "Allowed HTTP methods for $url: $allowed_methods"
