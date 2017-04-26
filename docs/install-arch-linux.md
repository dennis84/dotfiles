## VIM

```
sudo pacman -S nvim
sudo pacman -S python2-neovim python-neovim
```

## Touchpad

```
sudo pacman -S libinput

# /etc/X11/xorg.conf.d/30-touchpad.conf
Section "InputClass"
        Identifier "MyTouchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
        Option "NaturalScrolling" "on"
EndSection
```

## WiFi

```
# create a profile
sudo wifi-menu
# auto connect
sudo netctl enable profile
```

# Fonts

```
cp fonts/* /usr/share/fonts
```

# Alacritty

```bash
git clone https://aur.archlinux.org/alacritty-git.git
cd alacritty-git
makepkg -isr
```
