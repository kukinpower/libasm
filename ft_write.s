;ssize_t ft_write(int fildes, const void *buf, size_t nbyte);
;rdi == fildes, rsi == buf, rdx == nbyte 

global _ft_write
extern ___error

section .text

_ft_write:
xor		rax, rax
mov		rax, 0x2000004
syscall
jc		err
ret

err:
push	rax
call	___error
pop		r11
mov		[rax], r11
mov		rax, -1
ret
