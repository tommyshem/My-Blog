+++
title = "Git tips"
date = "2018-02-23T18:30:00"
tags = ["git"]
categories = ["git"]
banner = "images/blog/vscode-debug-screen.png"
+++

## Git tips

website blog https://wesbos.com/git-hot-tips/


## Creating tags from the command line

To create a tag on your current branch, run this:

```bash
git tag <tagname>
```

If you want to include a description with your tag, add -a to create an annotated tag:

```bash
git tag <tagname> -a
```

This will create a local tag with the current state of the branch you are on. 
When pushing to your remote repo, tags are NOT included by default. 
You will need to explicitly say that you want to push your tags to your remote repo: (Github)

```bash
git push origin --tags
```

Or if you just want to push a single tag:

```bash
git push origin <tag>
```

### Enable password caching:

```bash
git config --global credential.helper cache
```

After you have entered you credential, git will remember for 15 minutes by default.

To increase the time limit use the following command and specify time in seconds: 

### Example

(minutes wanted * 60 seconds)

For 60 minutes

(60 * 60 =3600)

```bash
git config --global credential.helper 'cache --timeout=3600'
```

For more information about the credential helper refer to the official Git documentation.
