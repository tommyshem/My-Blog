+++
title = "Enable Sudoers"
date = "2019-12-28T21:00:00"
tags = ["linux", "sudo"]
categories = ["Linux Notes"]
banner = "images/blog/Linux-Hosting-long.png"
+++


# Enable sudoers Notes  

## Settings

Open settings.

```bash
visudo
```

Uncomment the wheel group, this allows all users in the wheel group to run all commands.

```bash
%wheel ALL=(ALL) ALL
```

## Add user

Add user to the wheel group, change userName to the user name you require.

```bash
useradd -m -G wheel -s /bin/bash userName
```

## Protect the user account with a password

```bash
passwd userName
```

## Adding a system user

```bash
useradd -r -s /usr/bin/nologin userName
```

## Changing user login names

```bash
usermod -l userNewName userOldName
```

## Changing user's home dir

```bash
usermod -d /new/home/dir -m userName
```

## Test if sudo works by entering the command

```bash
sudo whoami
```

If you get something like this (below), then sudo is working for the set account.

```
We trust you have received the usual lecture from the local System
Administrator. It usually boils down to these three things:

    #1) Respect the privacy of others.
    #2) Think before you type.
    #3) With great power comes great responsibility.
```
