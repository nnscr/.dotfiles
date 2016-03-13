# exec gnome-session
[ -f ~/.Xresources ] && xrdb -merge -I $HOME ~/.Xresources


# /usr/lib/gnome-settings-daemon/gnome-settings-daemon &

feh --bg-scale ~/.config/wallpaper.png &
# eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
# export SSH_AUTH_SOCK
xset dpms 0 0 0 &
xset s off &
xset m 0 0 &
xset r rate 250 20 &
nm-applet &
mpd &
~/.local/bin/upshot &


exec dbus-launch i3

