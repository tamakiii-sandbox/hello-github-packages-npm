.PHONY: help install uninstall build clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	node_modules

build: \
	dist

node_modules:
	npm install

dist:
	npx --no -- tsc --declaration --outDir dist src/**

clean:
	rm -rf dist

uninstall:
	rm -rf node_modules