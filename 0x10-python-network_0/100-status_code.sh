#!/bin/bash
# Bash script to send a request to a URL and display only the status code of the response

# Check if URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Store the URL from command line argument
url="$1"

# Send a request to the URL using curl and display only the status code of the response
curl -s -o /dev/null -w "%{http_code}" "$url"
