# askhatrc

## Deploing and managing

The tool of choice to perform deploy and management of dotfiles is thoughtbot's [rcm](https://github.com/thoughtbot/rcm). Assuming that you already have rcm installed on your system and this repository is cloned to your home directory, you can link all dotfiles to appropriate destinations with:

```
$ rcup
```

This will link all files presented here. Although you probably want to see what will be linked where and manually chose desired files:

```
$ lsrc # will list each file with its destination
$ rcup vimrc # will link `vimrc` from here to `~/.vimrc`
```

## Vim

Vim section of my dotfiles ships with [vim-plug](https://github.com/junegunn/vim-plug) plugin manager. List of plugins is available in `vim/plugins.vim` and sourced to `vimrc`.

### Vim configuration

I prefer to store specific areas of config in separate files rather then in `vimrc`. So `vimrc` has section in which each file from `vim/config` will be sourced into Vim via loop

## Fish

As well as Vim, fish config comes with plugin manager of choice [fisherman](https://github.com/fisherman/fisherman). So there is no need to manually install it. In the other hand, I believe shell plugins is a more private thing, so plugins are not included in current repository.

## Git

Take a look at `gitconfig` the first section of it has my name and email in it, so you don't really want to use it until you change or delete this section.
