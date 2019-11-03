+++
title = "Swift GTK+3"
date = "2018-03-04T17:30:00"
tags = ["gtk","swift"]
categories = ["gtk"]
banner = "images/blog/vscode-debug-screen.png"
+++

## Setup using docker to compile code on linux as not using Ubuntu as operating system.

Install docker on your linux system by the normal way.

Go to docker hub, Swift Image web address https://hub.docker.com/_/swift/ for for info.

Download the Swift docker image from docker hub from the terminal. Using the command below.
```bash
sudo docker pull swift
```

Create the swift docker container from the `Image` and `Attach it`, the name (swiftfun) can be changed to anything you want to.
```bash
sudo docker run  -it --name swiftfun swift /bin/bash
```

To Start and Attach Your Image Later:
Start your image with the name you used, the above example uses swiftfun 
```bash
sudo docker start swiftfun
```
and then attach it
```bash
sudo docker attach swiftfun
```

## Compile yor code inside the Docker container

```bash
sudo docker run --rm --user "$(id -u)":"$(id -g)" -v "$PWD":/usr/src/myapp -w /usr/src/myapp swift:latest swift build
```
this will compile your code in the current directory and put the build files in the same directory.
## Swift code for Gtk3 Application


