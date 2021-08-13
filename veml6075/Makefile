#
#  Makefile
#
#  Copyright (c) 2020 by Daniel Kelley
#

PREFIX ?= /usr/local

PROG := veml6075
SRC := $(PROG).c
CFLAGS := -O0 -MMD -g -Wall -Wextra -Wstrict-prototypes -Werror
LDLIBS := -li2c
LDFLAGS := -g

#-----------------------------------------------------------------------------

OBJ := $(SRC:%.c=%.o)
DEP := $(OBJ:%.o=%.d)

all: $(PROG)

$(PROG): $(OBJ)

install: $(PROG)
	install -p -m 755 $(PROG) $(PREFIX)/bin

check: $(PROG)
	cmp $(PROG) $(PREFIX)/bin/$(PROG)

clean:
	-rm -f $(PROG) $(OBJ) $(DEP)

# include the C include dependencies, if not cleaning
ifneq ($(MAKECMDGOALS),clean)
-include $(DEP)
endif
