.global _start
.text

_start:
    // Arguments are passed in registers x0 through x7 for AArch64.
    // sys_reboot magic constants
    mov x0, #0xfee1dead
    mov x1, #0x28121969

    // The Linux constant LINUX_REBOOT_CMD_HALT
    mov x2, #0xcdef0123

    // The fourth argument (x3) is optional, so set it to 0.
    mov x3, #0

    // The syscall number for sys_reboot on AArch64 is 169.
    // The syscall number is placed in the X8 register.
    mov x8, #169

    // Execute the syscall.
    svc #0

    // This code should not be reached.
    // If it is, exit with a status code.
    // sys_exit is syscall number 93 on AArch64.
    mov x8, #93
    mov x0, #1
    svc #0
