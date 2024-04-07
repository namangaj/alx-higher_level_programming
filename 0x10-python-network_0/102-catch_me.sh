#!/bin/bash
# Bash script to make a request to 0.0.0.0:5000/catch_me and cause the server to respond with "You got me!" in the body of the response

# Send a request to 0.0.0.0:5000/catch_me with a custom header using curl
curl -s -X PUT -L -d "user_id=98" -H "Origin: HolbertonSchool" 0.0.0.0:5000/catch_me
