section .text
    global _start

_start:
    ; The sys_reboot system call has the number 169.
    mov rax, 169

    ; Argument 1: RDI
    ; Linux REBOOT_MAGIC1 constant
    mov rdi, 0xfee1dead

    ; Argument 2: RSI
    ; Linux REBOOT_MAGIC2 constant
    mov rsi, 0x28121969

    ; Argument 3: RDX
    ; LINUX_REBOOT_CMD_HALT constant
    mov rdx, 0xcdef0123

    ; Argument 4: R10
    ; Zero out the optional fourth argument.
    xor r10, r10

    ; Call the syscall.
    syscall

    ; The program should not reach here.
    ; Exit with an error code as a fallback.
    mov rax, 60
    mov rdi, 1
    syscall
