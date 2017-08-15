#!/bin/bash

set -x

apt-get update && apt-get dist-upgrade $1 && apt-get autoremove $1
if [ -f /var/run/reboot-required ]; then
    echo 'reboot required'
fi
