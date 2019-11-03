+++
title = "Git clear local and remote repo and start over"
date = "2019-11-03T15:30:00"
tags = ["github","git"]
categories = ["github"]
banner = "images/blog/gitflow.png"
+++

## Git clear local and remote repo and start over

Create a new folder and copy the files you need if any into the new folder.

Example below with no files

```bash
mkdir project-name-here
cd project-name-here
git init
git remote add origin git@github.com:user/project-here.git
git add .
git commit -m "Initial commit"
git push -u origin master --force
```

You can clone the repo and delete `.git` folder so there is no commit history on local copy and github repo.

```bash
git clone git@github.com:user/project-here.git
cd project-name-here
rm .git -rf
git init
git remote add origin git@github.com:user/project-here.git
git add .
git commit -m "Initial commit"
git push -u origin master --force
```
