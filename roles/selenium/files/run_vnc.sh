#!/bin/sh
Xvfb :40 -screen 0 1600x900x24 -ac &
fluxbox -display :40 &
x11vnc -display :40 -shared -xkb -skip_lockkeys -forever -noxdamage -passwd nokia &
