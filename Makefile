#BUILDS=atmega8_snesmote atmega168_snesmote atmega168
#BUILDS=atmega8_snesmote
#BUILDS=atmega168_snesmote
#BUILDS=atmega168
BUILDS=atmega328

all: $(addsuffix .hex,$(BUILDS))

%.hex: *.c *.h
	$(MAKE) -f Makefile.$*

clean:
	rm *.hex objs-*/*.o *.elf
