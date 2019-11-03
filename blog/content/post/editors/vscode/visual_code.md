+++
title = "Visual Code Notes"
date = "2018-09-10T10:30:00+02:00"
tags = ["editor font"]
categories = ["visual-code"]
banner = "images/blog/vim-screenshot.png"
+++

# Visual Code

## Setup visual code with a font with programming ligatures

### Install manualy or on linux

 First you will need a font with ligatures.

font fira code github <https://github.com/tonsky/FiraCode>

Install from github or package manager.

### Mac os install using homebrew

```bash
brew tap caskroom/fonts
brew cask install font-fira-code
```

## Visual code setup

In the menu goto `File > Preferences > User Settings`

Add below to the `settings.json` file

```json
{
    "editor.fontFamily": "Fira Code",
    "editor.fontLigatures": true
}
```

You might have to close the editor and open again to get the fonts to work in the editor.
