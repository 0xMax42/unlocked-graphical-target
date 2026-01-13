#!/bin/sh
# shellcheck disable=SC2312,SC2034
set -u

# This script waits until at least one unlocked graphical
# systemd-logind session on a real seat exists.
#
# Intended to be called AFTER resume from sleep.
# It blocks until the condition is met, then exits 0.

SLEEP_INTERVAL=1

while :; do
    found_unlocked=0

    while read -r session uid user seat rest; do
        # Ignore sessions without a real seat
        [ "${seat}" = "-" ] && continue

        locked="$(loginctl show-session "${session}" -p LockedHint --value 2>/dev/null || true)"

        if [ "${locked}" = "no" ]; then
            found_unlocked=1
            break
        fi
    done <<EOF
$(loginctl list-sessions --no-legend)
EOF

    if [ "${found_unlocked}" -eq 1 ]; then
        exit 0
    fi

    sleep "${SLEEP_INTERVAL}"
done
