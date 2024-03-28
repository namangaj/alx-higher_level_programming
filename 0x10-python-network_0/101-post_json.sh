#!/bin/bash
# Bash script to send a JSON POST request to a URL and display the body of the response

# Check if URL and file arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <URL> <JSON_FILE>"
    exit 1
fi

# Store the URL and JSON file from command line arguments
url="$1"
json_file="$2"

# Check if JSON file exists
if [ ! -f "$json_file" ]; then
    echo "Error: JSON file '$json_file' not found"
    exit 1
fi

# Send a JSON POST request to the URL with the contents of the JSON file in the body using curl
curl_output=$(curl -s -X POST -H "Content-Type: application/json" -d "@$json_file" "$url")

# Display the body of the response
echo "Body of the response:"
echo "$curl_output"
