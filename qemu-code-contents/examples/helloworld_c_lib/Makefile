CC= clang
AS= nasm
LD= ld

CFLAGS+= -Wall -Wextra -g -O3
CFLAGS+= -msse -mfma -mavx -mavx2
CFLAGS+= -arch x86_64

LDFLAGS+= -arch x86_64

ASFLAGS+= -felf64

CONTROL_GUARDS= -DHAS_SSE -DHAS_FMA -DHAS_AVX -DHAS_AVX2

SOURCES= $(wildcard *.c)
ASM_SOURCES= $(wildcard *.asm)
OBJECTS= $(patsubst %.c,%.o,$(SOURCES))
OBJECTS+= $(patsubst %.asm,%.o,$(ASM_SOURCES))
INCLUDE= -I../../timing
DEPENFLAGS+= -MMD -MP
DEPENDS= $(patsubst %.c,%.d,$(SOURCES))

# CHANGE ME
TARGET= a.out

.PHONY: all
all: $(TARGET)

.PHONY: clean
clean:
	$(RM) $(TARGET) $(OBJECTS) $(DEPENDS)

$(TARGET): $(OBJECTS)
	$(LD) $(LDFLAGS) $^ -o $@

%.o: %.c Makefile
	$(CC) $(CFLAGS) $(CONTROL_GUARDS) $(DEPENFLAGS) $(INCLUDE) -c $< -o $@

%.o: %.asm Makefile
	$(AS) $(ASFLAGS) $< -o $@

-include $(DEPENDS)
