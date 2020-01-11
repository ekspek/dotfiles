# dotfiles

My dotfiles, comprised mostly of Vim configurations.

I still have to set everything up properly. Hopefully I get some more time to do that in the future.

### Setting it up

For Linux and other Unix systems, use the '''install.sh''' script.

To set the files up on any machine, go to your directory of choice and run

    git clone --recursive https://github.com/ekspek/dotfiles

The `recursive` option downloads all submodules present in this repo.

To link the local Vim files to the cloned repo in Linux, run

    ln -sf dotfiles/.vim ~/.vim
    ln -sf dotfiles/.vimrc ~/.vimrc

With Windows and GVim, the file layout should look something like this

     C:\Users\<username>\vimfiles\

with the `.vimrc` placed a directory above.

### Vim plugins and submodules

[This gist](https://gist.github.com/manasthakur/d4dc9a610884c60d944a4dd97f0b3560) contains all the information. To summarize quickly, a first install should run

    git submodule update --init --recursive

Updating all submodules is done with

    git submodule update --recursive --remote

Installing new submodules is done via

    git submodule add https://github.com/foo/bar .vim/pack/plugins/ekspek/bar

where `foo` and `bar` are placholder names, replace them with actual plugin names.

### Stuff I use

Plugins are setup with git submodules and Vim's native plugin manager. Check [this gist](https://gist.github.com/manasthakur/d4dc9a610884c60d944a4dd97f0b3560) for information and instructions.

Various monospaced fonts compatible with [vim-airline](https://github.com/vim-airline/vim-airline) can be found at [powerline/fonts](https://github.com/powerline/fonts).

Color scheme is [molokayo](https://github.com/fmoralesc/molokayo).
