AS= nasm
LD= ld

ASFLAGS+= -felf64
LDFLAGS+= 

ASM_SOURCES= $(wildcard *.asm)
OBJECTS= $(patsubst %.asm,%.o,$(ASM_SOURCES))

TARGET= makeeven.out

.PHONY: all
all: $(TARGET)

.PHONY: clean
clean:
	$(RM) $(TARGET) $(OBJECTS)

$(TARGET): $(OBJECTS)
	$(LD) $(LDFLAGS) $^ -o $@

%.o: %.asm Makefile
	$(AS) $(ASFLAGS) $< -o $@
