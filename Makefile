SHELL = /bin/sh
# a BSD or GNU style install is required, e.g., /usr/ucb/install on Solaris
INSTALL = install

PREFIX = /usr/local
prefix = $(PREFIX)
bindir = $(prefix)/bin
mandir = $(prefix)/share/man

all:
	@echo Nothing needs to be done

install:
	$(INSTALL) -d $(DESTDIR)$(bindir) $(DESTDIR)$(mandir)/man1
	$(INSTALL) -m 755 listadmin3 $(DESTDIR)$(bindir)/listadmin3
	$(INSTALL) -m 644 listadmin3.1 $(DESTDIR)$(mandir)/man1/listadmin3.1
