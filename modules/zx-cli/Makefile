ZZ ?= $(shell which zz)
CWD ?= $(shell pwd)

ZZ_MODULES_PATH += ":$(CWD)/.."

default: build

build:
	ZZ_MODULES_PATH=$(ZZ_MODULES_PATH) $(ZZ) build

clean:
	$(ZZ) clean

test:
	$(ZZ) test

bench:
	$(ZZ) bench
