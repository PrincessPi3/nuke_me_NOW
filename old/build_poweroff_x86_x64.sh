#!/bin/bash
set -e
nasm -f elf64 -o poweroff_x86_64.o poweroff_x86_64.asm
ld -o poweroff_x86_64 poweroff_x86_64.o and linkx86_64.snasm -f elf64 -o poweroff_x86_64.o poweroff_x86_64.asm
