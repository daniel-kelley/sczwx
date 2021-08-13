#
#  Makefile
#
#  Copyright (c) 2020 by Daniel Kelley
#

NAME := mos7703
VERSION := $(shell uname -r)
MODULES := /lib/modules/$(VERSION)
BUILD := $(MODULES)/build
TARGET := $(MODULES)/kernel/drivers/usb/serial/$(NAME).ko

modules:
%:
	$(MAKE) -C $(BUILD) M=$(PWD) $@

install:
	cp $(NAME).ko $(TARGET)
	depmod

check:
	cmp $(NAME).ko $(TARGET)
