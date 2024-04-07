#!/usr/bin/python3
"""
Sends a request to a URL and displays the body of the response (decoded in utf-8).
Handles urllib.error.HTTPError exceptions and prints the HTTP status code.
"""

import urllib.request
import urllib.error
import sys

if __name__ == "__main__":
    url = sys.argv[1]

    try:
        with urllib.request.urlopen(url) as response:
            html = response.read().decode("utf-8")
            print(html)
    except urllib.error.HTTPError as e:
        print("Error code:", e.code)
