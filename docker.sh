#!/usr/bin/env bash

if [ -z "$(pidof -x dbus-daemon)" ]; then
    sudo mkdir -p /var/run/dbus
    sudo rm -f /var/run/dbus/pid
    sudo dbus-daemon --system;
fi

if [ -z "$(pidof -x Xvfb)" ]; then
    export DISPLAY=:99
    sudo rm -f /tmp/.X99-lock
    sudo -b Xvfb $DISPLAY -screen 0 1920x1080x24 -noreset +extension RANDR
fi

"$@"
