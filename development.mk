.PHONY: help install uninstall build clean
.PHONY: dist

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	node_modules

build: \
	dist

node_modules:
	npm install --include=dev

dist:
	npx --no -- tsc --declaration --outDir dist src/** --watch

clean:
	rm -rf dist

uninstall:
	rm -rf node_modules
