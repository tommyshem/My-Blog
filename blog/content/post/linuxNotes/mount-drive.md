+++
title = "How to Mount a drive on linux"
date = "2018-01-28T21:00:00"
tags = ["mount", "drive"]
categories = ["Linux Notes"]
banner = "images/blog/Linux-Hosting-long.png"
+++

## Mount drive

Find device you want to mount

```bash
fdisk -l
```

Make a folder that will be the mount point.

Example using data as the mount point

```bash
sudo mkdir /home/yourusernamehere/data
```

Mount the device drive, example using /dev/sdb1. Use the one you need to mount

```bash
sudo mount /dev/sdb1 /home/yourusernamehere/data
```

Now you can access the drive at /media/data.

## Auto-mount at boot

We want the drive to auto-mount at boot.  

This means editing /etc/fstab.

It's best to use the drives UUID. 
To find the drive's UUID 

```bash
ls -al /dev/disk/by-uuid/
```

Copy UUID for your disk and then open /etc/fstab for editing, I am using the micro editor.

```bash
sudo micro /etc/fstab
```

You want to add an entry for the UUID and mount point.  
Add the entry to bottom of the file:

```bash
# <file system>           <mount point>                  <type>  <options>       <dump>  <pass>
UUID=3276-762376-7625676  /home/yourusernamehere/data     ext4    defaults        0       2
```

## Test /etc/fstab

We always want to test the fstab before rebooting.

A incorrect fstab file can render a disk unbootable.

Run command below to test loading /etc/fstab file

```bash
sudo mount -a
```

If no errors are returned, then it should be safe to reboot.

## Unmounting drive

You can unmount drives using umount.
To unmount the example we did above in the mounting section.

```bash
sudo umount /home/yourusernamehere/data
```

## Mount is Root and not user

If it is mounted as root, then you will have to change the ownership of the folder.

```bash
chown <username> /home/yourusernamehere/data 
chmod 0777 /home/yourusernamehere/data
```
