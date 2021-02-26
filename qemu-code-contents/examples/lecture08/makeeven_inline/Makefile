CC= clang
AS= nasm
LD= clang

CFLAGS+= -Wall -Wextra -g -O3
CFLAGS+= -mllvm --x86-asm-syntax=intel

ASFLAGS+= -felf64
LDFLAGS+= 


SOURCES= $(wildcard *.c)
ASM_SOURCES= $(wildcard *.asm)
OBJECTS= $(patsubst %.c,%.o,$(SOURCES))
OBJECTS+= $(patsubst %.asm,%.o,$(ASM_SOURCES))
DEPENFLAGS+= -MMD -MP
DEPENDS= $(patsubst %.c,%.d,$(SOURCES))

TARGET= makeeven.out

.PHONY: all
all: $(TARGET)

.PHONY: clean
clean:
	$(RM) $(TARGET) $(OBJECTS) $(DEPENDS)

$(TARGET): $(OBJECTS)
	$(LD) $(LDFLAGS) $^ -o $@

%.o: %.c Makefile
	$(CC) $(CFLAGS) $(DEPENFLAGS) -c $< -o $@

%.o: %.asm Makefile
	$(AS) $(ASFLAGS) $< -o $@

-include $(DEPENDS)
