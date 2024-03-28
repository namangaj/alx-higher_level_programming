#!/bin/bash
# Bash script to send a GET request to a URL with a custom header and display the body of the response

# Check if URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Store the URL from command line argument
url="$1"

# Set custom header for X-School-User-Id
header="X-School-User-Id: 98"

# Send a GET request to the URL with the custom header using curl and display the body of the response
curl_output=$(curl -s -H "$header" "$url")

# Display the body of the response
echo "Body of the response:"
echo "$curl_output"
