+++
title = "Rsync Notes"
date = "2020-02-26T18:00:00"
tags = ["socket"]
categories = ["Linux Notes"]
banner = "images/blog/Linux-Hosting-long.png"
+++

## Find all sockets on your Linux machine

'''bash
netstat -anp
'''

## List socket with ip address

'''bash
ss -tanp
'''

## List open ports on the local host

'''bash
nmap -p 1-65535 --open localhost
'''

## Websites for reading about sockets

https://ops.tips/blog/how-linux-creates-sockets/