
all: monodevelop.mo

monodevelop.mo: ja.po
	msgfmt -o $@ $<
