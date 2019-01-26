#!/bin/bash
xbps-install -S chrony dbus NetworkManager{,-{open{connect,vpn},vpnc}}

[ ! -L /var/service/chronyd ] && ln -s /etc/sv/chronyd /var/service/
[ ! -L /var/service/dbus ] && ln -s /etc/sv/dbus /var/service/
[ -L /var/service/wpa_supplicant ] && rm /var/service/wpa_supplicant
[ -L /var/service/dhcpcd ] && rm /var/service/dhcpcd
[ ! -L /var/service/NetworkManager ] && ln -s /etc/sv/NetworkManager /var/service/
