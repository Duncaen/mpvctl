GITVER := $(shell git rev-parse --short HEAD)
VERSION = 0.0
PREFIX ?= /usr/local
SBINDIR ?= $(PREFIX)/sbin

SHIN    += $(wildcard *.sh.in)
SCRIPTS += $(SHIN:.sh.in=.sh)

%.sh: %.sh.in
	sed -e "s|@@VERSION@@|$(VERSION) $(GITVER)|g" $^ > $@
	chmod +x $@

all: $(SCRIPTS)

install: all
	install -d $(DESTDIR)$(SBINDIR)
	install -m755 mpvctl.sh $(DESTDIR)$(SBINDIR)/mpvctl
	install -m755 mpvd.sh $(DESTDIR)$(SBINDIR)/mpvd

clean:
	-rm -f *.sh

.PHONY: all clean install dist
