#!/bin/bash
SCRIPT_ROOT=$(cd `dirname "$0"` && pwd)/scripts

xbps-install -Su
bash $SCRIPT_ROOT/daemons.sh
bash $SCRIPT_ROOT/console-tools.sh
bash $SCRIPT_ROOT/dev-tools.sh
bash $SCRIPT_ROOT/xorg-setup.sh
bash $SCRIPT_ROOT/qtile.sh
bash $SCRIPT_ROOT/themes.sh
bash $SCRIPT_ROOT/wm-stuff.sh
bash $SCRIPT_ROOT/multimedia.sh
bash $SCRIPT_ROOT/personal-stuff.sh
