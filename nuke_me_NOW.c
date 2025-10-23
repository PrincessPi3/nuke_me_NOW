#include <stdlib.h>
#include <stdio.h>

#define CRYPT_DISK /dev/sda5
#define DEVNULL /dev/null

int main(void) {
    system("whoami"); 
    system("sudo whoami"); 

    // nuke the crypto headers
    // note: try and figure out the damned proper devices L:"awzasaa"
    // system("sudo cryptsetup erase -q CRYPT_DISK 2>>DEVNULL 1>DEVNULL");

    // immediate force power off
    // system("sudo poweroff -ff 2>DEVNULL 1>DEVNULL");

    // return ok
    return 0;
}