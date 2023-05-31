#!/bin/sh
	nasm -f elf32 func.asm -o func.o &&
	ld -m elf_i386 func.o -o func &&
	./func
