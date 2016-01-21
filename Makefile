DESTDIR   := /usr/local/bin
MANDIR    := /usr/local/share/man/man1

install: $(DESTDIR)/oui $(MANDIR)/oui.1

clean:
	-rm -rf $(DESTDIR)/oui
	-rm -rf $(MANDIR)/oui.1

$(DESTDIR)/oui: oui
	install $< $@

$(MANDIR)/oui.1: oui.1
	cp $< $@

.PHONY: all build install test clean
