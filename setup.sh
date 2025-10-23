#!/bin/bash
# packages: build-essential, cryptsetup

# compile the wrapper
# gcc wrapper.c -o wrapper
gcc nuke_me_NOW.c -o nuke_me_NOW

# change user and group for wrapper (for suid)
sudo chown root:root nuke_me_NOW

# set suid
sudo chmod 4755 nuke_me_NOW