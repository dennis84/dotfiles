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