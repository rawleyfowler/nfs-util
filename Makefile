SHELL=/bin/sh

install:
	@echo "Installing nfs-util..."
	-chmod +x ./nfs-util
	-cp nfs-util /usr/local/bin/nfs-util
	@echo "nfs-util installed successfully!"

uninstall:
	@echo "Uninstalling nfs-util..."
	-rm /usr/local/bin/nfs-util
	@echo "nfs-util uninstalled successfully!"
