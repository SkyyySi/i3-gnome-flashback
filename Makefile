DESTDIR := /
PREFIX  := $(DESTDIR)usr
INSTALL := install

install:
	$(INSTALL) -m 0644 -D files/25_i3-gnome-flashback.gschema.override $(PREFIX)/share/glib-2.0/schemas/25_i3-gnome-flashback.gschema.override
	$(INSTALL) -m 0644 -D files/i3-gnome-flashback-session.desktop $(PREFIX)/share/xsessions/i3-gnome-flashback-session.desktop
	$(INSTALL) -m 0644 -D files/i3-gnome-flashback.desktop $(PREFIX)/share/applications/i3-gnome-flashback.desktop
	$(INSTALL) -m 0644 -D files/i3-gnome-flashback.session $(PREFIX)/share/gnome-session/sessions/i3-gnome-flashback.session
	$(INSTALL) -m 0755 -D files/i3-gnome-flashback-session $(PREFIX)/bin/i3-gnome-flashback-session
	$(INSTALL) -m 0755 -D files/i3-gnome-flashback $(PREFIX)/bin/i3-gnome-flashback
	glib-compile-schemas $(PREFIX)/share/glib-2.0/schemas/

uninstall:
	rm -f $(PREFIX)/share/glib-2.0/schemas/25_i3-gnome-flashback.gschema.override \
	      $(PREFIX)/bin/i3-gnome-flashback \
	      $(PREFIX)/bin/i3-gnome-flashback-session \
	      $(PREFIX)/share/gnome-session/sessions/i3-gnome-flashback.session \
	      $(PREFIX)/share/applications/i3-gnome-flashback.desktop \
	      $(PREFIX)/share/xsessions/i3-gnome-flashback-session.desktop
	      glib-compile-schemas $(PREFIX)/share/glib-2.0/schemas/

.PHONY: install uninstall
