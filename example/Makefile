BUILD_MODE := release

CC := gcc
LD := ld
STRIP := strip

CFLAGS += -Wall
ifeq ($(BUILD_MODE),debug)
  CFLAGS += -g
else
  CFLAGS += -O2
endif

LIBS := -lexe
LDFLAGS := '-Wl,-rpath,$$ORIGIN' -L..

PROG := demo

SRCS = $(wildcard *.c)
OBJS = $(patsubst %.c, %.o, $(SRCS))

all: $(PROG)

$(PROG): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) -o $@ $(LIBS)

.c.o:
	$(CC) $(CFLAGS) -c $? -o $@

clean:
	-@rm -f $(PROG) $(OBJS)

.PHONY: all

