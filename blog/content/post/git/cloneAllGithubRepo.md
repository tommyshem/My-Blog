+++
title = "Clone all my github repositories in to current directory."
date = "2018-03-13T15:15:30"
tags = ["github"]
categories = ["github"]
banner = ""
+++

## Clone all my Github repositories in to the current directory with one bash line.

```bash
curl -s https://api.github.com/users/tommyshem/repos | grep \"clone_url\" | awk '{print $2}' | sed -e 's/"//g' -e 's/,//g' | xargs -n1 git clone
```

or you can use this one if jq command is installed on your system

```bash
curl -s https://api.github.com/users/tommyshem/repos | jq .[].clone_url | xargs -n1 git clone
```
