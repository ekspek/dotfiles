# dotfiles

My dotfiles repository. Mostly to get Vim and other things running quickly.

Still very primitive. Don't judge me :)

### Setting it up

For Linux, use the `install.sh` script.

To set the files up on any machine, go to your directory of choice and run

    git clone --recursive https://github.com/ekspek/dotfiles

The `recursive` option downloads all submodules present in this repo.

To link most config files and folders to their corresponding place in this repo, check the `symlinks.sh` file.

### Vim plugins and submodules

[This gist](https://gist.github.com/manasthakur/d4dc9a610884c60d944a4dd97f0b3560) contains all the information. To summarize quickly, a first install should run

    git submodule update --init --recursive

Updating all submodules is done with

    git submodule update --recursive --remote

Installing new submodules is done via

    git submodule add https://github.com/foo/bar .vim/pack/plugins/ekspek/bar

where `foo` and `bar` are placholder names, replace them with actual plugin names.

### Stuff I use

Tmux, suckless terminal and zsh combined with oh-my-zsh for terminal emulation.

NeoVim plugins are setup with git submodules and NeoVim's native plugin manager. Check [this gist](https://gist.github.com/manasthakur/d4dc9a610884c60d944a4dd97f0b3560) for information and instructions.

Various monospaced fonts compatible with [vim-airline](https://github.com/vim-airline/vim-airline) can be found at [powerline/fonts](https://github.com/powerline/fonts).

## Other notes

### Installing Terminus for Powerline font

Get the fonts from [their source](https://github.com/powerline/fonts).

    sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf
    sudo fc-cache -f -v
    git clone https://github.com/powerline/fonts
    ./install.sh

### Fixing colors

Suckless terminal might have some troubles with colors at first. Check these links for some help.

    https://github.com/honza/base16-st/issues/3
    https://askubuntu.com/questions/208345/dircolors-ls-not-being-displayed-correctly-under-ntfs-drive
