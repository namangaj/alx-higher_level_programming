#!/bin/bash

# Check if URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Store the URL from command line argument
URL=$1

# Send a request to the URL using curl and store the response body in a variable
response=$(curl -sI "$URL" | grep -i "content-length" | awk '{print $2}')

# Check if the response is empty
if [ -z "$response" ]; then
    echo "Error: Unable to retrieve content length"
    exit 1
fi

# Display the size of the response body in bytes
echo "Size of the response body: $response bytes"
