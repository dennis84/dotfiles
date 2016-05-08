## VIM

```
sudo pacman -S nvim
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
