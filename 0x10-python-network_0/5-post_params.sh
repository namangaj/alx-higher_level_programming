#!/bin/bash
# Bash script to send a POST request to a URL with specified variables and display the body of the response

# Check if URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Store the URL from command line argument
url="$1"

# Variables to be sent in the POST request
email="test@gmail.com"
subject="I will always be here for PLD"

# Send a POST request to the URL with the specified variables using curl and display the body of the response
curl_output=$(curl -s -X POST -d "email=$email&subject=$subject" "$url")

# Display the body of the response
echo "Body of the response:"
echo "$curl_output"
