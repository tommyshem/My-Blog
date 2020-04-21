+++
title = "Visual Code Editor install for Mac"
date = "2020-04-21T10:30:00+02:00"
tags = ["editor git"]
categories = ["visual-code"]
banner = "images/blog/vim-screenshot.png"
+++

# Install Visual Studio Code on Mac

Go to the visual studio code website and follow the install instructions.

## Code command install so code can be used in the shell.

 In Visual Studio Code Editor type below to install code command.

 <kbd>shift</kbd> + <kbd>⌘</kbd> + <kbd>P</kbd> for the command palette.

```
 shell command: install 'code' command in path
```

## Setup Git for Visual Studio Code

To get Visual Studio Code editor working as Git's default editor run the command below.

```bash
git config --global core.editor "code --new-window --wait"
```

The file ~/.gitconfig will be changed.

If you want Visual Studio Code as default diff tool then add git diff-tool.

```
diff]
    tool = default-difftool
[difftool "default-difftool"]
    cmd = code --new-window --wait --diff $LOCAL $REMOTE
```
