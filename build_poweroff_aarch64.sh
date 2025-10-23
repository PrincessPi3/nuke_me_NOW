#!/bin/bash
set -e
as -o poweroff_aarch64.o poweroff_aarch64.s
ld -o poweroff_aarch64 poweroff_aarch64.o
