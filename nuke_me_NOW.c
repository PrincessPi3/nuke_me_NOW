#include <stdlib.h>
#include <stdio.h>

#define CRYPT_DISK /dev/sda5
// define DEBUG 1 // comment out to disable debugging, 
#define DEVNULL /dev/null

int main(void) {
    // nuke the crypto headers
    // note: try and figure out the damned proper devices L:"awzasaa"
#ifdef DEBUG
    system("whoami");
    system("sudo whoami");
    system("cryptsetup erase -q /dev/sda5");
    system("poweroff -ff");
#else
    // nuke the cryptsetup keyd
    system("cryptsetup erase -q /dev/sda5 2>>/dev/null 1>/dev/null");

    // immediate force power off
    system("poweroff -ff 2>/dev/null 1>/dev/null");
#endif 
    // return ok
    return 0;
}