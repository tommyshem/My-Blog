+++
title = "Compression"
date = 2020-01-07T15:27:08Z
tags = ["linux","compression"]
categories = ["linuxNotes"]
description = "Compression Notes"
banner = ""
+++

# Compression Notes

I tested 7z command it works fast but when testing it did not save user name.

But it is still ok for backing up your own files.

You can add and remove files from the compressed file

Below command used.

## Compress all current folders and files

```bash
7z a filenamehere.7z ./
```
## Decompress 

```bash
7z e filenamehere.7z
```

## list files in compressed file

```bash
7z l filenamehere.7z
```

## Mount image

```bash
fuse-7z-ng files.7z /media/my_compressed_files
```

# Tested tar with new compression zstd from facebook

Note need sudo for root files to be copied

## Compress all folders and files in current location

```bash
sudo tar --zstd -cvf filenamehere.tar.zstd ./
```

## Decompress all folders and files in cureent location

Note need sudo to create root files on extraction 

```bash
sudo tar --zstd -xvf filenamehere.tar.zst
```

## Decompress all folders and files in a different location

```bash
sudo tar --zstd -xvf filenamehere.tar.zst -C /foldernamehere
```

## List files and folders

```bash
sudo tar --zstd --list --verbose --file=filenamehere.tar.zst
```

Parameters:

        --zstd           use zstd compression on files

    -t, --list           list the contents of an archive

    -v, --verbose        verbosely list files processed

    -f, --file=          use archive file
