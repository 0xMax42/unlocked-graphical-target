# unlocked-graphical-target

Resume/unlock gate for graphical systemd sessions.

This project provides:

* a systemd sleep hook that reacts to suspend/hibernate (pre) and resume (post)
* a oneshot gate service that waits until a graphical user session is present and unlocked
* a target that is started only after the gate condition is met

The result is a stable hook point for services that must not run immediately after resume, but only once a real, unlocked graphical session exists.

## Use case

Some workloads should only start after resume *and* after the user has unlocked their session (for example: user-facing agents, mounts that depend on a logged-in session, desktop integrations, or services that misbehave while the screen is locked).

`unlocked-graphical-target` creates a dedicated target you can use as an ordering and activation boundary.

## How it works

1. On suspend/hibernate (system-sleep `pre`):

   * `systemctl stop unlocked-graphical.target` (best-effort)

2. On resume (system-sleep `post`):

   * `systemctl start --no-block unlocked-graphical-gate.service` (best-effort)

3. The gate service (`Type=oneshot`) runs `/usr/sbin/wait-for-unlock.sh`:

   * polls `loginctl list-sessions` and inspects each session’s `LockedHint`
   * ignores sessions without a real seat (`seat == "-"`)
   * exits successfully once it finds at least one unlocked session on a real seat

4. After the wait script exits 0, the gate service starts the target:

   * `systemctl start unlocked-graphical.target`

The sleep hook logs via `logger` with tag `unlocked-graphical-gate`.

## Requirements

* systemd with logind (`loginctl`)
* a graphical login on a real seat (the wait script ignores seatless sessions)
* `/bin/systemctl` and `/usr/bin/logger` available (typical on systemd systems)

The Debian package declares `Depends: systemd`.

## Installation

### Install from source

This installs the scripts and systemd units under prefix-aware paths (default prefix is `/usr`).

```sh
sudo make install
sudo systemctl daemon-reload
```

Uninstall:

```sh
sudo make uninstall
sudo systemctl daemon-reload
```

Note on prefixes:

* The unit file `unlocked-graphical-gate.service` currently calls `/usr/sbin/wait-for-unlock.sh`.
* If you change `PREFIX`, ensure the unit’s `ExecStart` matches the installed location.

### Install via Debian package

This repository contains Debian packaging metadata (`debian/`). CI uses `debcrafter` to build a `.deb` and uploads it as a release asset.

After installing the package, systemd is reloaded in `postinst`.

## Using the target for your services

To start a service when `unlocked-graphical.target` is reached, add `WantedBy=unlocked-graphical.target` and enable it.

Example service drop-in or unit:

```ini
[Unit]
Description=Example service that should run only after resume and unlock
After=unlocked-graphical.target
Wants=unlocked-graphical.target

[Service]
Type=simple
ExecStart=/usr/local/bin/my-service

[Install]
WantedBy=unlocked-graphical.target
```

Then enable it:

```sh
sudo systemctl enable my-service.service
```

You normally do not need to enable `unlocked-graphical-gate.service` or `unlocked-graphical.target`; the sleep hook triggers the gate automatically after resume.

### Manual triggering

For debugging, you can run the gate manually:

```sh
sudo systemctl start unlocked-graphical-gate.service
```

## Diagnostics

Check logs and status:

```sh
journalctl -t unlocked-graphical-gate -b
systemctl status unlocked-graphical-gate.service
systemctl status unlocked-graphical.target
```

If the target never starts, validate that:

* at least one session shows `LockedHint=no` (`loginctl show-session <id> -p LockedHint`)
* the session has a real seat (not `-`)

## Repository layout

* `sbin/wait-for-unlock.sh` – polls logind until an unlocked session exists
* `system-sleep/unlock-gate.sh` – systemd sleep hook (pre/post)
* `system/unlocked-graphical-gate.service` – oneshot gate service
* `system/unlocked-graphical.target` – target started after the gate
* `debian/` – Debian packaging

## License

MIT. See `LICENSE` and `debian/copyright`.
