# Umair's Dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
pacman -S git
```

### Stow

```
pacman -S stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/umairziyan/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .

If there are files already in your local .config folder, use the following command to symlink it:

$ stow --adopt .

this comman will overwrite everything so reset using the following command:

$ git --reset hard
```
