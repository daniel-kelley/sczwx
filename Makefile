#
#  Makefile
#
#  Copyright (c) 2021 by Daniel Kelley
#

WEEWX ?= /home/weewx

all:
	@echo "see check"

check:
	$(MAKE) -C mos7703 check
	$(MAKE) -C veml6075 check
	$(MAKE) -C pms5003 check
	diff etc/systemd/system/weewx.service /etc/systemd/system/weewx.service
	diff etc/modules-load.d/bme680.conf /etc/modules-load.d/bme680.conf
	diff weewx/bin/user/bme680.py $(WEEWX)/bin/user/bme680.py
	diff weewx/bin/user/veml6075.py $(WEEWX)/bin/user/veml6075.py
	diff weewx/bin/user/pms5003.py $(WEEWX)/bin/user/pms5003.py
	diff weewx/weewx.conf $(WEEWX)/weewx.conf
	diff -urw weewx/skins/SCZ $(WEEWX)/skins/SCZ
