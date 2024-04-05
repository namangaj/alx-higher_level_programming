#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send request to URL using curl and save response body to a temporary file
response=$(curl -s -o /tmp/response_body "$1")

# Check if curl command was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to retrieve response from $1"
    exit 1
fi

# Get size of response body in bytes
size=$(stat -c %s /tmp/response_body)

# Display size of response body
echo "Size of response body: $size bytes"

# Clean up temporary file
rm -f /tmp/response_body
