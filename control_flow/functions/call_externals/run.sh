#!/bin/sh
	nasm -f elf32 func.asm -o func.o &&
	gcc -m32  func.o -o func &&
	./func
