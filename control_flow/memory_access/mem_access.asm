global _start:
section .data
		
	addr db "yellow" ;pointer to mem_addres
	;db is 1 byte
	name1 db "string"
	name2 db 0xff
	name3 db 100
	;dw is 2 bytes
	name4 dw 1000
	;dd is 4 bytes
	name5 dd 100000
	
section .text
_start:
	mov [addr],byte "H"  ;
	mov [addr+5],byte "!" ;
	;sys_write
	mov eax,4 ;set sys_call
	mov ebx,1 ;stdout
	mov ecx,addr ;bytes to write
	mov edx, 6 ;number of bytes in addr
	int 0x80
	;sys_exit
	mov eax,1
	mov ebx,0	
	int 0x80
	
