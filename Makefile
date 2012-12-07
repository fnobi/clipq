PROGRAM       = clipq
DEST          = /usr/local/bin
LIBDEST       = /usr/local/lib
LIBDIR        = clipq

uninstall:
	rm  $(DEST)/$(PROGRAM)
	rm  -rf $(LIBDEST)/$(LIBDIR)

install:
	cp -r ./ $(LIBDEST)/$(LIBDIR)
	ln -s $(LIBDEST)/$(LIBDIR)/bin/$(PROGRAM) $(DEST)/$(PROGRAM)
