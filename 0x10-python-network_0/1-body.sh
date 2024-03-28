#!/bin/bash
# Bash script to send a GET request to a URL and display the body of the response for a 200 status code

# Check if URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Store the URL from command line argument
url="$1"

# Send a GET request to the URL using curl and display the body of the response for a 200 status code
curl_output=$(curl -s -w "%{http_code}" "$url")

# Extract the HTTP status code from the curl output
http_status=$(echo "$curl_output" | tail -n 1)

# Check if the HTTP status code is 200 (OK)
if [ "$http_status" -eq 200 ]; then
    # Display the body of the response
    echo "Body of the response:"
    echo "$curl_output" | sed '$d'
else
    echo "Error: HTTP status code $http_status"
    exit 1
fi
