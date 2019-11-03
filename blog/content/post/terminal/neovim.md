+++
title = "Neovim setup and Notes"
date = "2018-08-31T10:30:00+02:00"
tags = ["neovim terminal"]
categories = ["terminal"]
banner = "images/blog/vim-screenshot.png"
+++
- [Neovim](#neovim)
  - [Neovim setup files](#neovim-setup-files)
  - [Install vim-plug](#install-vim-plug)
    - [Vim plug minimum file needed to load plugins](#vim-plug-minimum-file-needed-to-load-plugins)
    - [Install plugins](#install-plugins)
    - [Update plugins](#update-plugins)
    - [Remove plugin](#remove-plugin)
    - [Install python support for neovim plugins](#install-python-support-for-neovim-plugins)
  - [Keyboard for vim and Neovim.](#keyboard-for-vim-and-neovim)
    - [Quit without saving](#quit-without-saving)
    - [Close window](#close-window)
    - [Insert mode](#insert-mode)
    - [Command mode](#command-mode)

# Neovim

Website https://neovim.io/

Fully compatible with Vim's editing model and the Vimscript language. 


## Neovim setup files

You need a settings file in the correct location for your custom settings for neovim.

Create user settings file if not already their.

```bash
~/.config/nvim/init.vim
```

Create folder for custom plugins for the user to use only.

```bash
~/.config/nvim/plugged
```

```bash
~/.local/share/nvim/site/
```

Folder used for plugins that are used for all users

```bash
 ~/.local/share/nvim/plugged
```

## Install vim-plug

Website https://github.com/junegunn/vim-plug

```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Vim plug minimum file needed to load plugins

Edit file ~/.config/nvim/init.vim

```bash
" Auto install vim-plug if not installed ready. Website https://github.com/junegunn/vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
" Vim Plug location for loading plugins
call plug#begin('~/.config/nvim/plugged')

" Nerdtree plugin with on demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }


" Initialize plugin system
call plug#end()
```
### Install plugins

Run command in neovim `:PlugInstall` to install the plugins.

### Update plugins

Run command in neovim `:PlugUpdate` to update the plugins.

### Remove plugin

Remove the plugin from the `~/.config/nvim/init.vim` file and then re-run neovim and run command in neovim `:PlugClean` to update the plugins.


### Install python support for neovim plugins

Install python packages in ubuntu

```bash
sudo apt install python3-pip python3 python3-dev
```

Install the neovim python interface with pip3

```bash
pip3 install --user pynvim
```

## Keyboard for vim and Neovim.

Press escape first then type below for which action you require.

### Quit without saving

```bash
`:qa!`
```

### Close window

```bash
`:q`
```

### Insert mode

```bash
`i`
```

### Command mode

```bash
`Esc` Esc key
```


