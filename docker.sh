#!/usr/bin/env bash

cd ~

if [ -z "$DISPLAY" ]; then
    export DISPLAY=:99
    sudo Xvfb $DISPLAY -screen 0 1920x1080x24 &
fi

#export CHROMIUM_FLAGS=--no-sandbox
export CHROME_PATH=$PWD/chrome.sh

"$@"
