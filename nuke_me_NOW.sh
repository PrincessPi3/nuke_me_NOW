#!/bin/bash
# todo: find them and parse them
debug=1 # 1 to enable any other to disable

if [ $debug -eq 1 ]; then
    output_log=output.log
    error_log=error.log
else
    output_log=/dev/null
    error_log=/dev/null
fi

nice -20 cryptsetup erase /dev/sda5 1>>output.log 2>>error.log || cryptsetup erase --disable-locks dev/sda5 1>>output.log 2>>error.log
nice -20 poweroff -ff 1>>output.log 2>>error.log || shutdown -P now 1>>output.log 2>>error.log