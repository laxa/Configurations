#!/bin/bash
# launch this script as root

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

set -x

cp emacs ~/.emacs
cat bashrc >> ~/.bashrc
cp clean /bin/clean
chmod +x /bin/clean
