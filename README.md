# vimfiles

My Vim configurations.

It's relatively empty, but I'm still getting comfortable with the tool. Hopefully as time goes on I can customize it a little more and use it efficiently.

### Setting it up

To set the files up on any machine, go to your directory of choice and run

    git clone --recursive https://github.com/ekspek/vimfiles

The `recursive` option downloads all plugins present in this repo.

To link the local Vim files to the cloned repo in Linux, run

    ln -sf vimfiles ~/.vim
    ln -sf vimfiles/.vimrc ~/.vimrc

With Windows and GVim, the file layout should look something like this

     C:\Users\<username>\vimfiles\

with the `.vimrc` placed a directory above.

### Vim plugins and submodules

[This gist](https://gist.github.com/manasthakur/d4dc9a610884c60d944a4dd97f0b3560) contains all the information. To summarize quickly, a first install should run

    git submodule update --init --recursive

Updating all submodules is done with

    git submodule update --recursive --remote

Installing new submodules is done via

    git submodule add https://github.com/foo/bar pack/plugins/ekspek/bar

where `foo` and `bar` are placholder names, replace them with actual plugin names.

### Stuff I use

Plugins are setup with git submodules and Vim's native plugin manager. Check [this gist](https://gist.github.com/manasthakur/d4dc9a610884c60d944a4dd97f0b3560) for information and instructions.

Various monospaced fonts compatible with [vim-airline](https://github.com/vim-airline/vim-airline) can be found at [powerline/fonts](https://github.com/powerline/fonts).

Color scheme is [molokayo](https://github.com/fmoralesc/molokayo).
