# (GetSquared) Commit Exploit
### An idea created on freetime @Ironhack
##### Please fork the repo and tell me what you think!


----

![N|Solid](https://i.imgur.com/nf2ASLq.png)
![Build Status](https://api.travis-ci.com/NoahBeckerman/GetSquared.svg?branch=master)

GetSquared is a commit cheat that works locally on any machine that can make those lazy white squares #green!

  - Configure it to your needs
  - Run the script on any machine that has it cloned
  - Magic

### Installation
>!!! Warning !!!
> 1) You might need to create a GitHub OAUTH token because of security reasons.
> 1.a) Check [Here](https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line) for a guide on how to create one.
 > 2) You need to copy the contents of my repo to a new repo you have made,
 > or it will not work.
 > 2.a)(YOU CANT PUSH TO THE FORKED ONE!!!!)
 > 2.b)The principle is that you commit to your own repo once you have cloned it...
 
 

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


This script is still in ALPHA and has a long way to go. Idea from [@NoahBeckerman]/[@tzikas]/[@gtxsy].
We are planning to exploit the way potential employers look at us, and be NUMBER 1!

> Most employers today look at your commits to see how active you are.
> This is a bad system, because you cant simply gauge someones skill based on commits.


### Tech

We use Bash, and git terminal to run the script, and push it to the repo(s):

* [Bash] - ;)
* [Github] - You know what this is, right?
* [Github Terminal] - You should know this one too.

### Todos
 - Automate the script so it screens the forks of the master repo and creates pull request for all forked users repos
 - Make a auto accept feature to anyone who makes a pull request(So more commits for everybody!!!!)

License
----
MIT

[Bash]: https://www.gnu.org/software/bash/
[Github]: https://github.com
[Github Terminal]: https://git-scm.com/downloads
[GetSquared]: https://github.com/NoahBeckerman/GetSquared
[@tzikas]: https://github.com/Tzikas
[@gtxsy]: https://github.com/gtxsy
[@NoahBeckerman]: https://github.com/NoahBeckerman