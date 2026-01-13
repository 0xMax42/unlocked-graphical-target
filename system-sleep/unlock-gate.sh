#!/bin/sh
set -eu

case "$1" in
pre)
    # System is going to sleep → stop target
    systemctl stop unlocked-graphical.target
    ;;
post)
    # System just resumed → wait for unlock, then start target
    /usr/sbin/wait-for-unlock.sh &&
        systemctl start unlocked-graphical.target
    ;;
*) ;;
esac
