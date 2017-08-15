#!/usr/bin/env bash

cd ~

export DISPLAY=:99
sudo Xvfb $DISPLAY -screen 0 1920x1080x24 &

export CHROMIUM_FLAGS=--no-sandbox

"$@"
