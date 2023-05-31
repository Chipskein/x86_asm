global _start
section .text
_start:
	mov ebx,0
	mov ecx,2
label:
	add ebx,1 ; ebx++
	dec ecx ; ecx--
	cmp ecx,0
	jg label
	mov eax,1
	int 0x80

