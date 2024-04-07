#!/bin/bash
# This script takes a URL as an argument, sends a request to that URL using curl in silent mode, and displays the size of the response body in bytes
curl -s -w "%{size_download}" -o /dev/null "$1"
