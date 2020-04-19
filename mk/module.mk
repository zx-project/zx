ZZ ?= $(shell which zz)
CWD ?= $(shell pwd)

ZZFLAGS =

export ZZ_MODULE_PATHS += ":$(CWD)/.."

default: build

release: ZZFLAGS+=--release
release: build

build:
	ZZ_MODULE_PATHS=$(ZZ_MODULE_PATHS) $(ZZ) build $(ZZFLAGS)

clean:
	ZZ_MODULE_PATHS=$(ZZ_MODULE_PATHS) $(ZZ) clean

check:
	ZZ_MODULE_PATHS=$(ZZ_MODULE_PATHS) $(ZZ) check

test:
	ZZ_MODULE_PATHS=$(ZZ_MODULE_PATHS) $(ZZ) test $(TEST)

bench:
	ZZ_MODULE_PATHS=$(ZZ_MODULE_PATHS) $(ZZ) bench
