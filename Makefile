# Makefile for steamtricks

INSTALL = install
INSTALL_PROGRAM = $(INSTALL)

PREFIX = /usr
VERSION="build-$(shell date +%F)"

all:
	sed -i 's/STEAMTRICKS_VERSION=".*"/STEAMTRICKS_VERSION=$(VERSION)/' src/steamtricks


install:
	$(INSTALL) -d $(DESTDIR)$(PREFIX)/bin
	$(INSTALL_PROGRAM) src/steamtricks $(DESTDIR)$(PREFIX)/bin/
