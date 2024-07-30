#!/usr/bin/python3
"""
#Using what you did in the task #0, extend your Python script to export data in the CSV format.
"""

import requests
import sys
import csv

if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com/"

    user_id = sys.argv[1]
    user_resp = requests.get(url + "users/{}".format(user_id))
    user = user_resp.json()
    username = user.get("username")
    
    params = {"user_id": user_id}
    todos_resp = requests.get(url + "todos", params=params)
    todos = todos_resp.json()

    with open("{}.csv".format(user_id), "w", newline="") as csvfile:
        writer = csv.writer(csvfile, quoting=csv.QUOTE_ALL)

        for todo in todos:
            writer.writerow([user_id, username, todo.get("completed"), todo.get("title")])
