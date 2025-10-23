#include <stdlib.h>
#include <stdio.h>

#define CRYPT_DISK /dev/sda5
#define DEBUG 1 // comment out to disable debugging, 
#define DEVNULL /dev/null

int main(void) {
    // nuke the crypto headers
    // note: try and figure out the damned proper devices L:"awzasaa"
#ifdef DEBUG
    system("whoami");
    system("sudo whoami");
    system("cryptsetup erase -q");
    system("poweroff -ff");
#else
    system("cryptsetup erase -q CRYPT_DISK 2>>DEVNULL 1>DEVNULL");

    // immediate force power off
    system("poweroff -ff 2>DEVNULL 1>DEVNULL");
#endif 
    // return ok
    return 0;
}