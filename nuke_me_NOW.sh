#!/bin/bash
# todo: find them and parse them
nice -20 cryptsetup erase /dev/sda5 1>>output.log 2>>error.log
    || cryptsetup erase --disable-locks dev/sda5 1>>output.log 2>>error.log
nice -20 poweroff -ff 1>>output.log 2>>error.log || shutdown -P now 1>>output.log 2>>error.log
