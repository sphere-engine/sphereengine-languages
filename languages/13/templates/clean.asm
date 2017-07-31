global _start

section .data

section .text

_start:
	; your code goes here
	je		exit

exit:
	mov		eax, 01h		; exit()
	xor		ebx, ebx		; errno
	int		80h

