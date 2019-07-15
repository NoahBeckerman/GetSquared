import os, sys, json, requests, pandas as pd, getpass, git

github_clone_url = 'https://github.com/[x]/GetSquared'
fork_dir = ('./' + [x])

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
		git.Git(fork_dir).clone(github_clone_url)

exit(users)