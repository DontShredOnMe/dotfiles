#!/bin/sh
#
# xinitrc
#

xset r rate 250 25
xbindkeys &
xmodmap ~/.Xmodmap &
xsteroot -cursor_name arrow

mpd     &
urxvtd -q -f &
compton &

xrdb -merge "${HOME}/.Xresources"
wal-set &

exec i3
