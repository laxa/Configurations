#!/bin/bash
# launch this script as root

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

set -x

cp emacs ~/.emacs
cat bashrc >> ~/.bashrc
cp upgrade.sh /root/upgrade.sh
chmod +x /root/upgrade.sh
cp clean /usr/local/bin/clean
chmod +x /usr/local/bin/clean
