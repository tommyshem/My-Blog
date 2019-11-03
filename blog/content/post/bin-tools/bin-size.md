+++
title = "Binary Notes"
date = "2019-01-23T11:00:00"
tags = ["bin","binary size","elf","rust"]
categories = ["bin-tools"]
banner = "images/blog/vim-screenshot.png"
+++

# Linux bin sizes Notes

## Size of the sections in the binary file - works with any compiled file to elf format - used on linux.

```bash
size -A -t -d target/release/recode_rs | sort -k 2 -n
```

## Readelf command

### Display any needed linked dynamically libraries in the exec progam, for it to run.

```bash
readelf -d exec-filename-here
```

### Display all information on the elf binary file

```bash
readelf -a exec-filename-here
```

## objdump command

```bash

```

## file command

```bash
file -d file-name-here
```

Website for bloaty command tool
https://github.com/google/bloaty
