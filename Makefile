EXECUTABLE=frontail
PLIST=$(EXECUTABLE).plist

uninstall:
	sudo launchctl unload /Library/LaunchDaemons/$(PLIST)
	sudo rm /Library/LaunchDaemons/$(PLIST)

startup:
	sudo cp $(PLIST) /Library/LaunchDaemons
	sudo launchctl load /Library/LaunchDaemons/$(PLIST)
