#include <stdlib.h>
#include <stdio.h>

int main(void) {
    system("sudo cryptsetup erase -q /dev/sda5");
    system("sudo poweroff -ff");
    // if (rc == -1) {
    //    perror("system");
    //    return 1;
    // }
    // If you need the command exit code:
    // if (WIFEXITED(rc)) {
        // only show return status during debug
        // printf("exit status: %d\n", WEXITSTATUS(rc));
    //  }
    return 0;
}