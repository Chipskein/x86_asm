#!/bin/sh
	nasm -f elf32 loop.asm -o loop.o &&
	ld -m elf_i386 loop.o -o loop &&
	./loop 
