# (GetSquared) Commit Exploit

![N|Solid](https://cdn.discordapp.com/attachments/267395353861554176/281844342723837952/6443k.gif)
![Build Status](https://api.travis-ci.com/NoahBeckerman/GetSquared.svg?branch=master)

GetSquared is a commit cheat that works locally on any machine that can make those lazy white squares #green!

  - Configure it to your needs
  - Run the script on any machine that has it cloned
  - Magic

### Installation

GetSquared requires a system running [Bash], and [Github Terminal] to run.
If you have everything allready installed then you can start with making a directory to host the code on your machine.

```sh
$ cd /Users/USERNAME_HERE/Desktop/GetSquared_Host
$ git clone https://github.com/NoahBeckerman/GetSquared
```

Once you have made a new repo on your GitHub, 
upload the cloned contents from the [GetSquared] host folder you just made to that repo.

After that you delete the cloned repo from [GetSquared], you can clone your new repo with the copied contents to your host machine.

```sh
$ cd /Users/USERNAME_HERE/Desktop/GetSquared_Client
$ git clone https://github.com/YOUR_USERNAME/YOUR_NEW_REPO
```
Next is to navigate to the folder of your new repo you have cloned and goto the `GetSquared.sh`

Now you can run it, and sit back and enjoy some coffee!

If you get a permission error use this to get around it.
```sh
sudo chmod +x ./GetSquared.sh
```



# New Features!

  - Script has a timer to prevent suspicious activity
  - Script works on your local directory to edit files


This script is still in ALPHA and has a long way to go. Idea from [@NoahBeckerman]/[@tzikas].
We are planning to exploit the way potential employers look at us, and be NUMBER 1!

> Most employers today look at your commits to see how active you are.
> This is a bad system, because you cant simply gauge someones skill based on commits.


### Tech

We use Bash, and git terminal to run the script, and push it to the repo(s):

* [Bash] - ;)
* [Github] - You know what this is, right?
* [Github Terminal] - You should know this one too.

### Todos

 - Make a user input for how many times they want a commit pushed
 - Make a user input for how fast they want the timer(Max time is 2 seconds a commit)
 - Make a auto pull feature to anyone who has the script on a private repo 
 - Make a auto accept feature to anyone who makes a pull request(So more commits for everybody!!!!)

License
----

MIT

[Bash]: https://www.gnu.org/software/bash/
[Github]: https://github.com
[Github Terminal]: https://git-scm.com/downloads
[GetSquared]: https://github.com/NoahBeckerman/GetSquared
[@tzikas]: https://github.com/Tzikas
[@NoahBeckerman]: https://github.com/NoahBeckerman