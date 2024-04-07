#!/usr/bin/python3
"""
Uses the GitHub API to display your id using Basic Authentication with a personal access token.
"""

import requests
import sys

if __name__ == "__main__":
    username = sys.argv[1]
    password = sys.argv[2]

    url = "https://api.github.com/user"

    response = requests.get(url, auth=(username, password))

    if response.status_code == 200:
        user_info = response.json()
        print(user_info["id"])
    else:
        print("Failed to retrieve user id. Status code:", response.status_code)
