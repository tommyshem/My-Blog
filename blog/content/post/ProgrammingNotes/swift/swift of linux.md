+++
title = "Swift on Linux with MacOS"
date = "2018-02-23T18:30:00"
tags = ["linux", "docker","swift"]
categories = ["swift"]
banner = "images/blog/vscode-debug-screen.png"
+++

## Swift on linux
Orignal blog website https://theswiftdev.com/2017/11/30/how-to-run-swift-on-linux/

website blog https://ashfurrow.com/blog/swift-on-line

## Notes

```bash
docker run -p 8000:8000 -v /Users:Users --privileged -i -t --name swiftfun swiftdocker/swift:latest /bin/bash
```

```bash
docker start swiftfun
docker attach swiftfun
```