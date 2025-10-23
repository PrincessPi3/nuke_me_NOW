#!/bin/bash
# todo: find them and parse them
nice -20 cryptsetup erase /dev/sda5 || cryptsetup erase --disable-locks dev/sda5
nice -20 poweroff -ff || shutdown -P now
