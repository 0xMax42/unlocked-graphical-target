PREFIX ?= /usr
SBINDIR ?= $(PREFIX)/sbin

# Debian/systemd default unit locations
SYSTEMD_SYSTEM_UNITDIR ?= $(PREFIX)/lib/systemd/system
SYSTEMD_SLEEP_DIR ?= $(PREFIX)/lib/systemd/system-sleep

INSTALL ?= install
RM ?= rm -f

SCRIPTS_SBIN := sbin/wait-for-unlock.sh
SCRIPTS_SLEEP := system-sleep/unlock-gate.sh
UNITS := system/unlocked-graphical.target

.PHONY: all build test check install uninstall

all: build

# No-op targets
build:
	@:

test:
	@:

check: test

install:
	$(INSTALL) -d "$(DESTDIR)$(SBINDIR)" \
		"$(DESTDIR)$(SYSTEMD_SYSTEM_UNITDIR)" \
		"$(DESTDIR)$(SYSTEMD_SLEEP_DIR)"
	$(INSTALL) -m 0755 $(SCRIPTS_SBIN) "$(DESTDIR)$(SBINDIR)/wait-for-unlock.sh"
	$(INSTALL) -m 0755 $(SCRIPTS_SLEEP) "$(DESTDIR)$(SYSTEMD_SLEEP_DIR)/unlock-gate.sh"
	$(INSTALL) -m 0644 $(UNITS) "$(DESTDIR)$(SYSTEMD_SYSTEM_UNITDIR)/unlocked-graphical.target"

uninstall:
	$(RM) "$(DESTDIR)$(SBINDIR)/wait-for-unlock.sh"
	$(RM) "$(DESTDIR)$(SYSTEMD_SLEEP_DIR)/unlock-gate.sh"
	$(RM) "$(DESTDIR)$(SYSTEMD_SYSTEM_UNITDIR)/unlocked-graphical.target"
