
CFLAGS = -Wall
CC = gcc
AS = nasm -f elf64
GAS = as

all: 
	#Do stuff

clean:
	rm *.out *.o

tiny0: tiny.c
	$(CC) $(CFLAGS) -o $@.out $^

tiny1: tiny.c
	$(CC) $(CFLAGS) -s -o $@.out $^

tiny2: tiny.c
	$(CC) $(CFLAGS) -s -O3 -o $@.out $^

tiny3: tiny3.asm
	$(AS) $^
	$(CC) $(CFLAGS) -s -o $@.out $^

tiny4: tiny4.asm
	$(AS) $^
	$(CC) $(CFLAGS) -s -nostartfiles -o $@.out $@.o

tiny5: tiny5.asm
	$(AS) $^
	$(CC) $(CFLAGS) -s -nostartfiles -o $@.out $@.o

tiny6: tiny6.asm
	$(AS) $^
	$(CC) $(CFLAGS) -s -nostdlib -o $@.out $@.o

tiny7: tiny7.asm
	$(AS) $^
	$(CC) $(CFLAGS) -s -nostdlib -o $@.out $@.o

tiny8: tiny8.s
	$(GAS) $^ -o $@.o
	$(CC) $(CFLAGS) -s -nostdlib -o $@.out $@.o

tiny9: tiny9.asm
	nasm -f bin -o $@.out $^
	chmod +x $@.out

tiny10: tiny10.asm
	nasm -f bin -o $@.out $^
	chmod +x $@.out

tiny11: tiny11.asm
	nasm -f bin -o $@.out $^
	chmod +x $@.out
