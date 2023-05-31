global _start

section .text
_start:
	mov ecx,101	
	mov ebx,42;set ebx register to 42
	mov eax,1

	cmp ecx,100;compare ecx register to 100
	jl skip
	; je  A,B jump if equal
	; jne A,B  jump if not equal
	; jg  A,B jump if greater
	; jge A,B  jump if greater or equal
	; jl  A,B jump if less than
	; jle A,B  jump if less than or equal
	; jmp  skip ;jmp to skip label
	mov ebx,13 ;set ebx register to 13
skip:
	int 0x80
