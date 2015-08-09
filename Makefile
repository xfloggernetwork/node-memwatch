TESTS = test/*.js

all: build

build: clean configure compile

configure:
	node-gyp configure

compile:
	node-gyp build

clean:
	#rm -f bcrypt_lib.node
	rm -Rf build


.PHONY: clean test build
