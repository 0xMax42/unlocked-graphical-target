#!/bin/sh
set -u

LOG_TAG="unlocked-graphical-gate"

log() {
    logger -t "${LOG_TAG}" "$@"
}

case "$1" in
pre)
    log "pre-sleep: stopping unlocked-graphical.target"
    systemctl stop unlocked-graphical.target || true
    ;;
post)
    log "post-resume: scheduling unlock gate"
    systemctl start --no-block unlocked-graphical-gate.service || true
    ;;
*) ;;
esac
