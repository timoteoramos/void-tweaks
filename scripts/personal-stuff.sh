#!/bin/bash
xbps-install -S aria2 blueman chromium flatpak gimp{,-{lqr-plugin,python}} {gmic,ufraw,xsane}-gimp gparted keepassxc leafpad libreoffice{,-i18n-pt-BR} mate-polkit mirage network-manager-applet remmina resynthesizer telegram-desktop thunderbird{,-i18n-pt-BR} uget xdg-desktop-portal{,-gtk}

mkdir -p /usr/share/gimp/2.0/fonts

curl https://raw.githubusercontent.com/ugetdm/uget-integrator/master/install/linux/install_uget_integrator.sh | bash

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.dropbox.Client
