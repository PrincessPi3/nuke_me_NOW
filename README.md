# nuke_me_NOW
For immediate irrecoverable destruction of running Linux OS using cryptsetup  
**THIS TOOL WILL IMMEDIATELY AND IRRECOVERABLY DESTORY ALL DATA ON THE CRYPT LVM WITHOUT ASKING TO CONFIRM, AND AS ASSEMBLED, SHOULD BE ABLE TO RUN AS ROOT BY ANY USER WITH EXECUTE PERMISSIONS ON IT**

## Prerequisites
1. A Linux OS running encrypted lvm with cryptsetup
2. packages: build-essential, cryptsetup
3. root permisisons (of course)
4. faith you nor anybody else wil accidently or maliciously trigger
5. BACKUPS OF YOUR SHIT

## Building and setup
`bash setup.sh`

## Running it
`sudo ./nuke_me_NOW`