#!/usr/bin/python3
"""
Fetches http://0.0.0.0:5050/status and displays the body of the response
"""

import urllib.request

if __name__ == "__main__":
    url = "http://0.0.0.0:5050/status"
    req = urllib.request.Request(url)
    with urllib.request.urlopen(req) as response:
        html = response.read()
        utf8_content = html.decode("utf-8")
        print("Body response:")
        print("\t- type: {}".format(type(html)))
        print("\t- content: {}".format(html))
        print("\t- utf8 content: {}".format(utf8_content))
