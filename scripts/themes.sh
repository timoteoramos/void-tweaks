#!/bin/bash
xbps-install -S adwaita-icon-theme arc{,-icon}-theme fonts-roboto-ttf gnome-{icon-theme{,-{extras,symbolic}},themes-{extra,standard}} qt5-styleplugins

[ ! -f /usr/share/fonts/TTF/Hack-Regular-Nerd-Font-Complete.ttf ] && wget https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf -O /usr/share/fonts/TTF/Hack-Regular-Nerd-Font-Complete.ttf

fc-cache -fv

cat << EOF > /etc/environment
QT_QPA_PLATFORMTHEME=gtk2
EOF
