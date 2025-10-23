#include <stdlib.h>
#include <stdio.h>

int main(void) {
    // nuke the crypto headers
    // note: try and figure out the damned proper devices L:"awzasaa"
    system("sudo cryptsetup erase -q /dev/sda5 2/dev/null 1>/dev/null");

    // immediate force power off
    system("sudo poweroff -ff 2>/dev/null 1>/dev/null");

    // return ok
    return 0;
}