# dotfiles
![Last commit](https://img.shields.io/github/last-commit/ssheersh/dotfiles)

This repo contains my personalized configuration files for various programs

## Current Config: (*btw, I use Arch*)
* OS: [Arch Linux](https://www.archlinux.org)
* DE: [KDE Plasma](https://www.kde.org) (Wayland Version) 
* Alternate setup: [Hyprland](https://hyprland.org) on Wayland
* Text Editor: [Neovim](https://neovim.io) 
    * Package manager:[Lazy](https://github.com/wbthomason/packer.nvim)
* Terminal Emulator: [Kitty](https://github.com/kovidgoyal/kitty)
* Shell: [Fish](https://fishshell.com/)
    * Prompt: [Starship](https://starship.rs/)

## Setup

```bash
git clone  --bare git@github.com:ssheersh/dotfiles.git $HOME/.dotfiles
alias dotfiles = '/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dotfiles checkout

```
