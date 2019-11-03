+++
title = "Android Termux Notes"
date = "2018-08-29T12:00:00+02:00"
tags = ["termux terminal"]
categories = ["Android"]
banner = "images/blog/Termux-Screenshot.png"
+++

## Termux on Github

Termux github website <https://github.com/termux>

Termux github packages <https://github.com/termux/termux-packages/>

Termux building packages with docker <https://github.com/termux/termux-packages/blob/master/README.md>

## Install Termux

Go to Play store and install from there or go to the temux website <https://termux.com> for different install methods.

Termux Wiki page <https://wiki.termux.com/wiki/Main_Page> for more information.

Add repos from the Community Repositories <https://wiki.termux.com/wiki/Package_Management#its-pointless_.28live_the_dream.29>

## Updating Packages on your device

You will need to update the repo database and the upgrade any packages which need updating before you can start using the package manager.

```bash
pkg update
pkg upgrade
```

## Getting a list of all packages which can be installed on to your device

```bash
pkg list-all
```

## Installing new packages

Install package on to the device with the command below just change the name of the packagenamehere to the package you want to install.

```bash
pkg install packagenamehere
```

## List installed packages on the device

```bash
pkg list-installed
```

## Remove package from the device

```bash
pkg uninstall packagenamehere
```

## Add repo below and rust and cargo packages will be added to package list

```bash
pkg install wget
wget https://its-pointless.github.io/setup-pointless-repo.sh
bash setup-pointless-repo.sh
```

## To access external storage you need to type in the below command in termux terminal

```bash
termux-setup-storage
```

A dialog box will popup and prompting you to allow access, to the external card data.

This will give permission to termux to use the external storage through `~/storage/external-1`

This only has to be done once.

### Note external storage can only be used for files and images which dont need to be run as a command as no file attributes

### As it is not ext4 formated and protected by android

install full linux distro in termux following instructions on this github page <https://github.com/YadominJinta/atilo>
github website <https://github.com/YadominJinta/atilo>
