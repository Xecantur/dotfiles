#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

#Start Mpd when X starts
[ ! -s ~/.mpd/pid ] && mpd

#set the background
fbsetbg ~/Pictures/Forza_Motorsport_Rx7-1985.jpg

#enable true Transparency
xcompmgr &

#set multimedia keys
xbindkeys &

#start chrome
chromium &

#start termite on tag 1
termite --class Code --transparency 0.00001 &

#start termite on tag 3
termite --class Weechat --transparency 0.2 --exec weechat &

#start termite on tag 4
termite --class System --transparency 0.0001 &

#start dwm
exec dwm


#exec i3
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

