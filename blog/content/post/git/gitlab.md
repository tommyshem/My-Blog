+++
title = "Gitlab API Notes"
date = "2018-09-23T18:30:00"
tags = ["gitlab api"]
categories = ["gitlab"]
banner = "images/blog/gitflow.png"
+++

General information about api's and tools to test website <https://www.guru99.com/testing-rest-api-manually.html>

# Gitlab API Docs

Gitlab website for information <https://docs.gitlab.com/ee/api/README.html>

## Testing with curl

```bash
curl "https://gitlab.gnome.org/api/v4/
```

then use the docs on the website for the endpoints and just add onto the above curl command.

example to get list of projects.

```bash
curl "https://gitlab.gnome.org/api/v4/projects"
```

## Firefox extension

website for the extension <https://addons.mozilla.org/en-GB/firefox/addon/rester/>

## Software mto install on windows, mac and linux

website for the software <https://insomnia.rest/>

## Electron app

Advanced rest client github website <https://github.com/advanced-rest-client/arc-electron>

## Personal access tokens

You can use a personal access token to authenticate with the API by passing it in either the private_token parameter or the Private-Token header.

### Example of using the personal access token in a parameter

```bash
curl https://gitlab.example.com/api/v4/projects?private_token=9koXpg98eAheJpvBs5tK
```

### Example of using the personal access token in a header

```bash
curl --header "Private-Token: 9koXpg98eAheJpvBs5tK" https://gitlab.example.com/api/v4/projects
```
