#
#  Makefile
#
#  Copyright (c) 2020 by Daniel Kelley
#

VERSION := $(shell uname -r)
MODULES := /lib/modules/$(VERSION)
BUILD := $(MODULES)/build

modules:
%:
	$(MAKE) -C $(BUILD) M=$(PWD) $@

install:
	cp mos7703.ko $(MODULES)/kernel/drivers/usb/serial/mos7703.ko
	depmod
