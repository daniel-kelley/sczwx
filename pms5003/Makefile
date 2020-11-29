#
#  Makefile
#
#  Copyright (c) 2020 by Daniel Kelley
#

PROG := pms5003
SRC := $(PROG).c
CFLAGS := -MMD -g -Wall -Wextra -Wstrict-prototypes -Werror
LDFLAGS := -g

#-----------------------------------------------------------------------------

OBJ := $(SRC:%.c=%.o)
DEP := $(OBJ:%.o=%.d)

all: $(PROG)

$(PROG): $(OBJ)

clean:
	-rm -f $(PROG) $(OBJ) $(DEP)

# include the C include dependencies, if not cleaning
ifneq ($(MAKECMDGOALS),clean)
-include $(DEP)
endif
