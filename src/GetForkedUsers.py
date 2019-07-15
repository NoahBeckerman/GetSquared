#!/usr/bin/python
# -*- coding: utf-8 -*-
import os
import sys
import json
import requests
import pandas as pd
import getpass
import git

gh_session = requests.Session()

username = getpass.getpass(prompt='Username: ', stream=None)
token = getpass.getpass(prompt='Token: ', stream=None)

gh_session.auth = (username, token)
json_req = gh_session.get('https://api.github.com/repos/NoahBeckerman/GetSquared/forks')


users = []

for x in range(len(json_req.json())):
    users.append(json_req.json()[x]['owner']['login'])
    if not os.path.exists(fork_dir):
        os.makedirs(fork_dir)
    git.Git('./' + [x]).clone('https://github.com/' + [x] + '/GetSquared')

exit(users)