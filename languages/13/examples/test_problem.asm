global _start

section .data
	buffer	dw	0h

section .text

_start:
	mov		ecx, buffer
	mov		edx, 02h
	call		read
	mov		cx, word [buffer]
	cmp		cx, 3234h
	je		exit
	cmp		ch, 0ah
	je		one_dig
	jmp		two_dig

one_dig:
	mov		ecx, buffer
	mov		edx, 02h
	call		write
	jmp		_start

two_dig:
	mov		ecx, buffer
	mov		edx, 02h
	call		write
	mov		edx, 01h
	mov		ecx, buffer
	call		read			; read the 0ah
	mov		ecx, buffer
	call		write			; write the 0ah
	jmp		_start

exit:
	mov		eax, 01h		; exit()
	xor		ebx, ebx		; errno
	int		80h


read:
	mov		eax, 03h		; read()
	mov		ebx, 00h		; stdin
	int		80h
	ret
write:
	mov		eax, 04h		; write()
	mov		ebx, 01h		; stdout
	int		80h
	ret
