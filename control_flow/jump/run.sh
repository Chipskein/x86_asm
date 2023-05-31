#!/bin/sh
	nasm -f elf32 jump.asm -o jump.o &&
	ld -m elf_i386 jump.o -o jump &&
	./jump
