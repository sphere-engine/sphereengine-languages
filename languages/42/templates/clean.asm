section .text
	global	_start

_start:
	;; your code goes here

	mov	rax, 60
	mov	rdi, 0

	syscall