#!/bin/bash
SCRIPT_ROOT=$(cd `dirname "$0"` && pwd)/scripts

xbps-install -Su
bash $SCRIPT_ROOT/daemons.sh
bash $SCRIPT_ROOT/console-tools.sh
