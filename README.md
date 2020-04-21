# dotfiles

My dotfiles repository. Mostly to get Vim and other things running quickly.

Still very primitive. Don't judge me :)

### Setting it up

For Linux, use the `install` file to install via dotbot. This should link most files to their proper locations.

Lots of applications have to be downloaded first though. Still have to get around writing a list for that.

### Stuff I use

Tmux, suckless terminal and zsh combined with oh-my-zsh for terminal emulation.

Neovim plugins are set up with the dein plugin manager.

Various monospaced fonts compatible with [vim-airline](https://github.com/vim-airline/vim-airline) can be found at [powerline/fonts](https://github.com/powerline/fonts) or at NerdFonts.

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
