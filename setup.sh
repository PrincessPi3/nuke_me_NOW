# todo: check for needed packages and install them
# todo: setup keyboard and terminal shortcuts
# compile the wrapper
gcc wrapper.c -o wrapper

# change user and group for wrapper (for suid)
sudo chown root:root wrapper
sudo chown root:root nuke_me_NOW.sh

# set suid
sudo chmod 4755 wrapper

# sudo chmod 4777 nuke_me_NOW.sh
# sudo chmod 4777 $(which cryptsetup)
# sudo chmod 4777 $(which poweroff)
# sudo chmod 4777 $(which shutdown)
# sudo chmod 4777 $(which nice)