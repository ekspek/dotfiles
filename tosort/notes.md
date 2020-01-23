# Installing suckless-terminal

sudo apt-get install tmux
sudo apt-get install libx11-dev
sudo apt-get install libfontconfig1-dev
sudo apt-get install libxft-dev
git clone https://git.suckless.org/st
sudo make clean install

## Installing Terminus for Powerline font

sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf
sudo fc-cache -f -v
git clone https://github.com/powerline/fonts
./install.sh

## Fixing colors

https://github.com/honza/base16-st/issues/3
https://askubuntu.com/questions/208345/dircolors-ls-not-being-displayed-correctly-under-ntfs-drive
