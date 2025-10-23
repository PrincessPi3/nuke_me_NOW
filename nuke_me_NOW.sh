#!/bin/bash
# todo: find them and parse them
# set -e
debug=1 # 1 to enable any other to disable

if [[ $debug == 1 ]]; then
    output_log=output.log
    error_log=error.log
else
    output_log=/dev/null
    error_log=/dev/null
fi

lsblk --list | awk '{printf "%s%s\n", "/dev/",$1}' | tail -n +2 | \
    while read device; do
        if [ -f $device ]; then
            isLuks=$(cryptsetup isLuks $device) 2>>$error_log 1>>$output_log
            if [[ $(cryptsetup isLuks $device) == 0 ]]; then
                # nuke the luks headers
                nice -20 cryptsetup erase -q $device 1>>$output_log 2>>$error_log || cryptsetup erase -q --disable-lock $device 1>>$output_log 2>>$error_log
                # immediate halt power
                nice -20 poweroff -ff 1>>$output_log 2>>$error_log || shutdown -P now 1>>$output_log 2>>$error_log
            fi
        fi
    done