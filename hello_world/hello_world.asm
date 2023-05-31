global _start

section .data
 	msg db "Hello,world!",0x0a
	len equ $ -msg
section .text
_start:
	; more about sys_call in x86 https://filippo.io/linux-syscall-table/
	mov eax,4 ; sys_write
	mov ebx,1 ; stdout
	mov ecx,msg ; bytes to write
	mov edx,len ; number of bytes to write
	int 0x80; run sys_call
	mov eax,1 ;sys_Exit
	mov ebx,0 ;exit_status 0 = sucess
	int 0x80 ;run sys_call
