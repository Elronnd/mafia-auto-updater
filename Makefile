default:
	@echo "To install, type \"sudo make install\".  To deinstall, type \"sudo make deinstall\""
install:
	cp mafia.desktop /usr/share/applications/mafia.desktop
	cp mafia /usr/bin/mafia

deinstall:
	rm /usr/share/applications/mafia.desktop
	rm /usr/bin/mafia
