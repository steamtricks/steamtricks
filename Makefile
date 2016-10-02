# Makefile for steamtricks

INSTALL = install
INSTALL_PROGRAM = $(INSTALL)

PREFIX = /usr

all:
	@ echo "Nothing to compile. Use: install"


install:
	$(INSTALL) -d $(DESTDIR)$(PREFIX)/bin
	$(INSTALL_PROGRAM) src/steamtricks $(DESTDIR)$(PREFIX)/bin/steamtricks
