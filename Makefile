# Makefile for steamtricks

INSTALL = install
INSTALL_PROGRAM = $(INSTALL)

PREFIX = /usr
VERSION="build-$(shell date +%F)"

all:
	@ echo "Nothing to compile. Use: install"


install:
	$(INSTALL) -d $(DESTDIR)$(PREFIX)/bin
	$(INSTALL_PROGRAM) src/steamtricks $(DESTDIR)$(PREFIX)/bin/
	sed -i 's/STEAMTRICKS_VERSION=".*"/STEAMTRICKS_VERSION=$(VERSION)/' \
	  $(DESTDIR)$(PREFIX)/bin/steamtricks

	$(INSTALL) -d $(DESTDIR)$(PREFIX)/lib/systemd/user/
	$(INSTALL) -m 644 dist/steamtricksd.service $(DESTDIR)$(PREFIX)/lib/systemd/user/
	sed -i '/^#.*/d' $(DESTDIR)$(PREFIX)/lib/systemd/user/steamtricksd.service

	$(INSTALL) -d $(DESTDIR)$(PREFIX)/share/steamtricks
