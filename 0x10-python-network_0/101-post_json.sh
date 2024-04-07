#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <URL> <file>"
    exit 1
fi

# Check if the file exists
if [ ! -f "$2" ]; then
    echo "File '$2' does not exist."
    exit 1
fi

# Send the JSON POST request and display the response body
curl -s -X POST -H "Content-Type: application/json" -d "@$2" "$1"
