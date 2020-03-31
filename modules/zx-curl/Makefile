TARGET = target
SRC ?= $(wildcard src/*.zz)
ZZ ?= $(shell which zz)

default: build

$(TARGET): $(SRC)
	$(ZZ) build

build: $(TARGET)

clean:
	$(ZZ) clean

test:
	$(ZZ) test
