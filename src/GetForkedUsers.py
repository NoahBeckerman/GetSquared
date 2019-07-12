import sys, json, requests, pandas as pd
username = 'NoahBeckerman'
gh_session = requests.Session()
gh_session.auth = (username, 'ded6b89bfacc7bc6cb78b9cfd97333c165323300')
json_req = gh_session.get('https://api.github.com/repos/NoahBeckerman/GetSquared/forks')
users = []

for x in range(len(json_req.json())):
	users.append(json_req.json()[1]['owner']['login'])

exit(users)