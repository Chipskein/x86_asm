#!/bin/sh
	nasm -f elf32 mem_access.asm -o mem_access.o &&
	ld -m elf_i386 mem_access.o -o mem_access &&
	./mem_access
