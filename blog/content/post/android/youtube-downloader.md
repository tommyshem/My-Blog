+++
title = "Android Termux YouTube Downloader Notes"
date = "2019-01-5T11:00:00+02:00"
tags = ["termux terminal"]
categories = ["Android"]
banner = "images/blog/Termux-Screenshot.png"
+++

# Downloading programming videos from YouTube with Termux on Android

First read the Termux Notes and continue below.

## Install packages first from Termux

Install python

```bash
pkg install python
```

Install ffmpeg

```bash
pkg install ffmpeg
```

## Install and setting up youtube-dl

First update pip

```bash
pip install --upgrade pip 
```
Install youtube-dl using pip

```bash
pip install --upgrdae youtube-dl
```

Edit .bashrc file using micro editor or nano

```bash
micro ~/.bashrc
```

Add alias to .bashrc file so it downloads the best vidio format

```bash
alias ytd="youtub-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' "
```

Download youtube by getting the url from the youtube app, press share and then copy to the clip board

ytd url-to-youtube-video

Example

```bash
ytd https://youtu.be/aZZkEdWxBQs
```

