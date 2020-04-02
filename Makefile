MODULES += http curl utils list

ZZ ?= $(shell which zz)

export ZZ

default: $(MODULES)

$(MODULES):
	$(MAKE) -C modules/$@ $(MAKE_ARGS)

test: MAKE_ARGS=test
test: $(MODULES)

clean: MAKE_ARGS=clean
clean: $(MODULES)
