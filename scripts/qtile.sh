#!/bin/bash
xbps-install -S {libxcb,libffi,cairo}-devel python3-{dateutil,dbus,gobject,iwlib,keyring,mpd2,xdg} xcb-util-cursor
pip3 install xcffib
pip3 install cairocffi
pip3 install qtile

mkdir -p /usr/share/xsessions

cat << EOF > /usr/share/xsessions/qtile.desktop
[Desktop Entry]
Name=Qtile
Comment=Qtile Session
Exec=qtile
Type=Application
Keywords=wm,tiling
EOF
