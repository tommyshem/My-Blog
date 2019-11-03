+++
title = "Docker Notes"
date = "2018-08-12T21:00:00+02:00"
tags = ["docker"]
categories = ["docker"]
banner = "images/blog/finder.png"
+++

# Docker Notes

## Start docker daemon manualy

```bash
sudo dockerd
```

## Start daemon with systemd when docker is installed for the first time

```bash
sudo systemctl start docker
```

## check docker is running

```bash
docker info
```

## Restart docker daemon

```bash
sudo systemctl restart docker
```

# run docker without sudo

Warning security attack can be done if you do the following see website

<https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user>

To create the docker group and add your user:

Create the docker group.

```bash
sudo groupadd docker
```

Add your user to the docker group.

```bash
sudo usermod -aG docker $USER
```


# Run with shared folder inside the container.
Example below.

 
```bash
docker run -it \
		   --volume=/home/test/docker-workspace/testproject:/testproject \
		   --name testingcontainer \
		   fedora/gjs:latest \
	       bash

```

Line 1 = docker command run in interactive mode.

Line 2 = share folder `/home/docker-workspace/testproject` on your computer,
 to /testproject inside the container.

Line 3 = Name of the container you want.

Line 4 = Which docker image to use
 
Line 5 = run bash when in the container

# Run commands as root inside container

To run as root in a running container, run the command below.
Change the dockerid to the dockerid of the container you want to connect to.

```bash
docker exec -it --user=root dockerid bash
```

You are can now run root commands inside the dockker container.
