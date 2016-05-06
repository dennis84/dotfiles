#!/bin/sh

# Installation:
# wget -qO- https://raw.github.com/dennis84/dotfiles/master/scripts/installer-ubuntu.sh | sh

# install some common packages
sudo apt-get -y install tig fish build-essential python-dev python-pip

# install dotfiles
cd ~
git clone https://github.com/dennis84/dotfiles.git
./dotfiles/scripts/install-symlinks.sh

# install vim
cd ~
sudo apt-get -y install mercurial

# neocomplete needs lua support
sudo apt-get -y install luajit and libluajit-5.1-dev libluajit-5.1
sudo ln -s /usr/bin/luajit-2.0.0-beta9 /usr/bin/luajit

mkdir code
cd code
hg clone https://vim.googlecode.com/hg/ vim

cd vim

hg update --clean
hg pull
hg update

cd src

./configure \
--with-features=huge \
--enable-luainterp \
--with-luajit \
--enable-rubyinterp \
--enable-multibyte \
--enable-cscope \
--enable-pythoninterp \
--disable-netbeans \
--disable-darwin \
--disable-selinux \
--disable-workshop \
--disable-gui \
--disable-gtk2-check \
--disable-gnome-check \
--disable-gtktest \
--without-gnome \
--disable-sysmouse \
--disable-gpm \
--disable-largefile \
--disable-acl \
--with-python-config-dir=/usr/lib/python2.7/config \
--with-compiledby="Dennis Dietrich"

make
sudo make install

# install my personal vim config
cd ~
git clone https://github.com/dennis84/vim-config.git
cd vim-config
./install.sh
vim +BundleInstall! +qall

# used by vim-collab
sudo pip install websocket-client

# install the silver searcher
cd ~/code
sudo apt-get -y install automake pkg-config libpcre3-dev zlib1g-dev liblzma-dev
git clone https://github.com/ggreer/the_silver_searcher.git
cd the_silver_searcher
./build.sh
sudo make install

# enable fish shell
# TODO: Find a way without entering a password
chsh -s /usr/bin/fish vagrant
