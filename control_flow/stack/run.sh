#!/bin/sh
	nasm -f elf32 stack.asm -o stack.o &&
	ld -m elf_i386 stack.o -o stack &&
	./stack
