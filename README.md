# freebsd-autoinstall-usb

Provided an exisiting installer such as `FreeBSD-12.1-RELEASE-amd64-memstick.img`, injects an `installerconfig` file for an unattended installation.
The `installerconfig` included here includes my ssh keys and personal preferences, so modify as needed.

This installer will attempt to create zroot on a ZFS mirror of all disks in the system, or a "stripe of one" if only one disk is found.
