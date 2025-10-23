#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main(int argc, char *argv[]) {
    // Drop privileges before running the command
    setuid(getuid());

    // Pass all arguments to the target command
    execvp(argv[1], &argv[1]);

    // This is only reached if execvp fails
    perror("execvp");
    return 1;
}
