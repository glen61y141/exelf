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

LIBS := -lm

PROG := libexe.so

SRCS = $(wildcard *.c)
OBJS = $(patsubst %.c, %.o, $(SRCS))

all: $(PROG)

$(PROG): $(OBJS)
	$(CC) $(CFLAGS) -fPIC -pie $(OBJS) -o $@ -Wl,-E $(LIBS)

.c.o:
	$(CC) $(CFLAGS) -fPIC -c $? -o $@

clean:
	-@rm -f $(PROG) $(OBJS)

.PHONY: all

