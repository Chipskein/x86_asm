global _start
_start:
	call func
	
	mov eax,1
	mov ebx,0
	int 0x80
func:
	push ebp
	mov ebx,42
	mov ebp,esp
	sub esp,2
	mov [esp]   , byte'E'
	mov [esp+1] ,byte 'I'
	mov eax,4
	mov ebx,1
	mov ecx,esp
	mov edx,2
	int 0x80
	mov esp,ebp
	pop ebp
	ret
