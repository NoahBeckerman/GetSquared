import sys, json, requests, pandas as pd, getpass
username = 'NoahBeckerman'
gh_session = requests.Session()
token = getpass.getpass(prompt='Token: ', stream=None)
gh_session.auth = (username, token)
json_req = gh_session.get('https://api.github.com/repos/NoahBeckerman/GetSquared/forks')
users = []

for x in range(len(json_req.json())):
	users.append(json_req.json()[x]['owner']['login'])

exit(users)