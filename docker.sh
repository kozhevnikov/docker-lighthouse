#!/usr/bin/env bash

cd ~

if [ -z "$(pidof -x dbus-daemon)" ]; then
    sudo rm -f /var/run/dbus/pid
    sudo dbus-daemon --system;
fi

if [ -z "$(pidof -x Xvfb)" ]; then
    export DISPLAY=:99
    sudo rm -f /tmp/.X99-lock
    sudo Xvfb $DISPLAY -screen 0 1920x1080x24 +extension RANDR &
fi

"$@"
