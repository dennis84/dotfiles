#!/bin/sh

# install some common packages
sudo apt-get -y install tig fish build-essential python-dev

# install dotfiles
cd ~
git clone https://github.com/dennis84/dotfiles.git
./dotfiles/scripts/install-vendors.sh
./dotfiles/scripts/install-symlinks.sh

# install vim
cd ~
sudo apt-get -y install mercurial
mkdir code
cd code
hg clone https://vim.googlecode.com/hg/ vim

cd vim

hg update --clean
hg pull
hg update

cd src

./configure \
--with-features=normal \
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

sudo apt-get -y install cmake
cd bundle/YouCompleteMe
./install.sh

# install the silver searcher
cd ~/code
sudo apt-get -y install automake pkg-config libpcre3-dev zlib1g-dev liblzma-dev
git clone https://github.com/ggreer/the_silver_searcher.git
cd the_silver_searcher
./build.sh
sudo make install

# enable fish shell
chsh -s /usr/bin/fish
