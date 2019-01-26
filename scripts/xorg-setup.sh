#!/bin/bash
xbps-install -S ConsoleKit2 xorg-{fonts,minimal} xf86-{input-{evdev,joystick,libinput,mtrack,synaptics,vmmouse,wacom},video-{amdgpu,ati,cirrus,dummy,fbdev,intel,mga,nouveau,openchrome,sisusb,vesa,vmware}}

mkdir -p /etc/X11/xorg.conf.d

cat << EOF > /etc/X11/xorg.conf.d/20-kbdlayout.conf
Section "InputClass"
	Identifier "KeyboardDefaults"
	MatchIsKeyboard "on"
	Option "XkbLayout" "br"
EndSection
EOF

[ ! -L /var/service/dbus ] && ln -s /etc/sv/dbus /var/service/
[ ! -L /var/service/cgmanager ] && ln -s /etc/sv/cgmanager /var/service/
[ ! -L /var/service/consolekit ] && ln -s /etc/sv/consolekit /var/service/
