# todo: check for needed packages and install them
# todo: setup keyboard and terminal shortcuts
# compile the wrapper
# gcc wrapper.c -o wrapper
gcc nuke_me_NOW.c -o nuke_me_NOW

# change user and group for wrapper (for suid)
sudo chown root:root nuke_me_NOW

# make scripts executable
# chmod +x *.sh
# sudo chown root:root nuke_me_NOW.sh

# set suid
sudo chmod 4755 nuke_me_NOW

# sudo chmod 4777 nuke_me_NOW.sh
# sudo chmod 4777 $(which cryptsetup)
# sudo chmod 4777 $(which poweroff)
# sudo chmod 4777 $(which shutdown)
# sudo chmod 4777 $(which nice)