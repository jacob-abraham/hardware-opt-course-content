CC= clang
AS= nasm
LD= clang

override CFLAGS+= -Wall -Wextra -g -O3
override CFLAGS+= -masm=intel
override CFLAGS+= -msse -msse2 -mavx -mavx2 -mfma

ASFLAGS+= -felf64
LDFLAGS+= -L/home/steve/lib/sleef/build/lib -Wl,-R/home/steve/lib/sleef/build/lib
LDLIBS+= -lm -lsleef


SOURCES= $(wildcard *.c)
ASM_SOURCES= $(wildcard *.asm)
OBJECTS= $(patsubst %.c,%.o,$(SOURCES))
OBJECTS+= $(patsubst %.asm,%.o,$(ASM_SOURCES))
INCLUDE= -I../../timing -I../../lib/sleef/build/include
DEPENFLAGS+= -MMD -MP
DEPENDS= $(patsubst %.c,%.d,$(SOURCES))

TARGET= test.out

.PHONY: all
all: $(TARGET)

.PHONY: clean
clean:
	$(RM) $(TARGET) $(OBJECTS) $(DEPENDS) *.out

# -lm required to be after the file for gcc, which is annoying
$(TARGET): $(OBJECTS)
	$(LD) $(LDFLAGS) $(LDLIBS) $^ -o $@

%.o: %.c Makefile
	$(CC) $(CFLAGS) $(DEPENFLAGS) $(INCLUDE) -c $< -o $@

%.o: %.asm Makefile
	$(AS) $(ASFLAGS) $< -o $@

-include $(DEPENDS)
