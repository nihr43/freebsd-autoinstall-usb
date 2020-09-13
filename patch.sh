#!/bin/sh

set -euo pipefail

[ -f "$1" ] || {
  echo "file $1 does not exist"
  exit 1
}

mdconfig -u md1 -f "$1"
mount /dev/md1s2a /mnt

# inject installer
cp ./installerconfig /mnt/etc/installerconfig

umount /mnt
