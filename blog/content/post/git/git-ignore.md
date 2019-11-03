+++
title = "Git ignore"
date = "2018-01-29T19:30:00"
tags = ["git", "ignore"]
categories = ["git"]
banner = "images/blog/gitflow.png"
+++
[content from this website](https://labs.consol.de/development/git/2017/02/22/gitignore.html)

`.gitignore` file

.gitignore entry     Ignores every…
target/              … folder (due to the trailing /) recursively
target               … file or folder named target recursively
/target              … file or folder named target in the top-most directory (due to the leading /)
/target/             … folder named target in the top-most directory (leading and trailing /)
*.class              … every file or folder ending with .class recursively
#comment             … comment in the file


#comment             …nothing, this is a comment (first character is a #)

## global ignore for all projects

Moreover, you can define repository specific rules which are not committed to the Git repository, i.e. these are specific to your local copy. These rules go into the file .git/info/exclude which is created by default in every Git repository with no entries.

One useful file you can define yourself is a global ignore file. It doesn’t have a default location or file name. You can define it yourself with the following command:

`$ git config --global core.excludesfile ~/.gitignore_global`

Every rule which goes into this file applies to every Git repository in your user account. This is especially useful for OS-specific files like .DS_Store on MacOS or thumbs.db on Windows.

[website](https://stackoverflow.com/questions/45015742/git-ignore-untracked-files-in-submodule)
In .gitmodules add ignore = all to submodule.

There more options for ignore, you can read them in git help config, search submodule.<name>.ignore.

## Find all executable files in folders.

```bash
find . -perm /111 -type f | sed 's#^./##' | grep -vE "\.(git)"
```

## Delete all executable files in folders.

```bash
find . -perm /111 -type f | grep -vE "\.(git)" | xargs rm -f
```

script for adding files to .gitignore <https://gist.github.com/tommyshem/ce917551d61a9d88159d710a2648a6f2>
