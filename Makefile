INSTALLDIR ?= /usr/local/bin

default:
	@echo "To install, type \"sudo make install\".  To deinstall, type \"sudo make deinstall\""
	@echo "To set installation path, do \"sudo make (de)install INSTALLDIR=<installdir>

install:
	awk "{sub(/INSTALLDIR/,\"$(INSTALLDIR)\")}1" < mafia.desktop.in > mafia.desktop
	cp mafia.desktop /usr/local/share/applications/mafia.desktop
	cp mafia $(INSTALLDIR)/
	@echo "Good to go!"

deinstall:
	rm /usr/share/applications/mafia.desktop
	rm $(INSTALLDIR)/mafia
	@echo "Successfully removed."
