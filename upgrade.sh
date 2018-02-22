#!/bin/bash

set -x

apt update && apt dist-upgrade $1 && apt autoremove $1
if [ -f /var/run/reboot-required ]; then
    echo 'reboot required'
fi
