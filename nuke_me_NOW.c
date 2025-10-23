#include <stdlib.h>
#include <stdio.h>

int main(void) {
    int rc = system("whoami");
    if (rc == -1) {
        perror("system");
        return 1;
    }
    // If you need the command exit code:
    if (WIFEXITED(rc)) {
        printf("exit status: %d\n", WEXITSTATUS(rc));
    }
    return 0;
}