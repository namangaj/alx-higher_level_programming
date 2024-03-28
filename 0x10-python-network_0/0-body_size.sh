#!/bin/bash
# Bash script to get the size of the response body of a given URL using curl

# Check if URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <https://www.uon.ac.ke/>"
    exit 1
fi

# Store the URL from command line argument
url="$1"

# Send a request to the URL using curl and store the response body in a variable
response_body=$(curl -sI "$url" | grep -i "content-length" | awk '{print $2}')

# Check if the response body size is empty
if [ -z "$response_body" ]; then
    echo "Error: Unable to retrieve content length"
    exit 1
fi

# Display the size of the response body in bytes
echo "Size of the response body: $response_body bytes"
