#!/bin/sh
set -u

LOG_TAG="unlocked-graphical-gate"

log() {
    logger -t "$LOG_TAG" "$@"
}

case "$1" in
pre)
    log "pre-sleep: stopping unlocked-graphical.target"
    systemctl stop unlocked-graphical.target || true
    ;;
post)
    log "post-resume: system resumed, waiting for unlocked graphical session"

    sleep 5

    if /usr/sbin/wait-for-unlock.sh; then
        log "post-resume: unlocked graphical session detected, starting target"
        systemctl start unlocked-graphical.target || true
    else
        log "post-resume: wait-for-unlock.sh failed"
    fi
    ;;
*) ;;
esac
