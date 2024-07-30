#!/usr/bin/python3


import json
import requests
import sys

if __name__ == "__main__":
    # Get the employee ID from the command-line argument
    user_id = sys.argv[1]
    
    url = "https://jsonplaceholder.typicode.com/"
    user = requests.get(url + "users/{}".format(user_id)).json()
    username = user.get("username")

    params = {"userId": user_id}
    todos = requests.get(url + "todos", params).json()
    data_to_export = {
            user_id: [
                {
                     "task": todo.get("title"),
                     "completed": todo.get("completed"),
                     "username": username
                }
                for todo in todos
            ]
        }
