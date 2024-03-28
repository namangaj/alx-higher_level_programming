#!/bin/bash
# Bash script to send a DELETE request to a URL and display the body of the response

# Check if URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Store the URL from command line argument
url="$1"

# Send a DELETE request to the URL using curl and display the body of the response
curl_output=$(curl -s -X DELETE "$url")

# Display the body of the response
echo "Body of the response:"
echo "$curl_output"
