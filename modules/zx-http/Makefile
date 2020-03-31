ZZ ?= $(shell which zz)
CWD ?= $(shell pwd)

export ZZ_MODULE_PATHS += ":$(CWD)/.."

default: build

build:
	ZZ_MODULE_PATHS=$(ZZ_MODULE_PATHS) $(ZZ) build

clean:
	ZZ_MODULE_PATHS=$(ZZ_MODULE_PATHS) $(ZZ) clean

test:
	ZZ_MODULE_PATHS=$(ZZ_MODULE_PATHS) $(ZZ) test

bench:
	ZZ_MODULE_PATHS=$(ZZ_MODULE_PATHS) $(ZZ) bench
