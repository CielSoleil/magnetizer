PREFIX     ?= $(HOME)/.local
INSTALLDIR  = $(PREFIX)/bin
EXEC        = magnetizer
BUILDDIR    = build

.PHONY: build install uninstall

build:
	@echo "Building $(EXEC)"
	mkdir -p $(BUILDDIR)
	go build -o $(BUILDDIR)/$(EXEC) magnetizer.go

install:
	@echo "Installing $(EXEC) to $(INSTALLDIR)"
	install -Dm755 $(BUILDDIR)/$(EXEC) $(INSTALLDIR)/$(EXEC)

uninstall:
	@echo "Uninstalling $(EXEC)"
	rm -f $(INSTALLDIR)/$(EXEC)

clean:
	rm -f $(BUILDDIR)/$(EXEC)
