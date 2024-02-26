SRCDIR := src/
OBJDIR := obj/
BINDIR := bin/

SOURCES := $(shell find "$(SRCDIR)/" -name "*.c")
OBJECTS := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.c.o)

CC := gcc
CCARGS := -g -O3 -Wall -Wextra -Wpedantic -I$(SRCDIR)/

LD := gcc
LDARGS :=


$(OBJDIR)/%.c.o: $(SRCDIR)/%.c
	mkdir -p "$(dir $@)"
	$(CC) -c $(CCARGS) $< -o $@

$(BINDIR)/main: $(OBJECTS)
	mkdir -p "$(dir $@)"
	echo "Using compiler $(CC) $(CCARGS)"
	echo "Using linker $(LD) $(LDARGS)"
	$(LD) $(LDARGS) $^ -o $@
