#Tinycore_Install

Install Tinycore_OS into a virtual box hard drive.

## Prerequisite

1.) Download the tiny core os from 
http://tinycorelinux.net/7.x/x86/release/Core-current.iso

2.) Install Virtual Box and create a virtual box vm with the above iso and an empty hard disk. 
Tinycore only occupies 11 MB, so a 1 GB harddisk for testing should be enough.

## Installation

1.) Start the VM and boot to the prompt.
2.) wget the install script 
    wget https://raw.githubusercontent.com/raviatobjectz/tinycore_install/master/tinyInstall.sh
3.) give execute privilage to the install script
    chmod +x ./tinyInstall.sh
4.) run the script
    ./tinyInstall.sh
5.) Power off, remove the ISO file from the vm and reboot.
    sudo poweroff
6.) Enjoy the best linux ever.
