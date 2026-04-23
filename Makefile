PREFIX     ?= $(HOME)/.local
INSTALLDIR  = $(PREFIX)/bin
EXEC        = magnetizer
BUILDDIR    = build

.PHONY: build install uninstall

build:
	@echo "Building $(EXEC)"
	go build magnetizer.go -o $(BUILDDIR)/$(EXEC)

install:
	@echo "Installing $(EXEC) to $(INSTALLDIR)"
	install -Dm755 $(BUILDDIR)/$(EXEC) $(INSTALLDIR)/$(EXEC)

uninstall:
	@echo "Uninstalling $(EXEC)"
	rm -f $(INSTALLDIR)/$(EXEC)

clear:
	rm -f $(BUILDDIR)/$(EXEC)
