#!/bin/sh

cd ~/vim

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
--with-compiledby="Dennis Dietrich"

make
sudo make install
