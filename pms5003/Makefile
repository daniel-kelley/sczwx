#
#  Makefile
#
#  Copyright (c) 2020 by Daniel Kelley
#

PREFIX ?= /usr/local
PROG := pms5003
SRC := $(PROG).c
CFLAGS := -MMD -g -Wall -Wextra -Wstrict-prototypes -Werror
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
